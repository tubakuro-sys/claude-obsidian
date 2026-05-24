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
| calorie_app | ✅ v7公開済み | 次機能の検討 | [[02_Projects/calorie_app/01_仕様書]] |

---

## ⚡ 直近の決定事項（2026-05-24）

- release.bat を共通版に刷新（`C:\自作ツール\apl\release.bat` に1個のみ・パス入力式）
- Windows Terminal → クラシックCMD運用に統一（Windowsキー+R → cmd）
- MCPツール確定：新規作成は `filesystem:write_file`（小文字）、編集は `Filesystem:edit_file`
- APP_LIST.md 新規作成・VAULT_MAP.md 全面更新完了
- Obsidian記録漏れ防止チェックリストを MISTAKES_LOG.md に追加
- Obsidian起動フロー軽量化（MISTAKES_SUMMARY新設・MEMORY_CORE簡素化・トークン約55%削減）
- Obsidian保管庫の不要ファイル整理・構造最適化完了
- **Androidモバイル環境構築完了（2026-05-24）**
  - Termux + git でGitHubリポジトリをclone済み
  - Vault パス：`/storage/emulated/0/claude-obsidian`
  - 自動pull設定済み（Termux起動時に自動実行）
  - git push設定済み（android-syncトークン使用）
- GitHubリポジトリをpublic化完了（モバイルからraw URLで読み取り可能に）
- 個人情報含むファイルの修正完了（IPアドレス・SSH情報・居住地詳細削除済み）
- CLAUDE_STARTUP.mdにモバイル用フルURL一覧を追加
- 今後の個人情報記録ルール確定：記録前にogawaに確認する
- **GitHubリポジトリをPrivateに戻した（2026-05-24）**
  - モバイルでは「チャットに直接貼ったURL」しかアクセス不可のためPublicである必要なし
  - モバイル運用：必要なファイルはClaudeがURLを案内→ogawaが貼り付け→読み込み
  - CLAUDE_STARTUP.mdにURL案内ルールを追記済み

---

## 🧩 課題・未対応

- Linuxサーバーのデフォルトゲートウェイ一時設定（再起動で消える可能性）
- サーバーデータ保存アプリのリリース未確立（Cloudflare Tunnel待ち）
- モバイルからのObsidianファイル書き込み（リモートMCP構築が必要・Cloudflare Tunnel待ち）

---

## 📋 Claudeへの未完了依頼

- なし

---

## 🔮 検討中

- 統合ポータルサイト作成（アプリが増えたタイミングで着手・APP_LIST.md参照）
- calorie_app 次機能の検討（内容未定）
- Cloudflare Tunnel構築（サーバーアプリリリース・モバイル書き込み両方に必要）

---
最終更新：2026-05-24
