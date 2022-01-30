# 目次
- [Database](#Database)
    - [SQL(RDB)](##SQL (RDB))
    - [NoSQL](##NoSQL)
        - [key-value型](###key-value型) 
        - [column指向型](###column指向型)
        - [graph型](###graph型)
        - [Document型](###graph型)
    - [NewSQL](##NewSQL)
- [Migration Tool](#MigrationTool)



# Database 
## SQL (RDB)
以下の特徴を持つ
- データの一貫性とトランザクション機能
- table結合等による、複雑なデータ操作

以下のようなソフトウェアがある。
- mysql: フリーソフト。定番。
- oracle database: 有償ソフト。セキュリティ高

## NoSQL
通常のSQL (RDB) 以外の総称。以下の特徴を持つ。
- 高速大容量処理
- 画像やJSONの処理に優れる
- リレーションを持たない
- スケールアウトが容易
- SQLに劣るデータ一貫性

以下のような4種類がある。
- key-value型
- column指向型
- graph型
- Document型

### key-value型
- keyとvalueの1対1管理による高速処理
- 結合処理はできず、複雑な検索は不向き
- 例：Redis
    - インメモリデータストア
    - 高速処理が可能で数百万件/秒の処理が可能
    - キャッシュ・チャットメッセージなどの用途

### column指向型
- 1つのkeyに、複数のcolumnが対応する 
- RDBは行 (1データ) 単位が得意だが、column指向型は列単位の処理が得意
- 例：Cassandra

### graph型
- node, property, edgeから成る    
- ネットワーク状データの保存に適する
- 例；Neo4j

### Document型
- JSONやXMLでデータを保存する
- 例：MongoDB
    - JSON形式でデータを保存できる

## NewSQL
- RDBとNoSQLのいいとこどりをめざす
    - スケールアウト、分散DB化ができるといった、拡張性や柔軟性
    - SQLが利用でき、トランザクションをサポート
- 例：
    - Google Cloud Spanner
    - Cochroach DB
    - TiDB    

## 参考文献
- https://products.sint.co.jp/siob/blog/nosql
- https://tracpath.com/works/development/nosql_overview/


# MigrationTool
スキーマ定義やテーブル更新のコード化、作業履歴の保存などを行うことができる。<br>
Ruby on Railsなどではデフォルトで利用できるらしい。

製品例：
- sql-migrate
- flyway



## 参考文献
- https://qiita.com/cocoa-maemae/items/d55c7b53f95425efdce8
