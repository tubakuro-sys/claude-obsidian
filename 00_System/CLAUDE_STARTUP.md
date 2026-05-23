# CLAUDE STARTUP PROTOCOL
> このファイルはClaudeが会話を開始するたびに自動で実行するプロトコル。
> ogawaが何も言わなくても、Claudeはこの手順を毎回必ず実行する。

---

## 🌐 モバイル時のアクセス方法

Filesystem MCPが使えない場合（モバイル等）は、以下のベースURLを使ってファイルを読み取る：

**ベースURL：** `https://raw.githubusercontent.com/tubakuro-sys/claude-obsidian/main/`

例：`06_Memory/MEMORY_CORE.md` を読む場合
→ `https://raw.githubusercontent.com/tubakuro-sys/claude-obsidian/main/06_Memory/MEMORY_CORE.md`

モバイルでは読み取りのみ。書き込みはPC版で行う。

---

## 🛠 MCP使用方針

| 操作 | 使用MCP | 理由 |
|---|---|---|
| ファイル読み込み | Filesystem MCP優先 | obsidian-mcpはタイムアウト頻発 |
| ファイル書き込み | Filesystem MCP優先 | obsidian-mcpのedit-noteはタイムアウト頻発 |
| ファイル検索 | obsidian-mcp（使える場合のみ） | search-vaultはFilesystem MCPにない |

**Filesystem MCPのベースパス：** `C:\資料\obsidian\claude-obsidian\`

obsidian-mcpが起動時にタイムアウトした場合は、Filesystem MCPのみで続行する。

---

## 🚀 起動時の必須アクション（毎回・自動）

Claudeはogawaとの会話を開始したとき、必ず以下を順番に実行する：

### Step 1：メモリー読み込み
以下を順番に読む：
1. `06_Memory/MEMORY_CORE.md` — ogawaの基本情報・絶対ルールを把握
2. `06_Memory/CURRENT_STATUS.md` — 今の状況・進行中タスク・未完了依頼を確認
3. `07_Mistakes/MISTAKES_LOG.md` — 過去のミスを確認し、同じミスをしないよう注意

### Step 2：関連ファイル読み込み
会話のテーマに応じて追加で読む：
- **コーディング・開発の話題 → `08_Rules/RULES.md` を必ず読む**（アプリ作成フローが記載）
- 特定プロジェクトの話題 → `02_Projects/該当ファイル`
- 新しい構成・設定の話題 → `00_System/VAULT_MAP.md`
- **「リリースして」と言われた場合 → `00_System/RELEASE_PROTOCOL.md` を読んでそのまま実行する**
- **「〇〇アプリ作って」と言われた場合 → `08_Rules/RULES.md` のアプリ新規作成フローに従う**

### Step 3：起動確認
読み込み完了後、一言添える：
「メモリー読み込み完了。[未完了タスクがあればここで報告]」

---

## 📋 会話中のルール

- 不確かな情報は「確認が必要です」と明示する（ハルシネーション禁止）
- コードを書くときはバージョン・環境を確認してから書く
- 保管庫内のファイルに変更があった場合、関連するガイド・マップ類も合わせて更新する

---

## 💾 書き込みのルール

ogawaが「記録して」「書き込みして」と言った場合、または会話の内容が以下に該当する場合は、Filesystem MCPで該当ファイルに書き込む：

| 内容 | 書き込み先 |
|---|---|
| 未完了タスク・依頼 | `CURRENT_STATUS.md` の「Claudeへの未完了依頼」 |
| 決定事項 | `CURRENT_STATUS.md` の「直近の決定事項」 |
| ミス・反省 | `MISTAKES_LOG.md` |
| 学び・気づき | `06_Memory/INSIGHTS.md` |
| プロジェクト進捗 | `02_Projects/該当ファイル` |
| リリース状況 | `00_System/RELEASE_PROTOCOL.md` のアプリ別リリース状況テーブル |

書き込み後は「〇〇に記録しました」と一言報告する。
モバイルからの場合は書き込みをスキップし「PC版で記録してください」と伝える。

---

## ⚠️ 絶対に守るルール

1. ハルシネーションしない。知らないことは「わからない」と言う
2. `MISTAKES_LOG.md` に記録されたミスは2度としない
3. ogawaの依頼はすべて記録し、完了するまで追跡する

---

最終更新：2026-05-23
