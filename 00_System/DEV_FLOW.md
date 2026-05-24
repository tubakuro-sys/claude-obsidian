# DEV_FLOW（アプリ開発フロー）
> ogawaが「〇〇アプリ作って」と言ったら、Claudeはこのファイルを読んでそのまま実行する。
> ヒアリング → 技術選定 → 承認 → 作成 → リリースまでClaudeが一貫して進める。

---

## 🛠 開発環境

| 項目 | 内容 |
|---|---|
| 開発フォルダ | `C:\自作ツール\apl\アプリ名\` |
| エディタ | VS Code + Live Server拡張 |
| バージョン管理 | Git（git version 2.54.0） |
| 新規初期化スクリプト | `C:\自作ツール\apl\new_app.bat` |
| 更新リリーススクリプト | `C:\自作ツール\apl\release.bat`（共通版・1個のみ） |
| Claude Code | インストール済み（Proプラン・追加課金なし） |

---

## 🆕 新規アプリ作成フロー

### Phase 1：ヒアリング（このチャットで実施）
Claudeがogawaに以下を確認する：

| 確認項目 | 選択肢 |
|---|---|
| データ保存方法 | localStorage / サーバー（nas001）/ 不要 |
| 利用デバイス | スマホのみ / PCのみ / 両対応 |
| 利用者 | 自分のみ / 家族・友人 / 不特定多数 |
| オフライン利用 | 必要 / 不要 |
| 外部API連携 | あり（何のAPI？）/ なし |

### Phase 2：技術選定（Claudeが提案・説明）
ヒアリング結果をもとにClaudeが以下を選定・説明する：

| 要素 | 判断基準 |
|---|---|
| 言語・構成 | localStorage完結 → HTML/JS単体、複雑 → React、サーバー必要 → Node.js+Express |
| データ保存 | ローカルのみ → localStorage、共有・永続 → SQLite/PostgreSQL（nas001） |
| リリース方法 | localStorage完結 → GitHub Pages、サーバー必要 → nginx + Cloudflare Tunnel |
| ファイル構成 | 原則1ファイル完結（理由がある場合のみ複数ファイル） |

**技術選定の基本方針：**
- 費用ゼロ優先（外部サービス課金は事前に説明・確認）
- シンプル優先（オーバースペック禁止）
- スマホ・PC両対応（レスポンシブ）を標準で含める
- コメントは日本語で記載

### Phase 3：承認
ogawaが技術選定に納得したら作成開始。不明点があれば先に解消する。

### Phase 4：作成（このチャット → Claude Code）
1. **このチャット**でコード設計・生成
2. **Claude Code**（ターミナル）でファイル作成・編集
   ```bash
   cd C:\自作ツール\apl\アプリ名
   claude
   ```
3. VS Code + Live Serverで動作確認

### Phase 5：リリース
`C:\自作ツール\apl\new_app.bat` をダブルクリック → アプリ名入力だけで完了。
詳細は [[00_System/RELEASE_PROTOCOL]] を参照。

### Phase 6：Obsidian記録（Claudeが実施）
- `02_Projects/アプリ名.md` にプロジェクトノートを新規作成
- `00_System/APP_LIST.md` にアプリ情報を追記
- `RELEASE_PROTOCOL.md` のアプリ別リリース状況テーブルを更新
- `CURRENT_STATUS.md` の進行中プロジェクト・決定事項を更新
- `VAULT_MAP.md` のツリーを更新

---

## 🔄 更新フロー

1. `C:\自作ツール\apl\アプリ名\` でファイルを編集
2. VS Code + Live Serverで動作確認
3. クラシックCMD（Windowsキー+R → cmd）から `C:\自作ツール\apl\release.bat` を実行
   → フォルダパスとコミットメッセージを入力するだけで完了

**Claude Codeで修正する場合：**
```bash
cd C:\自作ツール\apl\アプリ名
claude
# 「〇〇を修正して」と日本語で指示するだけ
```

---

## 🤖 Claude の役割分担

| 作業 | このチャット | Claude Code |
|---|---|---|
| ヒアリング・相談 | ✅ | |
| 技術選定・提案 | ✅ | |
| コード設計・生成 | ✅ | |
| ファイル作成・編集 | | ✅ |
| 複数ファイル一括修正 | | ✅ |
| バグ修正・リファクタリング | | ✅ |
| Obsidian記録 | ✅ | |
| リリース手順案内 | ✅ | |

---

## 📋 技術スタック早見表

| 用途 | 技術 | リリース先 |
|---|---|---|
| 個人ツール・計算機 | HTML/CSS/JS（1ファイル） | GitHub Pages |
| データ管理・記録 | HTML/CSS/JS + localStorage | GitHub Pages |
| 家族・友人共有アプリ | HTML/CSS/JS + localStorage | GitHub Pages |
| サーバーデータ保存 | Node.js + Express + SQLite | nas001 + nginx（要Cloudflare Tunnel） |
| リアルタイム・複数人 | Node.js + WebSocket | nas001 + nginx（要Cloudflare Tunnel） |

---

## ⚠️ 未解決課題

- **Cloudflare Tunnel未設定**：サーバーサイドアプリのリリースが未対応
  - 対応時期：サーバーサイド機能が必要なアプリが出たとき
  - 詳細：[[00_System/RELEASE_PROTOCOL]] の未解決課題セクション

---
最終更新：2026-05-24
