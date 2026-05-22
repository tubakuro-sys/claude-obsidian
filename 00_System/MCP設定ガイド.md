# Claude Desktop MCP 設定ガイド

## 設定ファイルの場所

```
C:\Users\（あなたのユーザー名）\AppData\Roaming\Claude\claude_desktop_config.json
```

## 設定内容（コピペ用）

```json
{
  "mcpServers": {
    "obsidian-vault": {
      "command": "npx",
      "args": [
        "-y",
        "obsidian-mcp",
        "C:\\資料\\obsidian\\claude-obsidian"
      ]
    },
    "filesystem": {
      "command": "npx",
      "args": [
        "-y",
        "@modelcontextprotocol/server-filesystem",
        "C:\\資料\\obsidian\\claude-obsidian"
      ]
    }
  }
}
```

## 設定手順

1. `Win + R` キーを押す
2. `%APPDATA%\Claude` と入力してEnter
3. `claude_desktop_config.json` をメモ帳で開く（なければ新規作成）
4. 上の設定内容を貼り付けて保存
5. Claude Desktop を完全に終了して再起動

## 確認方法

Claude Desktop を再起動後、チャット画面の入力欄の近くに
🔧 ツールアイコン が表示されていればMCP接続成功。

## できるようになること

| やること | Claudeへの指示例 |
|---|---|
| ノート作成 | 「今日の会話ログを04_Logsに保存して」 |
| ノート更新 | 「プロジェクトXの進捗を更新して」 |
| ノート検索 | 「obsidianでAIに関するノートを全部探して」 |
| 知識整理 | 「今話した内容を03_Knowledgeにまとめて」 |
| タグ管理 | 「このノートにタグを追加して」 |
| リンク作成 | 「関連ノートへのリンクを追加して」 |

## トラブルシューティング

### ツールアイコンが出ない場合
- Node.js が正しくインストールされているか確認: `node --version`
- パスのバックスラッシュが `\\` になっているか確認
- Claude Desktop を「タスクトレイから完全終了」してから再起動

### npx でエラーが出る場合
obsidian-mcp を事前インストールする:
```
npm install -g obsidian-mcp
```
その場合、設定の `"command"` を `"npx"` から `"obsidian-mcp"` に変更する。
