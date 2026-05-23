# PWAアプリ開発環境構築

#完了 #開発

---

## 🎯 目的

- HTML/CSS/JS（PWA）でマルチデバイス対応アプリを開発・リリースする
- 費用ゼロ・自宅Linuxサーバーを活用
- git pushだけで自動デプロイされる環境を構築する

---

## 🏗 全体構成

```
【ローカル】              【GitHub】           【自宅Linuxサーバー】
VS Code + Live Server → git push (main) → nginx + Cloudflare Tunnel
                              ↓
                       GitHub Actions or GitHub Pages
                       (自動デプロイ)
```

---

## 📋 セットアップ手順

### Step 1：ローカル（Windows）
- [x] VS Code インストール済み
- [x] Git for Windows インストール済み（git version 2.54.0）
- [x] VS Code拡張「Live Server」インストール
- [x] git config（name / email）設定完了

### Step 2：GitHubリポジトリ
- [x] リポジトリ作成（https://github.com/tubakuro-sys/calorie_app）
- [x] ローカル `C:\自作ツール\apl\calorie` でgit init → remote追加
- [x] 初回push完了（calorie_app.html）
- [x] .github/workflows/deploy.yml 作成・push完了

### Step 3：自宅Linuxサーバー（nas001 / Ubuntu）
- [x] nginx インストール完了（nginx/1.24.0）
- [x] /var/www/calorie_app ディレクトリ作成・git clone完了
- [x] nginx設定完了（sites-available → sites-enabled）
- [x] ローカルネットワーク動作確認済み（http://192.168.11.50）

### Step 4：GitHub Actions
- [x] GitHub Secrets登録完了（SERVER_HOST / SERVER_USER / SERVER_KEY）
- [ ] ⚠️ 自動デプロイ未完了（外部からSSH接続できないため保留）
  - 原因：GitHub ActionsからローカルIP(192.168.11.50)へのSSH接続不可
  - 解決策：Cloudflare Tunnel設定後に再挑戦

### Step 5：Cloudflare Tunnel（外部公開）
- [ ] 📋 課題として記録済み（ドメイン未取得・アカウント未作成）
  - 将来対応：サーバーサイド機能が必要なアプリで必要になったとき

---

## 🚀 calorie_app リリース結果

- **公開方法**：GitHub Pages
- **公開URL**：https://tubakuro-sys.github.io/calorie_app/calorie_app.html
- **公開日**：2026-05-23
- **理由**：calorie_appはlocalStorage完結のため、GitHub Pagesで十分

---

## 💻 現在の開発・更新フロー

```
1. C:\自作ツール\apl\calorie でファイルを編集
2. git add .
3. git commit -m "変更内容"
4. git push origin main
5. 数分後にGitHub Pagesに自動反映
6. https://tubakuro-sys.github.io/calorie_app/calorie_app.html で確認
```

---

## 📁 ローカルフォルダ構成

```
C:\自作ツール\apl\calorie\
├── calorie_app.html
└── .github/
    └── workflows/
        └── deploy.yml
```

---

## 🔑 サーバー・GitHub情報

| 項目 | 値 |
|---|---|
| サーバー | nas001（Ubuntu 24） |
| サーバーIP | 192.168.11.50 |
| SSHユーザー | manager |
| デプロイ先 | /var/www/calorie_app |
| GitHubリポジトリ | https://github.com/tubakuro-sys/calorie_app |
| GitHub Pages URL | https://tubakuro-sys.github.io/calorie_app/calorie_app.html |

---

## ⚠️ 残課題

- **GitHub Actions自動デプロイ**：Cloudflare Tunnel設定後に再挑戦
- **サーバーデータ保存対応**：将来サーバーサイド機能が必要なアプリ向けに別途構築必要
  - 必要なもの：Cloudflare Tunnel + ドメイン + 認証機能

---

## 📝 決定事項ログ

- 2026-05-23：構成決定（PWA + nginx + GitHub Actions + Cloudflare Tunnel）
- 2026-05-23：calorie_appはlocalStorage完結のためGitHub Pagesで公開する方針に決定
- 2026-05-23：GitHub Pages公開完了

---

## 🔗 参考

- Cloudflare Tunnel: https://developers.cloudflare.com/cloudflare-one/connections/connect-networks/
- appleboy/ssh-action: https://github.com/appleboy/ssh-action

---
最終更新：2026-05-23
