# Database

## 構成

- mySQL: mySQLのサンプル
- [RDB-SQL](./rdb-sql/README.md): RDB-SQLの説明
- [NoSQL](./nosql.md)

## Databaseの種類

※ 現在では使われないものは除外している

- リレーショナルデータベース (RDB)
  - データの一貫性とトランザクション機能を有する
  - table結合等による、複雑なデータ操作ができる
  - SQLを用いて操作する
-　NoSQL データベース
- ベクトルデータベース

## MigrationTool

スキーマ定義やテーブル更新のコード化、作業履歴の保存などを行うことができる。  
Ruby on Railsなどではデフォルトで利用できるらしい。例は以下の通り。

- sql-migrate
- flyway

## 備考

sample-database: https://dev.mysql.com/doc/index-other.html : sakila

## 参考文献

- https://products.sint.co.jp/siob/blog/nosql
- https://tracpath.com/works/development/nosql_overview/
- https://qiita.com/cocoa-maemae/items/d55c7b53f95425efdce8

