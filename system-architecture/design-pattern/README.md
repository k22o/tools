# オブジェクト指向におけるデザインパターン (GoF)

古いものも多い、というか、クラスで切り分けず、メソッドレベルでとどめていい話も多分にある。

## 一覧

- 生成（Creational）デザインパターン:
  - Abstract Factory
  - Builder
  - Factory Method
  - Prototype
  - Singleton
- 構造（Structural）デザインパターン:
  - Adapter
  - Bridge
  - Composite
  - Decorator
  - Facade
  - Flyweight
  - Proxy
- 動作（Behavioral）デザインパターン:
  - Chain of Responsibility
  - Command
  - Interpreter
  - Iterator
  - Mediator
  - Memento
  - Observer
  - State
  - Strategy
  - Template Method
  - Visitor

## 生成デザインパターン

### Abstract Factory

- https://ja.wikipedia.org/wiki/Abstract_Factory_%E3%83%91%E3%82%BF%E3%83%BC%E3%83%B3

### Factory Method 


### その他

- Builder
  - 一般的に使われるbuilder
- Singleton
  - 一般に使われるシングルトンに同じく
- Prototype
  - あんま使わないし省略

## 構造デザインパターン

### Composite

再帰構造 (木構造) を表すためのパターン。以下のクラスによって実現する。

- 枝を表すクラス
- 葉を表すクラス
- 共通インターフェース

### Decorator

### Flyweight

計算資源の浪費を減らすために、別々の場所で同じインスタンスを使用する際に、1つのインスタンスを再利用する仕組みを作る。

- 対照のクラスA
- クラスAを生成するfactoryB

を作成する。Aを作る場合はBから呼び出す。1度作成したAは、Bの中にプールしておくことで、2回目からはそれが利用される。

### Proxy

### その他

- Adapter
  - いわゆるwrapperクラス
  - 互換性のないIFを組み合わせるためのもの
- Bridge
  - https://www.techscore.com/tech/DesignPattern/Bridge
- Decorator
- Facade
  - 複雑な処理を隠ぺいする
  - クラスAの処理をして、Bの処理をして条件に応じてCをして...のような場合に、それらを実行するクラスZを用意しておく
  - 利用者は、クラスZを使うだけでOKとなる
- Proxy

## 動作デザインパターン

### Strategyパターン

複雑なロジック部分やアルゴリズム (=戦略) を別クラスとして切り出す。
例えば、`AlgorithmBase` クラスを継承した、`AlgorithmTypeA`, `AlgorithmTypeB`, `AlgorithmTypeC`。
があるとする。その場合、`AlgorithmBaseクラスを引数`としておけば、各サブクラスへの取り換えが用意になる。 

### Command

命令と動作をオブジェクトで表現することで、リクエスト依頼処理と実装処理を分離することができる。
コマンドが独立したオブジェクトなので、配列で複数のコマンドを管理することで、キューイング・非同期処理・スケジューリングが可能となる。

1. 処理をメソッドとして持つ、Commandクラスを定義 (実装処理)
2. リクエスト依頼をするクラスを定義、後述する3,4を記載する 
3. Commandオブジェクトを生成
4. Command.Execute()を実行する

### Visitor

### その他

- Chain of Responsibility
  - 一つのコマンドオブジェクトと一連の処理オブジェクトから構成される。各処理オブジェクトは、処理できるコマンドオブジェクトの種類と、自身が処理できないコマンドオブジェクトをチェーン内の次の処理オブジェクトに渡す方法を記述する情報を保持する。また、新たな処理オブジェクトをチェーンの最後に追加する機構を備える。
- Interpreter
  - これはなんか微妙なので略
- Iterator
  - 一般のiteratorに同義
- Mediator
  - 複数の条件に応じてクラスが絡み合っている場合に、指令塔となるクラスを作ってそこで中央集権的に管理する
- Memento
  - 状態を持つクラスとそれの状態をrestoreする仕組み、のことだが、実装依存なのでパターン呼ぶには微妙な気がする
- Observer
  - Pub-Subなどの文脈でいう、observerに同義
- State
  - これを使うよりも、if文とかの方が、可読性も凝縮度もテスト性も高いので、無視
- Template Method
  - いわゆる、抽象メソッドに同義
- Visitor

## 参考文献

- https://www.techscore.com/tech/DesignPattern/
- https://qiita.com/usaitoen/items/ed0337dbbb43052b3000
- https://qiita.com/irxground/items/d1f9cc447bafa8db2388