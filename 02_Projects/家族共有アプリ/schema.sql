-- ============================================================
-- 家族共有アプリ スキーマ（Supabase / PostgreSQL）
-- CookGo参考のレシピ機能 ＋ タスク機能を 1プロジェクトに同居
-- 家族グループ(family_id)で各データを分離（Row Level Security）
-- Supabase の SQL Editor に貼り付けて上から実行する
-- ============================================================

-- ---------- 1. 基本テーブル ----------

-- 家族グループ
create table families (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  created_at timestamptz default now()
);

-- プロフィール（auth.users と 1対1。family_id で所属を表す）
create table profiles (
  id uuid primary key references auth.users(id) on delete cascade,
  display_name text,
  family_id uuid references families(id),
  created_at timestamptz default now()
);

-- ---------- 2. レシピ機能 ----------

create table recipes (
  id uuid primary key default gen_random_uuid(),
  family_id uuid not null references families(id) on delete cascade,
  created_by uuid references auth.users(id),
  title text not null,
  source_url text,            -- 取り込み元URL（AI取り込みは後フェーズ）
  servings int default 1,     -- 何人分
  calories int,               -- 栄養（後フェーズで自動計算）
  memo text,
  created_at timestamptz default now(),
  updated_at timestamptz default now()
);

create table recipe_ingredients (
  id uuid primary key default gen_random_uuid(),
  recipe_id uuid not null references recipes(id) on delete cascade,
  name text not null,
  amount numeric,
  unit text,
  sort_order int default 0
);

create table recipe_steps (
  id uuid primary key default gen_random_uuid(),
  recipe_id uuid not null references recipes(id) on delete cascade,
  step_no int not null,
  content text not null
);

-- タグ（時短 / 鶏肉 / デザート など）と多対多
create table tags (
  id uuid primary key default gen_random_uuid(),
  family_id uuid not null references families(id) on delete cascade,
  name text not null,
  unique (family_id, name)
);

create table recipe_tags (
  recipe_id uuid references recipes(id) on delete cascade,
  tag_id uuid references tags(id) on delete cascade,
  primary key (recipe_id, tag_id)
);

-- ---------- 3. 献立・買い物リスト（フェーズ2） ----------

create table meal_plans (
  id uuid primary key default gen_random_uuid(),
  family_id uuid not null references families(id) on delete cascade,
  plan_date date not null,
  recipe_id uuid references recipes(id) on delete set null,
  created_at timestamptz default now()
);

create table shopping_list_items (
  id uuid primary key default gen_random_uuid(),
  family_id uuid not null references families(id) on delete cascade,
  name text not null,
  amount numeric,
  unit text,
  checked boolean default false,
  created_at timestamptz default now()
);

-- ---------- 4. タスク機能（別アプリ・同プロジェクト） ----------

create table tasks (
  id uuid primary key default gen_random_uuid(),
  family_id uuid not null references families(id) on delete cascade,
  created_by uuid references auth.users(id),
  assignee uuid references auth.users(id),
  title text not null,
  due_date date,
  done boolean default false,
  memo text,
  created_at timestamptz default now()
);

-- ---------- 5. インデックス（任意・将来用） ----------

create index idx_recipes_family on recipes(family_id);
create index idx_recipe_ingredients_recipe on recipe_ingredients(recipe_id);
create index idx_tasks_family on tasks(family_id);
create index idx_meal_plans_family_date on meal_plans(family_id, plan_date);

-- ============================================================
-- 6. 新規ユーザー登録時に profiles を自動作成
-- ============================================================

create or replace function public.handle_new_user()
returns trigger
language plpgsql
security definer set search_path = public
as $$
begin
  insert into public.profiles (id, display_name)
  values (new.id, new.raw_user_meta_data->>'full_name');
  return new;
end;
$$;

create trigger on_auth_user_created
after insert on auth.users
for each row execute function public.handle_new_user();

-- ============================================================
-- 7. 自分の family_id を返すヘルパー（RLSで使う）
-- ============================================================

create or replace function public.my_family_id()
returns uuid
language sql
stable
security definer set search_path = public
as $$
  select family_id from public.profiles where id = auth.uid()
$$;

-- ============================================================
-- 8. Row Level Security（家族ごとにデータを仕切る）
-- ============================================================

-- すべての対象テーブルでRLSを有効化
alter table families            enable row level security;
alter table profiles            enable row level security;
alter table recipes             enable row level security;
alter table recipe_ingredients  enable row level security;
alter table recipe_steps        enable row level security;
alter table tags                enable row level security;
alter table recipe_tags         enable row level security;
alter table meal_plans          enable row level security;
alter table shopping_list_items enable row level security;
alter table tasks               enable row level security;

-- families：自分の家族だけ見える
create policy families_select on families for select
  using (id = public.my_family_id());

-- profiles：自分＋同じ家族のメンバーが見える。更新は本人のみ
create policy profiles_select on profiles for select
  using (id = auth.uid() or family_id = public.my_family_id());
create policy profiles_update on profiles for update
  using (id = auth.uid());

-- 家族スコープの基本テーブル（family_id列を持つもの）
create policy recipes_all on recipes for all
  using (family_id = public.my_family_id())
  with check (family_id = public.my_family_id());

create policy tags_all on tags for all
  using (family_id = public.my_family_id())
  with check (family_id = public.my_family_id());

create policy meal_plans_all on meal_plans for all
  using (family_id = public.my_family_id())
  with check (family_id = public.my_family_id());

create policy shopping_all on shopping_list_items for all
  using (family_id = public.my_family_id())
  with check (family_id = public.my_family_id());

create policy tasks_all on tasks for all
  using (family_id = public.my_family_id())
  with check (family_id = public.my_family_id());

-- 子テーブル（family_idを持たない）は親レシピ経由で判定
create policy recipe_ingredients_all on recipe_ingredients for all
  using (exists (select 1 from recipes r
                 where r.id = recipe_id and r.family_id = public.my_family_id()))
  with check (exists (select 1 from recipes r
                 where r.id = recipe_id and r.family_id = public.my_family_id()));

create policy recipe_steps_all on recipe_steps for all
  using (exists (select 1 from recipes r
                 where r.id = recipe_id and r.family_id = public.my_family_id()))
  with check (exists (select 1 from recipes r
                 where r.id = recipe_id and r.family_id = public.my_family_id()));

create policy recipe_tags_all on recipe_tags for all
  using (exists (select 1 from recipes r
                 where r.id = recipe_id and r.family_id = public.my_family_id()))
  with check (exists (select 1 from recipes r
                 where r.id = recipe_id and r.family_id = public.my_family_id()));

-- ============================================================
-- 9. 初期データ（最初に1家族だけ作る例）
--    実行後、Authで各メンバーがログイン → profiles.family_id をこのIDに更新する
-- ============================================================
-- insert into families (name) values ('我が家');
-- select id from families;   -- 出たIDを控えて profiles.family_id に設定
