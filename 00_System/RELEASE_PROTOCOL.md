# RELEASE PROTOCOL（リリース手順）
> ogawaが「リリースして」と言ったら、Claudeはこのファイルを読んでそのまま実行する。

---

## 🚀 リリース実行手順

### 事前確認（Claudeが確認すること）
1. アプリ名・リポジトリ名を確認
2. `02_Projects/該当アプリ/` のノートを読んで構成を把握
3. ローカルのHTMLファイルパスを確認

---

### Step A：GitHubリポジトリ作成（初回のみ）

ogawaにやってもらう：
1. https://github.com/new を開く
2. Repository name: `アプリ名`（例: calorie_app）
3. Public または Private を選択
4. **README・.gitignore・licenseは追加しない**（空リポジトリにする）
5. 「Create repository」をクリック
6. 表示されたリポジトリURLをClaudeに伝える

---

### Step B：ローカルGit初期化 〜 初回push（初回のみ）

Claudeがコマンドを出す。ogawaがターミナルで実行：

```bash
# アプリフォルダへ移動
cd アプリのフォルダパス

# Git初期化
git init
git add .
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/ユーザー名/アプリ名.git
git push -u origin main
```

---

### Step C：Linuxサーバー初期設定（初回のみ）

Claudeがコマンドを出す。ogawaがサーバーのターミナルで実行：

```bash
# デプロイ先ディレクトリ作成
sudo mkdir -p /var/www/アプリ名
sudo chown $USER:$USER /var/www/アプリ名

# GitHubからクローン
git clone https://github.com/ユーザー名/アプリ名.git /var/www/アプリ名

# nginx設定
sudo nano /etc/nginx/sites-available/アプリ名
```

nginx設定内容（Claudeが環境に合わせて出す）：
```nginx
server {
    listen 80;
    server_name _;
    root /var/www/アプリ名;
    index index.html;
    location / {
        try_files $uri $uri/ /index.html;
    }
}
```

```bash
sudo ln -s /etc/nginx/sites-available/アプリ名 /etc/nginx/sites-enabled/
sudo nginx -t && sudo systemctl reload nginx
```

---

### Step D：GitHub Actions設定（初回のみ）

#### deploy.yml作成
`.github/workflows/deploy.yml` をClaudeが生成。内容：

```yaml
name: Deploy to Home Server

on:
  push:
    branches: [main]

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - name: Deploy via SSH
        uses: appleboy/ssh-action@v1
        with:
          host: ${{ secrets.SERVER_HOST }}
          username: ${{ secrets.SERVER_USER }}
          key: ${{ secrets.SERVER_KEY }}
          script: |
            cd /var/www/アプリ名
            git pull origin main
```

#### GitHub Secrets登録
ogawaがGitHubで登録：
`リポジトリ → Settings → Secrets and variables → Actions → New repository secret`

| シークレット名 | 値 |
|---|---|
| SERVER_HOST | 自宅サーバーのIPアドレス（192.168.11.50） |
| SERVER_USER | SSHユーザー名（manager） |
| SERVER_KEY | SSH秘密鍵（~/.ssh/id_ed25519の内容） |

> ⚠️ SERVER_HOSTとSERVER_USERは全アプリ共通。SERVER_KEYも同じ鍵を使い回しOK。
> ⚠️ GitHub ActionsはローカルIPに直接SSH接続できないためCloudflare Tunnel設定が必要（課題）

---

### Step E：GitHub Pages公開（localStorage完結アプリの場合）

サーバーサイド不要なアプリはこちらが簡単・無料・即時公開可能。

1. `リポジトリ → Settings → Pages`
2. Source: `Deploy from a branch`
3. Branch: `main` / `/ (root)` → Save
4. 公開URL: `https://tubakuro-sys.github.io/アプリ名/ファイル名.html`

---

### Step F：2回目以降のリリース（更新）

```bash
# ローカルで変更後
git add .
git commit -m "更新内容"
git push origin main
# → GitHub Pagesが自動で反映（数分後）
```

---

### Step G：Cloudflare Tunnel（外部公開・課題）

> ⚠️ 現在未対応。サーバーサイド機能が必要なアプリのリリース時に対応予定。
> ドメイン取得・Cloudflareアカウント作成が必要。

```bash
cloudflared tunnel login
cloudflared tunnel create アプリ名
cloudflared tunnel route dns アプリ名 アプリ名.ドメイン.com
sudo cloudflared service install
```

---

## 📋 リリース時にClaudeが確認するチェックリスト

- [ ] アプリ名・リポジトリ名確認
- [ ] 初回か更新かを確認
- [ ] localStorage完結か、サーバーサイド必要かを確認
- [ ] ローカルフォルダパス確認
- [ ] GitHub Secretsは登録済みか確認（初回のみ）
- [ ] nginx設定は済みか確認（初回のみ）
- [ ] Cloudflare Tunnelは済みか確認（サーバーサイドアプリのみ）

---

## 🗂 アプリ別リリース状況

| アプリ名 | GitHubリポジトリ | サーバーパス | URL | 状況 |
|---|---|---|---|---|
| calorie_app | tubakuro-sys/calorie_app | /var/www/calorie_app | https://tubakuro-sys.github.io/calorie_app/calorie_app.html | ✅ GitHub Pages公開済み |

---
最終更新：2026-05-23
