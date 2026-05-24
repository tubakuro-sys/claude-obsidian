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
│   ├── MCP設定ガイド.md             Claude Desktop + MCP の設定手順
│   ├── マスターガイドv2.md           【旧版・参照不要】
│   ├── Claudeへ_保管庫ガイド.md     【旧版・参照不要】
│   └── 運用ガイド.md                【旧版・参照不要】
│
├── 01_Claude_Profile/              ★ Claudeに渡すプロフィール・指示
│   ├── 私について.md                基本プロフィール（旧版・MEMORY_COREに統合済）
│   └── 指示書テンプレート.md         用途別Claude指示文テンプレート
│
├── 02_Projects/                    ★ 進行中・完了プロジェクト
│   ├── calorie_app/                カロリー管理アプリ（GitHub Pages公開済み）
│   │   ├── 01_仕様書.md
│   │   ├── 02_技術スタック.md
│   │   ├── 03_開発履歴.md
│   │   ├── 04_既知の課題と未実装機能.md
│   │   ├── 05_次回作業手順.md
│   │   ├── 06_デプロイ・配布.md
│   │   └── README.md
│   ├── 簿記3級_今日の問題.md        簿記3級クイズアプリ「今日の問題」
│   ├── TOEIC_今日の問題.md          TOEIC L&R「今日の問題」
│   ├── Claude資格学習支援AI.md      資格学習支援AIシステム
│   └── PWAアプリ開発環境構築.md     PWA開発環境構築（完了）
│
├── 03_Knowledge/                   ★ 永続知識・技術メモ
│   └── （未作成）
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
│   ├── MEMORY_CORE.md              ogawaの基本情報・Claudeへのルール
│   ├── CURRENT_STATUS.md           今この瞬間の状況・進行中タスク・未完了依頼
│   └── INSIGHTS.md                 気づき・学びの蓄積
│
├── 07_Mistakes/                    ★ ミス・反省の集約
│   ├── MISTAKES_SUMMARY.md         起動時読み込み用・教訓の要点のみ（軽量版）
│   └── MISTAKES_LOG.md             全ミスの詳細記録（必要時のみ参照）
│
├── 08_Rules/                       ★ 自分ルール集
│   └── RULES.md                    思考・開発・Claude活用ルール
│
└── AP試験学習/                      ⚠️ 要整理：02_Projectsへの移動を検討
    └── AP試験学習支援AI_設定.md
```

> ⚠️ ルートに孤立ファイル `Claude資格プロジェクトの文面作成.md` あり。要整理。

---

## 📌 最重要ファイル（Claudeが毎回読むもの）

| 優先度 | ファイル | 内容 |
|---|---|---|
| 🔴 必須 | `06_Memory/MEMORY_CORE.md` | ogawaの基本情報・絶対ルール |
| 🔴 必須 | `06_Memory/CURRENT_STATUS.md` | 今の状況・未完了タスク |
| 🔴 必須 | `07_Mistakes/MISTAKES_LOG.md` | 過去のミス一覧 |
| 🟡 推奨 | `08_Rules/RULES.md` | 詳細ルール・開発方針 |
| 🟡 推奨 | `00_System/DEV_FLOW.md` | 開発話題のとき |
| 🟡 推奨 | `00_System/RELEASE_PROTOCOL.md` | リリース話題のとき |
| 🟢 任意 | `00_System/APP_LIST.md` | アプリURL確認のとき |
| 🟢 任意 | `02_Projects/該当ファイル` | 相談中のプロジェクト詳細 |

---

## 🔄 更新ルール

| 操作 | やること |
|---|---|
| フォルダ追加 | このファイルのツリーに追記 |
| ファイル追加 | このファイルのツリーと役割に追記 |
| ファイル削除・移動 | このファイルのツリーを修正 |
| 新規アプリリリース | APP_LIST.md・RELEASE_PROTOCOL.md・このファイルを更新 |

---
最終更新：2026-05-24（MISTAKES_SUMMARY追加・起動フロー軽量化）
