# CURRENT STATUS（今この瞬間の状況）

> ⚠️ 運用ルール：直近1週間の決定事項のみ保持。古いものは該当日のDaily Logに退避する。

---

## 🎯 現在の優先事項

- 個人用アプリ開発
- 勉強・技術調査
- Obsidian × Claude 第二の脳システムの運用

## 🔄 進行中のプロジェクト

| プロジェクト名 | ステータス | 次のアクション | ノート |
|---|---|---|---|
| Obsidian第二の脳構築 | ✅ 完了 | 日常運用を開始する | - |
| 簿記3級 今日の問題 | ✅ 初版完成 | 日々の学習で活用 | [[02_Projects/簿記3級_今日の問題]] |
| TOEIC L&R 今日の問題 | ✅ 初版完成 | 日々の学習で活用 | [[02_Projects/TOEIC_今日の問題]] |
| Claude資格学習支援AI | ✅ 初版完成 | 日々の学習で活用 | [[02_Projects/Claude資格学習支援AI]] |
| PWAアプリ開発環境構築 | 🔄 構築中 | GitHub Pages公開・Cloudflare Tunnel課題対応 | [[02_Projects/PWAアプリ開発環境構築]] |

## ⚡ 直近の決定事項（直近1週間）

- 2026-05-22：環境構築完了（詳細 → [[04_Logs/Daily/2026-05-22]]）
- 2026-05-23：簿記3級クイズアプリ「今日の問題」初版作成・Obsidian登録完了
- 2026-05-23：obsidian-mcp を最新版に更新（npm update -g）
- 2026-05-23：ファイル書き込みをFilesystem MCP優先に切り替え（タイムアウト根本対策）
- 2026-05-23：CLAUDE_STARTUP.md をMCP使用方針含め更新
- 2026-05-23：Claude指示をFilesystem MCP優先・obsidian-mcp不要に最適化・設定完了
- 2026-05-23：TOEIC L&R「今日の問題」システムプロンプト設計・Obsidian登録完了
- 2026-05-23：保管庫ガイド全ファイル更新完了
- 2026-05-23：Filesystem MCPでの読み書き動作確認完了
- 2026-05-23：claude_desktop_config.jsonのJSONエラー修正・mcpServers設定復旧完了
- 2026-05-23：MEMORY_CORE.mdの個人情報をボかす方針に変更
- 2026-05-23：Claude指示をCLAUDE_STARTUP参照のみに簡略化・メンテナンス性向上
- 2026-05-23：MEMORY_COREの優先事項をCURRENT_STATUSに統合・関連ファイルセクション削除
- 2026-05-23：CLAUDE_STARTUPに書き込みルール追加
- 2026-05-23：Obsidian運用レビュー実施・設定最適化完了
- 2026-05-23：PWAアプリ開発環境構成を決定（PWA + nginx + GitHub Actions + Cloudflare Tunnel）
- 2026-05-23：calorie_appをGitHubにpush完了・GitHub Pagesで公開する方針に決定

## 🧩 今抱えている課題・迷っていること

- Linuxサーバーのデフォルトゲートウェイが一時設定（再起動で消える可能性あり）
- Android携帯でのObsidianアプリ表示は未解決（Android 13制限）
- **【要対応】サーバーへのデータ保存が必要なアプリのリリース方法が未確立**
  - 現状：GitHub PagesはlocalStorage限定のアプリのみ対応可能
  - 将来：サーバーサイド機能が必要なアプリはCloudflare Tunnel + 自宅サーバー + 認証機能の構築が必要
  - 参考：[[00_System/RELEASE_PROTOCOL.md]] のStep G（Cloudflare Tunnel設定）

## 📅 直近の予定・締め切り

-

## 📋 Claudeへの未完了依頼

- calorie_app GitHub Pages公開作業（進行中）
- サーバーデータ保存対応のリリース方法を別途検討・構築する

## 🤔 検討中

- プロジェクトファイルのパスをCURRENT_STATUSのテーブルに追加し、ファイル名を覚えなくて済む運用にするか検討（→ 今回から試験的にノート列追加）

---
最終更新：2026-05-23
