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
├── 02_Projects/                    ★ 進行中・完了プロジェクト
│   ├── calorie_app/                カロリー管理アプリ（GitHub Pages公開済み・v9デバッグ中）
│   │   ├── 01_仕様書.md
│   │   ├── 02_技術スタック.md
│   │   ├── 03_開発履歴.md
│   │   ├── 04_既知の課題と未実装機能.md
│   │   ├── 05_次回作業手順.md
│   │   ├── 06_デプロイ・配布.md
│   │   ├── 07_作業記録_2026-05-26.md
│   │   └── README.md
│   ├── AP試験学習/                  AP試験学習支援AI設定
│   │   └── AP試験学習支援AI_設定.md
│   ├── syarou.md                   社労士試験対策アプリ（v9完成・未リリース）
│   ├── 簿記3級_今日の問題.md        簿記3級クイズアプリ「今日の問題」
│   ├── TOEIC_今日の問題.md          TOEIC L&R「今日の問題」
│   ├── Claude資格学習支援AI.md      資格学習支援AIシステム
│   ├── 家族共有アプリ/              家族とレシピ・タスク共有（Supabase+PWA・設計フェーズ）
│   │   ├── README.md               プロジェクト概要・決定事項・やること
│   │   ├── schema.sql              Supabase用テーブル定義＋RLS
│   │   └── 手順書.md               実装・リリース手順書（Supabase版）
│   ├── PWAアプリ開発環境構築.md     PWA開発環境構築（完了）
│   ├── ループキャンディ.md          パズルゲーム「ループキャンディ」GitHub公開＋広告動画バグ修正（完了）
│   └── Frostlight.md               サバイバル都市経営ゲーム「凍てつく灯火」（単一HTML・改修フェーズ）
│
├── 03_Knowledge/                   ★ 永続知識・技術メモ
│   └── （空）運用方針：何度も使う知識が生まれたときに自然発生で作成。
│         Claudeが「保存しますか？」と提案することもある。
│
├── 04_Logs/                        ★ 作業ログ
│   ├── WEEKLY_SUMMARY.md           週次サマリー（直近4週分のみ保持）
│   ├── MONTHLY_SUMMARY/            月次サマリー（永続保存）
│   │   └── YYYY-MM.md              ※ファイルは月次自動増加・個別管理不要
│   ├── Daily/                      デイリーログ（週次サマリー作成時に参照・其後アーカイブ）
│   │   └── YYYY-MM-DD.md           ※ファイルは自動増加・個別管理不要
│   └── 2026-05_archive/            2026年5月分アーカイブ
│       ├── INDEX.md
│       ├── Claude活用・設定系ログ.md
│       ├── 開発系ログ.md
│       ├── 勉強系ログ.md
│       ├── 調査・検討系ログ.md
│       └── その他ログ.md
│
├── 09_Templates/                   ★ テンプレート集（AI横断で使える指示書含む）
│   ├── デイリーログ.md
│   ├── プロジェクトテンプレート.md
│   ├── 会話ログテンプレート.md
│   ├── 知識ノートテンプレート.md
│   └── AI指示書テンプレート.md        Claude・他AI向け汎用指示書テンプレート
│
├── 06_Memory/                      ★★ Claudeのメモリーコア（最重要）
│   ├── MEMORY_CORE.md              ogawaの人物情報のみ
│   ├── CURRENT_STATUS.md           今週のTODO・進行中PJ・未完了依頼・直近決定事項
│   ├── TODO_BACKLOG.md             来週以降・中長期TODOの全量管理
│   ├── STUDY_PLAN.md               学習計画・受験日程・月次計画・診断結果
│   ├── ITPASS_SYLLABUS.md          ITパスポート試験シラバス Ver.6.5 完全版
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
| 来週以降・中長期TODO | `06_Memory/TODO_BACKLOG.md` |
| 学習計画・受験日程・診断結果 | `06_Memory/STUDY_PLAN.md` |
| ITパスポートシラバス参照 | `06_Memory/ITPASS_SYLLABUS.md` |

---

## 🔄 更新ルール

| 操作 | やること |
|---|---|
| フォルダ・ファイル追加 | このファイルのツリーと役割に追記 |
| ファイル削除・移動 | このファイルのツリーを修正 |
| 新規アプリリリース | APP_LIST.md・RELEASE_PROTOCOL.md・このファイルを更新 |
| 03_Knowledgeにファイル追加 | このファイルのツリーに追記 |

---
## 🔮 将来拡張メモ
- 別AIツール（ChatGPT等）との混在環境になった場合、`00_System/AI_PROFILES/` を追加してAI別設定を管理する予定
- `06_Memory/` の内容はAI非依存な「ogawa自身の情報」として設計済み

---
最終更新：2026-07-10（02_Projects/Frostlight.md を追加）
