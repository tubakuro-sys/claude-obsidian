# APP_LIST（アプリ一覧・URL管理）
> 作成したアプリのURL・リリース状況を一元管理する。
> 新規リリース時はClaudeが自動で追記する。

---

## 📱 公開中アプリ一覧

| # | アプリ名 | 概要 | URL | リリース方法 | 公開日 | バージョン |
|---|---|---|---|---|---|---|
| 1 | calorie_app | カロリー管理アプリ | [開く](https://tubakuro-sys.github.io/calorie_app/calorie_app.html) | GitHub Pages | 2026-05-23 | v10リリース済み |
| 2 | syarou | 社労士学習アプリ | [開く](https://tubakuro-sys.github.io/syarou/syarou.html) | GitHub Pages | 2026-05-25 | v9リリース済み |
| 3 | toeic_vocab | TOEIC英単語アプリ | [開く](https://tubakuro-sys.github.io/toeic_vocab/toeic_vocab.html) | GitHub Pages | 2026-05-30 | v1リリース済み |

---

## 🗂 アプリ詳細

### calorie_app
- **概要**：カロリー管理アプリ（あすけん風UI）
- **URL**：https://tubakuro-sys.github.io/calorie_app/calorie_app.html
- **GitHubリポジトリ**：https://github.com/tubakuro-sys/calorie_app
- **ローカルパス**：`C:\自作ツール\apl\calorie\`
- **データ保存**：localStorage
- **対応デバイス**：スマホ・PC両対応
- **リリース方法**：GitHub Pages
- **公開日**：2026-05-23
- **最終更新**：2026-05-26（v10リリース）
- **AI機能**：nas001（qwen2.5:7b）と連携。料理名→栄養素推定、レシピ提案、AIチャット
- **v10の変更**：3品表示バグ修正・バーコード削除・食材連携・食材記憶・サジェスト・フォーム反映バグ修正
- **プロジェクトノート**：[[02_Projects/calorie_app/01_仕様書]]

### syarou
- **概要**：社労士学習アプリ（穴埋め・四択対応）
- **URL**：https://tubakuro-sys.github.io/syarou/syarou.html
- **GitHubリポジトリ**：https://github.com/tubakuro-sys/syarou
- **ローカルパス**：`C:\自作ツール\apl\syarou\`
- **データ保存**：localStorage
- **リリース方法**：GitHub Pages
- **公開日**：2026-05-25
- **最終更新**：2026-05-26（v9リリース）
- **v9の変更**：「➕ 問題追加」タブ。ClaudeにJSONで問題作成依頼→貼り付けるだけで追加

### toeic_vocab
- **概要**：TOEIC600点対策英単語アプリ（フラッシュカード＋4択）
- **URL**：https://tubakuro-sys.github.io/toeic_vocab/toeic_vocab.html
- **GitHubリポジトリ**：https://github.com/tubakuro-sys/toeic_vocab
- **ローカルパス**：`C:\自作ツール\apl\toeic_vocab\`
- **データ保存**：localStorage（復習リスト）
- **対応デバイス**：スマホ・PC両対応
- **リリース方法**：GitHub Pages
- **公開日**：2026-05-30
- **最終更新**：2026-05-30（v1初版リリース）
- **v1の内容**：TOEIC頻出語約250語収録・フラッシュカード＋4択モード・カテゴリフィルター・復習リスト・ダークモード対応

---

## 🔮 課題・将来構想

### 統合ポータルサイトの作成
- **概要**：作成したアプリを一覧できるポータルサイト
- **ステータス**：📋 アプリが増えたタイミングで着手

---
最終更新：2026-05-30
