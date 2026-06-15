---
title: 家族共有アプリ（レシピ・タスク）
type: project
status: 設計フェーズ
created: 2026-06-15
tags: [project, app, supabase, pwa]
---

# 家族共有アプリ（レシピ・タスク）

遠隔地の家族とデータ共有するアプリ。ogawaが作成して家族に提供する。CookGo参考のレシピ共有＋タスク共有を1プロジェクトに同居させ、家族ごとに分離する。

## 構成（決定事項）
- **配信**：GitHub Pages（既存のリリース方式を維持）
- **データ**：Supabase（PostgreSQL／SQL）
- **認証**：Supabase Auth（Googleログイン）
- **形態**：PWA（ホーム画面追加・アプリストア不要）
- **写真**：Cloudflare R2（10GB無料・egress無料）。足りなければ nas001 に置き Cloudflare Tunnel で配信
- **開発**：実装は Claude Code（Sonnet主力・難所は Opus）、設計・相談はチャット
- **コスト**：¥0（無料枠内）

## 設計方針
- 1プロジェクトに複数アプリ（レシピ／タスク）を同居。テーブルで分ける
- 家族ごとに `family_id` を持たせ、Row Level Security で「自分の家族の行だけ」に制限
- 妻側の家族を使う場合も、別 families グループとして同居可（プロジェクトは分けない）
- DB選定理由：ogawa が Oracle SQL の業務経験あり → SQLを活かせる Supabase を採用。CookGo的な機能（材料検索・タグ・献立・買い物リスト集計）は関係データ＋集計が多く SQL 有利

## フェーズ計画
- **フェーズ1（まず作る）**：レシピ登録・共有・一覧・タグ検索／タスク登録・共有・完了
- **フェーズ2**：献立の自動提案、買い物リスト自動生成
- **フェーズ3**：URL/動画からのAI取り込み、栄養計算（Claude API等）

## やること（タスク）
- [ ] Supabaseプロジェクト作成・キー取得（Project URL / anon key）
- [ ] `schema.sql` 実行（テーブル＋RLS＋プロフィール自動作成）
- [ ] Google認証 有効化 ＋ Redirect URL 設定（GitHub Pages URL）★詰まりやすい
- [ ] families 作成 ＋ 自分の profiles.family_id 設定 ★詰まりやすい
- [ ] アプリ雛形作成（index.html / app.js / style.css / manifest.json / service-worker.js）
- [ ] ローカル動作確認（別端末で同期確認・RLSで別家族が見えないか確認）
- [ ] GitHub Pages 公開
- [ ] 自動停止対策：GitHub Actions で定期ping（keepalive.yml）
- [ ] 家族へURL共有＋「ホーム画面に追加」案内
- [ ] APP_LIST / RELEASE_PROTOCOL に登録
- [ ] （フェーズ2以降）献立・買い物リスト・写真R2・AI取り込み

## 注意点
- anon key は公開OK（RLSが守る）。**service_role key は絶対に非公開・コミットしない**
- 写真はアップロード時に縮小・圧縮（1024px / WebP）して容量を節約
- Supabase無料枠：DB約500MB＋Storage。7日アクセスなしで自動停止 → ping必須。写真はR2推奨
- RLS・キー周りは Claude Code の生成物を必ず目視確認（エージェントは誤った方向に進むことがある）

## 参考
- 参考アプリ：**CookGo**（AIレシピ取り込み・タグ整理・献立自動・買い物リスト・分量スケーリング）
- `schema.sql` と Supabase版手順書は Claude生成済（outputs から本フォルダに保存予定）

## 関連
- `00_System/DEV_FLOW.md` / `00_System/RELEASE_PROTOCOL.md` に沿って進める
