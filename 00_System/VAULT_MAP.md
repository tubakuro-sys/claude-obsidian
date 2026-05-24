# VAULT MAP（保管庫構成マップ）
> この保管庫の全構成・各ファイルの役割を記録するファイル。
> フォルダ・ファイルを追加・変更したら必ずここを更新する。

---

## 📁 フォルダ・ファイル構成

```
claude-obsidian/
│
├── 00_System/                      ★ 保管庫の設計・運用ルール
│   ├── VAULT_MAP.md                ← このファイル。構成の全体マップ
│   ├── CLAUDE_STARTUP.md           Claudeが毎回起動時に自動実行するプロトコル
│   ├── APP_LIST.md                 公開済みアプリのURL・リリース状況一覧
│   ├── DEV_FLOW.md                 アプリ開発フロー・技術選定基準
│   ├── RELEASE_PROTOCOL.md         リリース手順・batスクリプト情報
│   ├── README.md                   保管庫の概要説明
│   └── MCP設定ガイド.md             Claude Desktop + MCP の設定手順
│
├── 01_Claude_Profile/              ★ Claudeに渡すプロフィール・指示
│   ├── 私について.md                基本プロフィール（旧版・MEMORY_COREに統合済）
│   └── 指示書テンプレート.md         用途別Claude指示文テンプレート
│
├── 02_Projects/                    ★ 進行中・完了プロジェクト
│   ├── calorie_app/                カロリー管理アプリ（GitHub Pages公開済み・v7）
│   │   ├── 01_仕様書.md
│   │   ├── 02_技術スタック.md
│   │   ├── 03_開発履歴.md
│   │   ├── 04_既知の課題と未実装機能.md
│   │   ├── 05_次回作業手順.md
│   │   ├── 06_デプロイ・配布.md
│   │   └── README.md
│   ├── AP試験学習/                  AP試験学習支援AI設定
│   │   └── AP試験学習支援AI_設定.md
│   ├── 簿記3級_今日の問題.md        簿記3級クイズアプリ「今日の問題」
│   ├── TOEIC_今日の問題.md          TOEIC L&R「今日の問題」
│   ├── Claude資格学習支援AI.md      資格学習支援AIシステム
│   └── PWAアプリ開発環境構築.md     PWA開発環境構築（完了）
│
├── 03_Knowledge/                   ★ 永続知識・技術メモ
│   └── （空）運用方針：何度も使う知識が生まれたときに自然発生で作成。
│         Claudeが「保存しますか？」と提案することもある。
│
├── 04_Logs/                        ★ 作業ログ
│   ├── Daily/                      デイリーログ（日付ごと）
│   │   └── 2026-05-22.md
│   └── 2026-05_archive/            2026年5月分アーカイブ
│       ├── INDEX.md
│       ├── Claude活用・設定系ログ.md
│       ├── 開発系ログ.md
│       ├── 勉強系ログ.md
│       ├── 調査・検討系ログ.md
│       └── その他ログ.md
│
├── 05_Templates/                   ★ テンプレート集
│   ├── デイリーログ.md
│   ├── プロジェクトテンプレート.md
│   ├── 会話ログテンプレート.md
│   └── 知識ノートテンプレート.md
│
├── 06_Memory/                      ★★ Claudeのメモリーコア（最重要）
│   ├── MEMORY_CORE.md              ogawaの人物情報のみ
│   ├── CURRENT_STATUS.md           今の状況・進行中タスク・未完了依頼
│   └── INSIGHTS.md                 気づき・学びの蓄積
│
├── 07_Mistakes/                    ★ ミス・反省の集約
│   ├── MISTAKES_SUMMARY.md         起動時読み込み用・教訓の要点のみ（軽量版）
│   └── MISTAKES_LOG.md             全ミスの詳細記録（必要時のみ参照）
│
└── 08_Rules/                       ★ 自分ルール集
    └── RULES.md                    思考・開発・Claude活用ルール
```

---

## 📌 起動時読み込みファイル（Claudeが毎回読むもの）

| 優先度 | ファイル | 内容 |
|---|---|---|
| 🔴 必須 | `06_Memory/MEMORY_CORE.md` | ogawaの人物情報 |
| 🔴 必須 | `06_Memory/CURRENT_STATUS.md` | 今の状況・未完了タスク |
| 🔴 必須 | `07_Mistakes/MISTAKES_SUMMARY.md` | ミス教訓の要点（軽量版） |

## 📌 話題別・追加読み込みファイル

| 話題 | 読むファイル |
|---|---|
| アプリ開発全般 | `00_System/DEV_FLOW.md` |
| リリース・更新 | `00_System/RELEASE_PROTOCOL.md` |
| コーディングルール | `08_Rules/RULES.md` |
| 特定プロジェクト | `02_Projects/該当ファイル` |
| アプリURL確認 | `00_System/APP_LIST.md` |
| ミス詳細確認 | `07_Mistakes/MISTAKES_LOG.md` |

---

## 🔄 更新ルール

| 操作 | やること |
|---|---|
| フォルダ・ファイル追加 | このファイルのツリーと役割に追記 |
| ファイル削除・移動 | このファイルのツリーを修正 |
| 新規アプリリリース | APP_LIST.md・RELEASE_PROTOCOL.md・このファイルを更新 |
| 03_Knowledgeにファイル追加 | このファイルのツリーに追記 |

---
最終更新：2026-05-24（旧版ファイル削除反映・AP試験学習移動反映・03_Knowledge運用方針追記）
