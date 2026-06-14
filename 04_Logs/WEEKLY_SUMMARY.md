# WEEKLY SUMMARY（週次サマリー）
> 直近4週分のみ保持。それ以前はMONTHLY_SUMMARYに退避。
> デイリーログから集約。起動時には読まない・必要時のみ参照。

---

## 2026-05-24（週）5/24〜5/30

### やったこと
- calorie_app：v7（バーコード・食品検索）→ v8でAI機能追加（栄養素推定・AIレシピ3品提案・AIチャット刷新／Ollama連携）→ v9で3品表示バグ調査開始
- syarou v9：PDF取込タブ→「➕問題追加」タブに全面改修、APIキー不要・JSONペースト方式
- ローカルLLM構築：nas001にOllama導入・qwen2.5:7bでLAN公開（Docker＋OLLAMA_ORIGINS=*）
- toeic_vocab v1リリース（約250語・GitHub Pages）
- 毎日学習ルーティンアプリ作成（React）
- 診断テスト実施（簿記6.5/10・TOEIC3/10・ITパス9/10）→ Claude完結型学習システム設計
- release.bat共通版に刷新・Windows Terminal問題解決（クラシックCMD統一）
- Obsidian大規模リファクタリング：CURRENT_STATUS分離（TODO_BACKLOG・STUDY_PLAN新設）、コマンド一覧をCLAUDE_STARTUPに集約、05_Templates→09_Templates、重複フォルダ整理、MCPツール名問題解決（filesystem小文字）
- MCPタイムアウト対応：obsidian-mcpを設定から削除しFilesystem MCPのみ運用に変更

### 決定事項
- 開発言語：Python（メイン）＋JS（フロントのみ）、GitHub無料プラン、家計簿はAPI課金なし（Tesseract OCR＋SQLite）
- obsidian-mcp削除・AI指示書テンプレートを09_Templatesへ・CURRENT_STATUS分離リファクタリング

### 残タスク
- calorie_app 3品表示バグ修正（Console確認待ち）・syarou v9リリース・習慣トラッカーv1・Linuxゲートウェイ永続化

### ミス
- デイリーログ上書き（4度目）→マージ復元。CLAUDE_STARTUPに「デイリーログ作成の絶対手順」を追加

---

## 2026-05-31（週）5/31〜6/6

### やったこと
- ITパスポート集中学習に方針変更（簿記・TOEICは合格後に着手）・問題を本試験レベルに切替
- 学習結果：6/1 56/79（71%）・6/3 16/20（80%）・6/4 模擬50問27/50（54%）・6/5 前日対策8/9（89%）
- 6/6（金）14時 ITパスポート受験
- 妻の応用情報学習環境をChatGPT Projectsで構築（IPAシラバス7.2・過去問PDF）

### 決定事項
- ITパス前倒し・最優先、以降の全資格演習を本試験レベルで実施
- 資格学習の構成：Claude Project＝PDF置き場、Obsidian＝学習履歴本体、STUDY_PLAN＝司令塔。新資格追加はProject＋Obsidianフォルダ＋STUDY_PLAN更新のみ

### 弱点（学習）
- 計算系（EVM/SPI・損益分岐点・2進数・RAID）、用語区別（公開鍵暗号・MTTR・ITIL・第2正規形・PPM・RFP/RFI・PaaS・SWOT機会）

---

## 2026-06-07（週）6/7〜6/13

### やったこと
- ITパスポート不合格判明（505点／基準600点）。分野別は全クリア・総合95点不足、敗因は用語の幅不足
- 勉強法を過去問PDFベースに切替（Claude生成問題は本試験レベルに届かず）。Cowork＋PDF直接参照が最適と判断
- ITパスシラバスVer.6.5を `06_Memory/ITPASS_SYLLABUS.md` 化
- 再受験方針を決定（6/11）：2〜3週間後（6/27〜28目標、遅くとも7月上旬）。制度変更前の年内取得が合理的

### 決定事項
- ITパス再受験（年内・早期）、合格後はAWS SAAへ
- 勉強環境：Cowork＋IPA公式過去問PDF、進捗を `05_Study/IT_PASSPORT_PROGRESS.md` に記録

### ミス
- セッション冒頭で不合格結果を把握せず「本番頑張って」と発言→デイリーログ未照合

### 残タスク
- CBT再受験枠予約・過去問一問一答練習・弱点9項目再確認

---
最終更新：2026-06-14（5/24週を週全体に拡充、5/31週・6/7週を追加）
