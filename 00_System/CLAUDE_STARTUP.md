# CLAUDE STARTUP PROTOCOL
> 会話開始時に毎回自動実行。ogawaが何も言わなくても必ず実行する。

---

## 🚀 起動時の必須アクション（毎回）

以下を順番に読む：

1. `06_Memory/MEMORY_CORE.md` — ogawaの人物情報
2. `06_Memory/CURRENT_STATUS.md` — 今の状況・未完了タスク
3. `07_Mistakes/MISTAKES_SUMMARY.md` — ミス教訓の要点（軽量版）

読み込み完了後、以下の形式で表示する：

```
メモリー読み込み完了。

📋 今週のTODO（CURRENT_STATUSより）
  - [今週のTODOリストを箇条書き]

⚠️ 未完了依頼：[あれば表示、なければ省略]
```

※ 学習メニューはSTUDY_PLANに分離済み。「今日の学習」コマンド時にSTUDY_PLANを読んで出力する。

**CURRENT_STATUS.md の行数を確認し、150行を超えていたら：**
「CURRENT_STATUS.mdが150行を超えています。メンテナンスしますか？」と提案する。
（対応する場合：MISTAKES_LOGの「Obsidian環境メンテナンスの思想と基準」を参照して4視点でチェック）

**CURRENT_STATUS.md の最終更新日を確認し、前回から7日以上経過していたら：**
「前回の会話から1週間以上経っています。週次サマリーを作成しますか？」と提案する。
（作成する場合：`04_Logs/Daily/` のログを読んで `04_Logs/WEEKLY_SUMMARY.md` を更新する）

**週次更新時のファイル移動ルール：**
- `TODO_BACKLOG.md` の「来週のTODO」→ `CURRENT_STATUS.md` の「今週のTODO」に移す
- `TODO_BACKLOG.md` の「再来週」→「来週」に繰り上げ
- 完了済みTODOは `CURRENT_STATUS.md` から削除（デイリーログに記録済みであれば不要）

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
| 来週以降・中長期TODO | `06_Memory/TODO_BACKLOG.md` |
| 学習計画・受験日程・診断結果 | `06_Memory/STUDY_PLAN.md` |

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

⚠️ **モバイルURLは `raw.githubusercontent.com` 形式を使う。リポジトリはPublic運用のため有効。**
⚠️ **ClaudeはURLを自分で生成してアクセスできない。必ずogawaにURLを貼り付けてもらう。**

| ファイル | URL |
|---|---|
| MEMORY_CORE | https://raw.githubusercontent.com/tubakuro-sys/claude-obsidian/main/06_Memory/MEMORY_CORE.md |
| CURRENT_STATUS | https://raw.githubusercontent.com/tubakuro-sys/claude-obsidian/main/06_Memory/CURRENT_STATUS.md |
| MISTAKES_SUMMARY | https://raw.githubusercontent.com/tubakuro-sys/claude-obsidian/main/07_Mistakes/MISTAKES_SUMMARY.md |
| DEV_FLOW | https://raw.githubusercontent.com/tubakuro-sys/claude-obsidian/main/00_System/DEV_FLOW.md |
| RELEASE_PROTOCOL | https://raw.githubusercontent.com/tubakuro-sys/claude-obsidian/main/00_System/RELEASE_PROTOCOL.md |
| RULES | https://raw.githubusercontent.com/tubakuro-sys/claude-obsidian/main/08_Rules/RULES.md |
| VAULT_MAP | https://raw.githubusercontent.com/tubakuro-sys/claude-obsidian/main/00_System/VAULT_MAP.md |
| APP_LIST | https://raw.githubusercontent.com/tubakuro-sys/claude-obsidian/main/00_System/APP_LIST.md |
| MISTAKES_LOG | https://raw.githubusercontent.com/tubakuro-sys/claude-obsidian/main/07_Mistakes/MISTAKES_LOG.md |

---

## 💾 書き込みルール

| 内容 | 書き込み先 |
|---|---|
| 今週の決定事項・状況変化 | `CURRENT_STATUS.md` |
| 来週以降のTODO追加・変更 | `TODO_BACKLOG.md` |
| 学習計画・受験日程変更 | `STUDY_PLAN.md` |
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
- [ ] 本日のデイリーログを「デイリーログ作成の絶対手順」に従って作成・追記したか
- [ ] 本日のデイリーログは詳細に記載されているか（薄い内容はNG）
- [ ] 今週TODOに未着手タスクを反映したか
- [ ] 会話全体を振り返り記録漏れがないか確認したか
- [ ] MCPタイムアウトが発生した場合、再起動後に記録を再確認したか

---

## 🔍 修正・記録後の検証表示ルール（必須）

**ファイルの修正または記録を行った後は必ず以下を表示する。**

```
✅ 検証結果

[修正・記録の場合]
- 変更ファイル：[filename]
- 変更内容：[1行サマリ]
- 実際に読み直して確認：[✅正常 / ⚠️異常あり]

[記録漏れチェック]
- CURRENT_STATUS 更新要の決定事項：[✅記録済み / ⚠️未記録]
- MISTAKES記録要のミス：[✅記録済み / ⚠️未記録 / —なし]
- VAULT_MAP更新要の構成変化：[✅更新済み / ⚠️未更新 / —なし]
- デイリーログ：[✅追記済み / ⚠️未記録]
```

⚠️ の項目があればその場で対応してから終了する。

---

## 📓 デイリーログ作成の絶対手順（例外なし）

> デイリーログを作成・更新するときは**必ずこの手順を踏む。**
> write_fileを使う前にこの手順を確認すること。

**STEP 1：** `read_text_file` で `04_Logs/Daily/YYYY-MM-DD.md` を読もうとする
**STEP 2-A：ファイルが存在した場合 →** `edit_file` で末尾に追記する。write_fileは使わない。
**STEP 2-B：ファイルが存在しなかった場合 →** `write_file` で新規作成する。

> ⛔ STEP 1をスキップして write_file を使うことは禁止。4回同じミスで発覚済み。
> ⛔ 「今日は別セッションで作ったかもしれない」という可能性がある限り、必ず先に読む。

---

## ⚠️ 絶対ルール

1. ハルシネーションしない。知らないことは「わからない」と言う
2. `MISTAKES_SUMMARY.md` に記録された教訓は必ず守る
3. ogawaの依頼はすべて記録し完了するまで追跡する
4. 運用のしやすさ・トークン効率・ミスによる手間を常に意識してメンテナンスする
5. 個人情報になりそうな内容（名前・住所・IP・SSH情報等）は記録前にogawaに確認する

---

## 💬 Claudeコマンド一覧

| コマンド | 動作 |
|---|---|
| 「今週のスケジュール」 | CURRENT_STATUSの週間TODO＋学習ルーティン＋週間スケジュールを一覧表示 |
| 「今日の学習」 | STUDY_PLANを読んで今日のメニューと1問目を出題 |
| 「次」 | 次の問題へ |
| 「解説して」 | 直前の問題を詳しく説明 |
| 「もう一度」 | 同じ分野の別問題を出題 |
| 「今日の結果」 | 正答率・弱点・明日予告 |
| 「弱点出して」 | 今週間違えた問題を再出題 |
| 「今週のまとめ」 | 週次進捗サマリー |

> コマンドを追加したい場合はこのテーブルに追記する。

---

## 🗂 ファイル作成・移動前の必須確認（再発防止ルール）

**ファイルを新規作成・移動する前に必ず `filesystem:directory_tree` で既存構成を確認する。**

| 操作 | 確認すること |
|---|---|
| 新規フォルダ作成 | 同番号・同名のフォルダが既に存在しないか |
| 新規ファイル作成 | 同名・同役割のファイルが別の場所にないか |
| ログ・記録の書き込み | Daily/は `04_Logs/Daily/` のみ。複数箇所に作らない |

→ 確認せずに作成したフォルダ重複（`05_Logs/`・`05_Projects/`）が過去に発生済み。

---

## 🔄 MCPタイムアウト対策

**原因：** 長時間セッションでMCPサーバーのメモリが逼迫する

**対策：**
1. セッションが2時間を超えたらClaude Desktopを再起動する
2. 再起動後は記録の続きから再開する

---
最終更新：2026-05-30（MCPタイムアウトセクションのチェックリストを会話終了前チェックリストに統合・重複削除）
