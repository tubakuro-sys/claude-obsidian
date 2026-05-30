# CURRENT STATUS（今この瞬間の状況）
> ⚠️ 運用ルール：今週のTODO・未完了依頼・進行中PJ・直近決定事項のみ保持。
> 来週以降のTODO → `TODO_BACKLOG.md` / 学習計画 → `STUDY_PLAN.md`

---

## 🎯 現在の優先事項
- 個人用アプリ開発
- 勉強・技術調査（簿記3級・TOEIC・ITパスポート）
- Obsidian × Claude 第二の脳システムの運用

---

## 🔄 進行中のプロジェクト

| プロジェクト名 | ステータス | 次のアクション |
|---|---|---|
| 簿記3級 今日の問題 | ✅ 初版完成 | 復習リスト機能追加 |
| TOEIC L&R 今日の問題 | ✅ 初版完成 | Part別分類機能追加 |
| Claude資格学習支援AI | ✅ 初版完成 | 日々の学習で活用 |
| 毎日学習ルーティンアプリ | ✅ 初版完成（2026-05-29） | 問題バンク追加 |
| syarou | ✅ v9完成（未リリース） | GitHub Pagesに上げる |
| calorie_app | 🔧 v9デバッグ中 | 3品表示バグ修正 |
| 習慣トラッカー | 📋 設計フェーズ | v1実装開始 |
| ntfy通知サーバー | 📋 計画中 | nas001にDocker導入 |
| 家計簿ツール | 📋 計画中 | Tesseract OCR調査 |

---

## 📋 Claudeへの未完了依頼

- **calorie_app 3品表示バグ修正**
  - `calorie_app_v9_debug.html` をPCブラウザで開きF12→Console確認
  - 「🥗 昼食レシピ」ボタン押下後に `=== AI応答生テキスト ===` の内容を貼ってもらう

---

## 🗓 今週のTODO（5/29〜6/1）

- [x] userPreferencesのコマンド整理・CLAUDE_STARTUP.mdにコマンド一覧追加（2026-05-30完了）
- [x] CURRENT_STATUS分離リファクタリング（2026-05-30完了）
- [ ] Linuxゲートウェイ永続化（30分）
- [ ] Android運用改善（ブックマーク整理）
- [ ] 簿記アプリ：復習リスト機能追加
- [ ] 習慣トラッカー設計・v1実装開始
- [ ] syarou v9 GitHub Pagesリリース

---

## ⚡ 直近の決定事項（2026-05-30）

- CURRENT_STATUSを分離：来週以降TODO→`TODO_BACKLOG.md`、学習計画→`STUDY_PLAN.md`
- 開発方針：共通モジュール言語 Python（メイン）＋JavaScript（フロントのみ）
- GitHub：無料プランで問題なし
- 家計簿ツール：API課金なし方針（Tesseract OCR＋SQLite）
- Ollama（qwen2.5:7b）をnas001に導入・LAN公開済み
- syarou v9：PDF取込タブ→「➕ 問題追加」タブに全面改修、APIキー不要・JSONペースト方式

---
最終更新：2026-05-30
