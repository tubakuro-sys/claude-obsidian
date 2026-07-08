# CURRENT STATUS（今この瞬間の状況）
> ⚠️ 運用ルール：今週のTODO・未完了依頼・進行中PJ・直近決定事項のみ保持。
> 来週以降のTODO → `TODO_BACKLOG.md` / 学習計画 → `STUDY_PLAN.md`

---

## 🎯 現在の優先事項
- **最大目標：情シス転職（1〜2年後）**
- 資格ロードマップ：ITパス→AWS SAA→TOEIC→応用情報
- 個人開発＋AI活用実績を転職ポートフォリオに結びつける
- Obsidian × Claude 第二の脳システムの運用

---

## 🔄 進行中のプロジェクト

| プロジェクト名         | ステータス                  | 次のアクション         |
| --------------- | ---------------------- | --------------- |
| 簿記3級 今日の問題      | ✅ 初版完成                 | 復習リスト機能追加       |
| TOEIC L&R 今日の問題 | ✅ 初版完成                 | Part別分類機能追加     |
| Claude資格学習支援AI  | ✅ 初版完成                 | 日々の学習で活用        |
| 毎日学習ルーティンアプリ    | ✅ 初版完成（2026-05-29）     | 問題バンク追加         |
| syarou          | ✅ v9運用中                | —               |
| calorie_app     | 🔧 v9デバッグ中             | 3品表示バグ修正        |
| toeic_vocab     | ✅ v1リリース済み（2026-05-30） | 単語数増加・v2指向      |
| 習慣トラッカー         | 📋 設計フェーズ              | v1実装開始          |
| ntfy通知サーバー      | 📋 計画中                 | nas001にDocker導入 |
| 家計簿ツール          | 📋 計画中                 | Tesseract OCR調査 |
| 家族共有アプリ（レシピ・タスク） | 🔧 環境構築中 | Google認証設定（手順3/ブロックC）から再開 |
| ループキャンディ（Loop Candy Puzzle） | ✅ v1リリース済み（2026-07-08） | 特になし（広告・音声・パフォーマンスのバグ修正済み） |

---

## 📋 Claudeへの未完了依頼

- **calorie_app 3品表示バグ修正**
  - `calorie_app_v9_debug.html` をPCブラウザで開きF12→Console確認
  - 「🥗 昼食レシピ」ボタン押下後に `=== AI応答生テキスト ===` の内容を貼ってもらう

---

## 🗓 今週のTODO（6/11〜／ITパス再受験準備期間）

**ITパス再受験準備（目標：6/27土〜6/28日、遅くとも7月上旬）**
- [ ] CBTの再受験枠を予約（目標日を先に確定させてモチベーション化）
- [ ] IPA公式過去問PDFをClaude Desktop（Cowork）で直接指定→一問一答練習
  - 進捗記録用 `05_Study/IT_PASSPORT_PROGRESS.md` をCowork上で作成する
- [ ] 新出用語（シラバス6.3/6.4/6.5）の重点暗記―敗因「用語の幅不足」を埋める
- [ ] 弱点9項目の再確認（公開鍵暗号・RAID5・MTTR・ITIL・第2正規形・PPM花形・RFP/RFI・PaaS・SWOT機会）

**並行・引き継き**
- [ ] calorie_app 3品表示バグ修正（Console確認でき次第）
- [ ] 習慣トラッカー v1設計・実装開始
- [ ] Linuxゲートウェイ永続化（30分）
- [ ] Android運用改善（ブックマーク整理）
- [ ] 家族共有アプリ：Supabaseセットアップ→schema.sql実行→雛形作成（フェーズ1）

---

## ⚡ 直近の決定事項（2026-07-08更新）

- **2026-07-08：ループキャンディ（Loop Candy Puzzle）をGitHub Pagesでリリース**
  - リポジトリ：tubakuro-sys/loop-candy-puzzle／公開URL：https://tubakuro-sys.github.io/loop-candy-puzzle/
  - `push.bat`（add→commit→push自動化）を作成。日本語＋`chcp 65001`の組み合わせで文字化けが起きたため英語表記に変更
  - ゲームオーバー後の広告動画が固定ファイル名`ad.mp4`不一致で流れないバグを修正（実ファイル名の配列からランダム再生に変更）
  - 広告動画の音声デフォルト再生（3段フォールバック）・再生ラグ（動画を720p/低ビットレートに再エンコード＋広告再生中はCanvas描画を停止）を修正
  - 詳細は `02_Projects/ループキャンディ.md` / `04_Logs/Daily/2026-07-08.md` に記録

- **2026-06-16：家族共有アプリ Supabase環境構築に着手（手順1、2完了）**
  - 手順1：プロジェクト `family-app` 作成（Free / Tokyo）。Data API ON・expose new tables ON・auto RLS OFF。DBパスワードはogawa保管
  - 手順2：`schema.sql` 実行成功（全テーブル＋RLS＋プロフィール自動作成トリガー＋my_family_id()）
  - 次回：手順3（Google認証）ブロックCから。C-1=Sign In/Providers→GoogleでCallback URLコピー→Google CloudでOAuth client作成→Client ID/SecretをSupabaseに貼り有効化→URL Configuration
  - 詳細手順は `04_Logs/Daily/2026-06-16.md` に記録

- **2026-06-15：家族共有アプリ（レシピ・タスク）の技術方針決定**
  - 構成：データ=Supabase(PostgreSQL/SQL)、認証=Supabase Auth(Google)、配信=GitHub Pages、形態=PWA、コスト¥0
  - 1プロジェクトに複数アプリ同居＋ family_id で家族ごとに RLS分離（妻側家族も別グループで同居可）
  - DB選定：ogawa の Oracle SQL業務経験を活かし Supabase採用（FirestoreのNoSQLより関係データ・集計・将来性で有利）
  - 写真：Cloudflare R2（10GB無料・egress無料）、足りなければ nas001 に Tunnel配信
  - 実装は Claude Code（Sonnet主力・難所Opus）、設計はチャット。RLS/キーは生成物を目視確認
  - 参考アプリ：CookGo。schema.sql・手順書は Claude生成済

- **2026-06-11：ITパス再受験の方針決定 → 「2〜3週間後に再受験」**
  - 目標日：6/27(土)〜6/28(日)あたり、遅くとも7月上旬（CBTのため枠が取れ次第予約）
  - 再受験タイミングに制限なし（IPA公式：申込みできない期間は特になし／最短で受験日の2日後から可能）
  - ⚠️ 制度変更が控えている：出題分野が「ストラテジ・マネジメント・テクノロジ」→「ビジネス・テクノロジ・セキュリティ倫理」に再編。AI・DX・セキュリティ倫理が強化。新シラバスは2026年夏頃公開、現行制度での受験は年内（〜2026/12/27目安）が最後
  - → 旧3分野ベースの今の知識が新鮮なうちに、年内・早期に取り切る方針。合格後はロードマップ通りAWS SAAへ
  - 勉強法：IPA公式過去問PDF＋新出用語（シラバス6.3/6.4/6.5）の重点暗記（敗因「用語の幅不足」に直結）

- **2026-06-06：ITパスポート受験 → 不合格（505点／合格基準600点）**
  - ストラテジ系445点・マネジメント系525点・テクノロジ系440点（分野別は全クリア）
  - 敗因：用語の幅が不足。Claude生成問題は本試験レベルに届かなかった
  - 次回対策：IPA公式過去問PDFを実際に解く・シラバス6.5/6.4/6.3の新出用語を重点的に覚える
  - 勉強方法変更：Claude道場アプリ→「過去問PDFを貼り付けてClaudeに解説」形式に切り替え
  - 再受験日程・次の資格の方向性はまだ未決定

- **ITパス勉強環境：Claude Desktop（Cowork）＋PDF直接参照に決定（2026-06-07）**
  - PDF毎回アップロード不要・進捗をFilesystem MCPで自動記録できる

- CURRENT_STATUSを分離：来週以降TODO→`TODO_BACKLOG.md`、学習計画→`STUDY_PLAN.md`
- 開発方針：共通モジュール言語 Python（メイン）＋JavaScript（フロントのみ）
- GitHub：無料プランで問題なし
- 家計簿ツール：API課金なし方針（Tesseract OCR＋SQLite）
- Ollama（qwen2.5:7b）をnas001に導入・LAN公開済み
- syarou v9：PDF取込タブ→「➕ 問題追加」タブに全面改修、APIキー不要・JSONペースト方式

---
最終更新：2026-07-08
