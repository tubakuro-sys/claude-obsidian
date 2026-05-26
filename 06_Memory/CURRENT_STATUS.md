# CURRENT STATUS（今この瞬間の状況）
> ⚠️ 運用ルール：決定事項は直近1週間のみ保持。古いものは04_Logs/Daily/に退避する。

---

## 🎯 現在の優先事項
- 個人用アプリ開発
- 勉強・技術調査
- Obsidian × Claude 第二の脳システムの運用

---

## 🔄 進行中のプロジェクト

| プロジェクト名 | ステータス | 次のアクション | ノート |
|---|---|---|---|
| 簿記3級 今日の問題 | ✅ 初版完成 | 日々の学習で活用 | [[02_Projects/簿記3級_今日の問題]] |
| TOEIC L&R 今日の問題 | ✅ 初版完成 | 日々の学習で活用 | [[02_Projects/TOEIC_今日の問題]] |
| Claude資格学習支援AI | ✅ 初版完成 | 日々の学習で活用 | [[02_Projects/Claude資格学習支援AI]] |
| syarou | ✅ v9完成（未リリース） | GitHub Pagesに上げる | [[02_Projects/syarou]] |
| calorie_app | 🔧 v9デバッグ中 | 3品表示バグ修正 | [[02_Projects/calorie_app/01_仕様書]] |

---

## ⚡ 直近の決定事項（2026-05-26）

### calorie_app
- Ollama（qwen2.5:7b）をnas001（192.168.11.50）に導入・LAN公開済み
- AI機能を全面追加（v8まで完成・v9はデバッグ版）
- 実装済み機能：料理名→栄養素推定、残り栄養素→レシピ提案、食材→レシピ提案、AIチャット（昼食・夕食レシピ詳細）、食品検索AIフォールバック
- AIチャットのレシピ表示：栄養素カード（kcal・たんぱく質・炭水化物・脂質・塩分）＋入力フォーム反映ボタン付き
- **未解決バグ**：AIチャットで3品提案されるはずが1品しか表示されない

### syarou
- PDF取込タブ → 「➕ 問題追加」タブに全面改修（v9完成）
- APIキー不要・JSONペースト方式に変更
- ClaudeにJSONで問題を作ってもらい貼り付けるだけで追加できる

### ローカルLLM環境
- nas001にOllama Dockerコンテナ稼働中
- モデル：qwen2.5:7b（日本語精度まあまあ、CPU処理で1〜2分）
- OLLAMA_ORIGINS=* 設定済み・LAN公開済み
- 将来検討：RAG、Brave Search API連携、Tailscale外出先接続

---

## ⚡ 決定事項（2026-05-25）

- Androidの obsidian-git 自動sync設定完了（10分間隔・編集停止後syncはOFF）
- syarou v1 初回リリース完了（GitHub Pages）
- new_app.bat 実行確認：bat実行→GitHub Pages有効化のみでOK・Secrets不要

## ⚡ 決定事項（2026-05-24）

- release.bat を共通版に刷新（`C:\自作ツール\apl\release.bat` に1個のみ・パス入力式）
- Windows Terminal → クラシックCMD運用に統一
- MCPツール確定：新規作成は `filesystem:write_file`（小文字）、編集は `Filesystem:edit_file`
- GitHubリポジトリをPrivateに戻した
  - モバイル運用：必要なファイルはClaudeがURLを案内→ogawaが貼り付け→読み込み

---

## 📋 Claudeへの未完了依頼

- **calorie_app 3品表示バグ修正**
  - `calorie_app_v9_debug.html` をPCブラウザで開きF12→Console確認
  - 「🥗 昼食レシピ」ボタン押下後に `=== AI応答生テキスト ===` の内容を貼ってもらう
  - AIが`---`区切りで3品返しているか確認→修正

---

## 🧩 課題・未対応

- Linuxサーバーのデフォルトゲートウェイ一時設定（再起動で消える可能性）
- サーバーデータ保存アプリのリリース未確立（Cloudflare Tunnel待ち）
- モバイルからのObsidianファイル書き込み（Cloudflare Tunnel待ち）
- syarou v9 GitHub Pagesへのリリース（未実施）

---

## 🔮 検討中

- 統合ポータルサイト作成（アプリが増えたタイミングで着手）
- calorie_app：RAG（レシピDB組み込み）
- calorie_app：Brave Search API連携（無料2000回/月）
- Cloudflare Tunnel構築
- Tailscale設定（外出先からnas001接続）

---
最終更新：2026-05-26
