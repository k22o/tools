# Elasticsearch

全文検索エンジン。可視化用にkibanaも導入。

## 起動方法

```shell
docker compose up -d
```

http://localhost:5601/ でkibanaのUIを確認できる

## 用語解説

- cluster: Elasticsearch全体の集合（複数ノード可）
- node: Elasticsearchの実行プロセス
- index: データの入れ物（RDBでいうテーブル）
- document: 1件のrecord（RDBでいう行）
- field: ドキュメント内の項目（RDBでいうcolumn）
- shard: インデックスを分割した単位
- replica: シャードのコピー（冗長化・負荷分散）

## 高速検索ができる理由

- データ保存時に インデックス（転置インデックス） を作成
- 検索時に全件スキャンせず、該当語だけを即座に参照
- シャード単位で並列検索が可能

## 備考

現在は認証なし設定にしています
