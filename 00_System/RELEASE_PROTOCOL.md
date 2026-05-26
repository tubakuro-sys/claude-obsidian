# RELEASE PROTOCOL（リリース手順）
> ogawaが「リリースして」または「更新して」と言ったら、Claudeはこのファイルを読んでそのまま実行する。
> **Claudeがコマンドをすべて出し、ogawaはターミナルにコピペするだけ。**

---

## ⚙️ 固定設定（全アプリ共通）

| 項目 | 値 |
|---|---|
| 開発フォルダ | `C:\自作ツール\apl\アプリ名\` |
| GitHubユーザー | tubakuro-sys |
| サーバー | nas001（Ubuntu） |
| SSHユーザー | （省略） |
| サーバーデプロイ先 | `/var/www/アプリ名/` |
| SSH鍵 | （省略） |

---

## 🛠 リリーススクリプト（バッチファイル）

| ファイル | 置き場所 | 用途 |
|---|---|---|
| `new_app.bat` | `C:\自作ツール\apl\` | 新規アプリの初期化・初回push |
| `release.bat` | `C:\自作ツール\apl\`（共通・1個のみ） | 更新のpush（パス入力式・複数アプリ対応） |

### release.bat の使い方（2026-05-24更新）
1. `Windowsキー + R` → `cmd` → Enter（クラシックCMDで開く）
2. `"C:\自作ツール\apl\release.bat"` を実行
3. アプリのフォルダパスを入力（例：`C:\自作ツール\apl\calorie`）
4. コミットメッセージを入力
5. `y` で確定 → 自動でpush完了

> ⚠️ Windows Terminalからのダブルクリック起動は文字コード問題で失敗することがある。
> 必ずクラシックCMD（Windowsキー+R → cmd）から実行する。

---

## 🆕 新規リリース手順【GitHub Pages（localStorageアプリ）】

> ✅ syarouで実績済みの確立手順（2026-05-25）

### 事前準備（ogawaが実施）
1. `C:\自作ツール\apl\アプリ名\` フォルダを作成し、HTMLファイルを置く
2. GitHubに空リポジトリを作成（README・.gitignore・licenseは追加しない）
   → https://github.com/new

### Step 1：new_app.bat を実行（ogawaが実施）
1. `C:\自作ツール\apl\new_app.bat` をダブルクリック
2. アプリ名を入力（GitHubリポジトリ名と同じ）
3. `y` で確認 → git init・deploy.yml生成・初回pushまで自動実行

> ⚠️ GitHub Actionsのエラー（missing server host）は無視してOK。
> deploy.ymlは将来のCloudflare Tunnel用。GitHub Pagesリリースには影響なし。

### Step 2：GitHub Pages を有効化（ogawaが実施）
1. `https://github.com/tubakuro-sys/アプリ名/settings/pages` を開く
2. Source: `Deploy from a branch`
3. Branch: `main` / `/ (root)` → **Save**
4. 数分後にアクセス確認：`https://tubakuro-sys.github.io/アプリ名/ファイル名.html`

### Step 3：Obsidian記録（Claudeが実施）
- `APP_LIST.md` にアプリ情報を追記
- `RELEASE_PROTOCOL.md` のアプリ別リリース状況テーブルを更新
- `CURRENT_STATUS.md` のプロジェクト表と決定事項を更新

---

## 🆕 新規リリース手順【サーバーアプリ（Cloudflare Tunnel待ち・未実績）】

### Step 5：Linuxサーバー設定（Claudeがコマンドを出す）
ogawaがSSHで接続して実行：
```bash
sudo mkdir -p /var/www/アプリ名
sudo chown $USER:$USER /var/www/アプリ名
git clone https://github.com/tubakuro-sys/アプリ名.git /var/www/アプリ名
sudo nano /etc/nginx/sites-available/アプリ名
```
nginx設定内容：
```nginx
server {
    listen 80;
    server_name _;
    root /var/www/アプリ名;
    index ファイル名.html;
    location / {
        try_files $uri $uri/ /ファイル名.html;
    }
}
```
```bash
sudo ln -s /etc/nginx/sites-available/アプリ名 /etc/nginx/sites-enabled/
sudo nginx -t && sudo systemctl reload nginx
```

- **動作確認**：GitHub Pages URLまたはローカルネットワークアドレス

### Step 7：Obsidian記録（Claudeが実施）
- `RELEASE_PROTOCOL.md` のアプリ別リリース状況テーブルを更新
- `00_System/APP_LIST.md` にアプリ情報を追記
- `CURRENT_STATUS.md` の決定事項を更新

---

## 🔄 更新手順

`C:\自作ツール\apl\release.bat` をクラシックCMDから実行 → フォルダパスとコミットメッセージを入力するだけ。

---

## ⚠️ 未解決課題

- **GitHub Actions自動デプロイ**：Cloudflare Tunnel設定後に再挑戦
  - 原因：GitHub ActionsからローカルネットワークへのSSH接続不可
- **サーバーサイドアプリのリリース**：Cloudflare Tunnel + ドメイン取得が必要
  - 対応時期：サーバーサイド機能が必要なアプリが出たとき

---

## 🗂 アプリ別リリース状況

| アプリ名 | ローカルパス | GitHubリポジトリ | URL | 状況 |
|---|---|---|---|---|
| calorie_app | C:\自作ツール\apl\calorie | tubakuro-sys/calorie_app | https://tubakuro-sys.github.io/calorie_app/calorie_app.html | ✅ GitHub Pages公開済み（v10） |
| syarou | C:\自作ツール\apl\syarou | tubakuro-sys/syarou | https://tubakuro-sys.github.io/syarou/syarou.html | ✅ GitHub Pages公開済み（v9） |

---
最終更新：2026-05-26
