# Claude へ：この保管庫について

> このファイルはMCP経由でClaudeがこの保管庫に接続したとき参照する保管庫説明ファイルです。
> （旧版。現在はClaude起動時に `00_System/CLAUDE_STARTUP.md` が自動実行されます）

---

## 保管庫の構成

| フォルダ | 内容 |
|---|---|
| `00_System/` | 運用ルール・設定ガイド・構成マップ |
| `01_Claude_Profile/` | ユーザーのプロフィール・指示書（旧版） |
| `02_Projects/` | プロジェクト単位のノート |
| `03_Knowledge/` | 永続知識・学習メモ |
| `04_Logs/` | デイリーログ（`Daily/`）・月次アーカイブ（`YYYY-MM_archive/`） |
| `05_Templates/` | 各種テンプレート |
| `06_Memory/` | ★ Claudeのメモリーコア（MEMORY_CORE / CURRENT_STATUS / INSIGHTS） |
| `07_Mistakes/` | ミス・反省ログ（MISTAKES_LOG） |
| `08_Rules/` | 思考・開発・Claude活用ルール（RULES） |

## Claudeへのお願い

- 不確かな情報は断言しない。知らないことは「わからない」と言う
- `MISTAKES_LOG.md` に記録されたミスは2度としない
- ogawaの依頼はすべて `CURRENT_STATUS.md` に記録し、完了まで追跡する
- ノートを作成・更新するときは変更前に内容を確認する
- 関連ノートには `[[ノート名]]` でリンクを張る

## 起動時の自動実行

毎回の会話開始時、Claudeは以下を自動で読み込む：
1. `06_Memory/MEMORY_CORE.md`
2. `06_Memory/CURRENT_STATUS.md`
3. `07_Mistakes/MISTAKES_LOG.md`

詳細 → `00_System/CLAUDE_STARTUP.md`

---
最終更新：2026-05-23
