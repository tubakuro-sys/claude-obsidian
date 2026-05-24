# CLAUDE STARTUP PROTOCOL
> 会話開始時に毎回自動実行。ogawaが何も言わなくても必ず実行する。

---

## 🚀 起動時の必須アクション（毎回）

以下を順番に読む：

1. `06_Memory/MEMORY_CORE.md` — ogawaの人物情報
2. `06_Memory/CURRENT_STATUS.md` — 今の状況・未完了タスク
3. `07_Mistakes/MISTAKES_SUMMARY.md` — ミス教訓の要点（軽量版）

読み込み完了後：「メモリー読み込み完了。[未完了タスクがあればここで報告]」

**CURRENT_STATUS.md の最終更新日を確認し、前回から7日以上経過していたら：**
「前回の会話から1週間以上経っています。週次サマリーを作成しますか？」と提案する。
（作成する場合：`04_Logs/Daily/` のログを読んで `04_Logs/WEEKLY_SUMMARY.md` を更新する）

---

## 📂 話題別・追加読み込みファイル

| 話題 | 読むファイル |
|---|---|
| アプリ開発全般 | `00_System/DEV_FLOW.md` |
| リリース・更新 | `00_System/RELEASE_PROTOCOL.md` |
| コーディングルール | `08_Rules/RULES.md` |
| 特定プロジェクト | `02_Projects/該当ファイル` |
| 保管庫構成確認 | `00_System/VAULT_MAP.md` |
| アプリURL確認 | `00_System/APP_LIST.md` |
| ミス詳細確認 | `07_Mistakes/MISTAKES_LOG.md` |

---

## 🛠 MCP使用方針（ツール名を間違えない）

| 操作 | 使うツール | 注意 |
|---|---|---|
| ファイル読み込み | `Filesystem:read_text_file` / `Filesystem:read_multiple_files` | |
| ファイル新規作成・上書き | `filesystem:write_file`（小文字） | 大文字Filesystemは失敗する |
| ファイル部分編集 | `Filesystem:edit_file` | |
| ファイル検索 | `Filesystem:search_files` | |
| ディレクトリ確認 | `filesystem:directory_tree` | |

**ベースパス：** `C:\資料\obsidian\claude-obsidian\`

**モバイル時：** 以下のフルURLで各ファイルを読み取る。書き込みはスキップし「PC版で記録してください」と伝える。
追加ファイルが必要になった場合は、ogawaに「次のURLをコピーして貼り付けてください：`[URL]`」と案内する。

⚠️ **モバイルURLは必ず `github.com/blob/` 形式を使う。`raw.githubusercontent.com` はPrivateリポジトリでは404になる。**

| ファイル | URL |
|---|---|
| MEMORY_CORE | https://github.com/tubakuro-sys/claude-obsidian/blob/main/06_Memory/MEMORY_CORE.md |
| CURRENT_STATUS | https://github.com/tubakuro-sys/claude-obsidian/blob/main/06_Memory/CURRENT_STATUS.md |
| MISTAKES_SUMMARY | https://github.com/tubakuro-sys/claude-obsidian/blob/main/07_Mistakes/MISTAKES_SUMMARY.md |
| DEV_FLOW | https://github.com/tubakuro-sys/claude-obsidian/blob/main/00_System/DEV_FLOW.md |
| RELEASE_PROTOCOL | https://github.com/tubakuro-sys/claude-obsidian/blob/main/00_System/RELEASE_PROTOCOL.md |
| RULES | https://github.com/tubakuro-sys/claude-obsidian/blob/main/08_Rules/RULES.md |
| VAULT_MAP | https://github.com/tubakuro-sys/claude-obsidian/blob/main/00_System/VAULT_MAP.md |
| APP_LIST | https://github.com/tubakuro-sys/claude-obsidian/blob/main/00_System/APP_LIST.md |
| MISTAKES_LOG | https://github.com/tubakuro-sys/claude-obsidian/blob/main/07_Mistakes/MISTAKES_LOG.md |

---

## 💾 書き込みルール

| 内容 | 書き込み先 |
|---|---|
| 決定事項・状況変化 | `CURRENT_STATUS.md` |
| ミス・反省 | `MISTAKES_LOG.md` ＋ `MISTAKES_SUMMARY.md`（1行追記） |
| 新規アプリ登録 | `APP_LIST.md` ＋ `RELEASE_PROTOCOL.md` |
| ファイル構成変化 | `VAULT_MAP.md` |
| 未完了依頼 | `CURRENT_STATUS.md` の未完了依頼欄 |

書き込み後は「〇〇に記録しました」と報告する。

---

## ✅ 会話終了前チェックリスト（毎回必須）

以下を確認し、漏れがあれば追記してから終了する：

- [ ] 新しい決定事項を `CURRENT_STATUS.md` に記録したか
- [ ] プロジェクト状態変化を `CURRENT_STATUS.md` プロジェクト表に反映したか
- [ ] 新しいミスを `MISTAKES_LOG.md` ＋ `MISTAKES_SUMMARY.md` に記録したか
- [ ] アプリリリースがあれば `APP_LIST.md` / `RELEASE_PROTOCOL.md` を更新したか
- [ ] ファイル構成変化があれば `VAULT_MAP.md` を更新したか
- [ ] 未完了依頼・積み残しを `CURRENT_STATUS.md` に記録したか
- [ ] 本日のデイリーログ `04_Logs/Daily/YYYY-MM-DD.md` を作成したか

---

## ⚠️ 絶対ルール

1. ハルシネーションしない。知らないことは「わからない」と言う
2. `MISTAKES_SUMMARY.md` に記録された教訓は必ず守る
3. ogawaの依頼はすべて記録し完了するまで追跡する
4. 運用のしやすさ・トークン効率・ミスによる手間を常に意識してメンテナンスする
5. 個人情報になりそうな内容（名前・住所・IP・SSH情報等）は記録前にogawaに確認する

---
最終更新：2026-05-24
