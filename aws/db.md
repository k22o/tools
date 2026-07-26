# DB

## RDB

### RDS (Relational Database Service)

- MySQL, PostgreSQLなどをサポート

### Aurora

- 内部アーキテクチャをAmazonが再設計したRDB

## NoSQL

### Dynamo DB

- CAP定理のうち、APを重視し、水平スケーラビリティに優れる
- 項目や属性が不要な、スキーマレスのテーブル
- キー・バリュー型

### ElastiCache

- Redis/Memcached互換のインメモリキャッシュサービス

### DocumentDB

- MongoDB互換のドキュメント指向フルマネージドDB

## ベクトル検索エンジン

- OpenSearch Service: 全文検索エンジンだが、ベクトルエンジン(k-NN)によりベクトル検索(embeddingの類似検索)にも対応。RAG用途などで利用される
- ※ 専用のベクトルDBサービスは無く、Aurora/RDS for PostgreSQLへのpgvector拡張導入や、DocumentDB/MemoryDBのベクトル検索機能で代替することも可能