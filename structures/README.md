# structures

## ドメイン駆動設計とその周辺事項
### Layered Archtecuture
データの処理体系を以下の4層に分割し、依存関係が上から下になるようにする。
- UserInterface: 入出力。viewやcontroller、表示のためのHelperなど。
- Application: ドメインを利用して実際の処理を駆動する。
- Domain: ドメイン
- InfraStructure: データベースへのアクセス、メッセージ送信など

### DDDにおける構成要素
- Application:
    -　application service: ドメインの処理を行う
- Domain: 「知識」を表す
    - Value Object: 変化することのない値、属性が同じなら同一
    - Entity: 変化しうる値、属性が同じでも一緒とは限らない (e.g. 人名)
    - Domain Service: ドメインを操作するもの。valueやentity内に含めるのがおかしい場合に作成
    - factory: ドメインを生成するための役割をもったもの。ドメインの生成が複雑な場合に利用する。
    - specification: オブジェクトの評価を行うオブジェクト。serviceなどに書くと流れがわからなくなる場合に利用。
- InftraStructure:
    - repository: データに関する処理を行う
    - O/R mapper: データベースとobjectの相互マッピング

### DIP(依存関係逆転の原則) とヘキサゴナルアーキテクチャ
ベーシックなLayered ArchitectureにDIP (c.f. SOLID原則) を適用すれば、以下の依存関係になる。
こんなイメージ https://terasolunaorg.github.io/guideline/current/ja/Overview/ApplicationLayering.html

- InfraStructure
- UserInterface
- Application
- Domain 

依存関係を逆転させる上で、IntraStructureのインターフェースが、Domainに設定されることになる。
すなわち、  
domain -> repository (in Infra)     
だったものが、  
domain -> repository (in Domain) <- repositoryImpl (in Infra)       
となる。

これによって、知識の実態であるドメインを中核として、

- UserInterface -> Application -> Domain
- Repository -> Domain      

という構造が成り立つ、ヘキサゴナルアーキテクチャやクリーンアーキテクチャに類似した構成となる。