# NoSQL

- 高速大容量処理
- 画像やJSONの処理に優れる
- リレーションを持たない
- スケールアウトが容易 (分散データベースとして扱いやすい)
- SQLに劣るデータ一貫性

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

## 結果整合性

- NoSQLでは、通常のRDBMSと異なり、一貫性が保証されないことが多い
- かわりに、結果整合性が重視される
    - 時間が経てば必ずストレージに最新情報が反映される
- 結果整合性を含めたNoSQLのデータベースの特性を、BASE特性と呼ぶ (ACID特性のかわり)
    - BA (Basically Availability): 基本的に利用可能
    - S (Soft-state): 厳密ではない状態遷移
    - E (Eventually Consistent): 結果整合性
