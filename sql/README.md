# Database

## DBの種類

- SQL-RDB
  - データの一貫性とトランザクション機能を有する
  - table結合等による、複雑なデータ操作ができる
  - e.g. mySQL, Oracle Database
- NoSQL
  - 通常のSQL (RDB) 以外の総称
  - 高速大容量処理
  - 画像やJSONの処理に優れる
  - リレーションを持たない
  - スケールアウトが容易
  - SQLに劣るデータ一貫性
- NewSQL
  - RDBとNoSQLのいいとこどりをめざす
    - スケールアウト、分散DB化ができるといった、拡張性や柔軟性
    - SQLが利用でき、トランザクションをサポート
  - 例：
    - Google Cloud Spanner
    - Cochroach DB
    - TiDB

## NoSQLの分類

- **key-value型**
  - keyとvalueの1対1管理による高速処理
  - 結合処理はできず、複雑な検索は不向き
  - 例：Redis
    - インメモリデータストア
    - 高速処理が可能で数百万件/秒の処理が可能
    - キャッシュ・チャットメッセージなどの用途
- **column指向型**
- 1つのkeyに、複数のcolumnが対応する 
- RDBは行 (1データ) 単位が得意だが、column指向型は列単位の処理が得意
- 例：Cassandra
- **graph型**
  - node, property, edgeから成り、ネットワーク状データの保存に適する
  - 例；Neo4j
- **Document型**
  - JSONやXMLでデータを保存する
  - 例：MongoDB
    - JSON形式でデータを保存できる

## MigrationTool
スキーマ定義やテーブル更新のコード化、作業履歴の保存などを行うことができる。  
Ruby on Railsなどではデフォルトで利用できるらしい。例は以下の通り。

- sql-migrate
- flyway

## sqlの設計

### DBの3層スキーマ

- 外部スキーマ: ユーザーから見た定義。出力されるデータやビュー。
- 概念スキーマ: データの関連性などを示す設計図。
- 内部スキーマ: 概念スキーマをDBにいれるための情報。物理設計時に決定される。

### 設計のフェーズ

- 概念設計: エンティティ（テーブル）と関連（リレーション）にデータを落とし込む。
- 論理設計: データ型の定義や正規化を行い、ER図を作成する。 (概念と一緒くたに論理設計と呼ばれることも)
- 物理設計: テーブル定義・インデックス定義・DBの構成検討などを行う

### 制約

- check 制約: 値が10以上である必要がある、など
- not null 制約
- unique 制約
- primary key 制約: not null + unique
- foreign key 制約
  - no action (default): 反した場合は、エラーを出して何もしない
  - cascade: 参照する側とされる側を連動させる
  - set null: 対応行がなくなった参照列にnullを設定
  - set default: 対応行がなくなった参照列にdefaultを設定

## 正規化と演算
- [正規化](./normalization.md)
- [演算](./calculation.md)


## SQLの仕組み

- view
  - 仮想的なテーブル
- cursor
  -1度に1行ずつデータの検索と操作をできるようにする仕組み
  - プログラム言語からSQLを呼ぶ際に使われる。COBOLなど昔の言語では1行ずつしか処理できなかったため
- trigger
  - あるテーブルを更新した際に、連動して別のテーブルも更新する仕組み
  - 後述するストアドプロシージャの実装の１つ。
- sequence
  - 独自に連続したデータを作成する仕組み
- stored procedure: DBMS内に保存されている事前にコンパイルされたSQLコードの塊のこと。以下の特徴がある。
  - 再利用性: データベース内に保存されており、アプリケーションから呼び出すことができ、同じロジックを複数の場所で再利用できる。
  - パフォーマンス: データベースにプリコンパイルされて保存されるため、実行速度の向上と、ネットワークトラフィックの削減に寄与する。
  - セキュリティ: データベース内で実行されるため、適切なアクセス権の設定によりセキュリティを確保できる。
  - データ整合性の強制: スデータ整合性を強制するための条件やビジネスルールを実装できる

## DBMS

[Database Management System](./dbms.md)

## 備考

sample-database: https://dev.mysql.com/doc/index-other.html : sakila

## 参考文献

- https://products.sint.co.jp/siob/blog/nosql
- https://tracpath.com/works/development/nosql_overview/
- https://qiita.com/cocoa-maemae/items/d55c7b53f95425efdce8

