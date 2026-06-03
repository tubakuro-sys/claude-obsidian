# TODO BACKLOG
> 来週以降・中長期タスクの全量管理。起動時には読まない。
> 「バックログ」「来週のTODO」「それ以降のTODO」と言われたときに読む。
> 週次更新時：来週分を CURRENT_STATUS.md の今週TODOに移し、ここから削除する。

---

## 🗓 来週のTODO（6/2〜6/8）

- [ ] 習慣トラッカー v1完成
- [ ] ntfy通知サーバー構築（nas001 Docker）
- [ ] TOEICアプリ改善（Part別分類）
- [ ] Grafanaダッシュボード（全端末状態可視化）
- [ ] RSSニュースダイジェスト（Claude API×ntfy×cron）
- [ ] 共通モジュール（Python）整備

## 🗓 再来週のTODO（6/9〜6/15）

- [ ] Home Assistant on Docker（nas001）
- [ ] SwitchBot連携・オートメーション作成
- [ ] Windowsデプロイ自動化スクリプト
- [ ] Cloudflare Tunnel構築
- [ ] Tailscale設定（外出先からnas001接続）

## 🗓 それ以降のTODO

- [ ] 統合ポータルサイト（アプリ増えたタイミング）
- [ ] Discord連携・メール通知（共通モジュール経由）
- [ ] 家計簿ツール（Tesseract OCR・レシート読み取り・SQLite）
- [ ] 勉強アプリ：ITパスポートアプリ作成
- [ ] 勉強アプリ：英単語アプリ作成（TOEIC頻出200語）
- [ ] 勉強アプリ：数学・計算アプリ作成
- [ ] 勉強アプリ：応用情報アプリ作成（ITパス合格後）
- [ ] 資格学習環境整備（ITパス合格後）：Claude Project＋Obsidian構成を資格ごとに構築（応用情報→簿記3級→TOEICの順）

---

## 🔧 Obsidian環境最適化TODO

### 現在の課題
- Claude Desktopの長時間使用でMCPタイムアウト（メモリ逼迫）
- モバイルからの記録が手動コピペ運用（自動化未整備）
- デイリーログの記載が薄くなりやすい（セッション終了時の確認不足）
- 学習間違い記録のObsidian自動書き込みが未実装
- nas001へのGitHub push自動化が未実装

### 改善タスク
- [ ] セッション2時間超えでClaude Desktop再起動を習慣化（運用ルール徹底）
- [ ] nas001 Pythonスクリプトによる自動記録・GitHub push自動化
- [ ] 学習間違い記録のObsidian自動書き込み設計
- [ ] モバイル運用改善：nas001スクリプトでコピペ不要にする
- [ ] デイリーログテンプレート作成（Obsidian Templater活用）
- [ ] VAULT_MAP.md・APP_LIST.mdの定期メンテナンス習慣化
- [ ] 週次サマリー（WEEKLY_SUMMARY.md）の自動生成フロー設計

---
最終更新：2026-05-30
