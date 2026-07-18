# SpringBoot

## Spring周りの用語
用語 | リンク
-- | --
Spring MVC | https://camp.trainocate.co.jp/magazine/spring-mvc/
REST | https://qiita.com/masato44gm/items/dffb8281536ad321fb08
Spring AOP | https://qiita.com/daisuzz/items/de937816a5d7c9210469
DI | https://qiita.com/kazuki43zoo/items/7a0e96573e930ac934ed
autoconfiguration | https://qiita.com/kazuki43zoo/items/8645d9765edd11c6f1dd

## Beanの生成方法
- `@Configuration`の書かれたJava Config内で、`@Bean`
- Beanを生成できるアノテーション
    - `@component, @Repository, @Service, @Contoroller, @RestController` ...
- Beanを定義するXMLファイル

ref: https://qiita.com/kawakawaryuryu/items/c7d71fd56c497e283198

## DIの方法
- コンストラクタインジェクション (推奨)
- フィールドインジェクション
- セッターインジェクション

ref: https://reasonable-code.com/spring-injection-method/

## thymeleaf関係
### インラインjavascriptへの変数の受け渡し

```
let x = [[${hoge}]];
let y = /* [[${hoge}]] */ "huge";
```
`[[]]`は、XSS対策。yの書き方では、`${hoge}`を読み込めなかったときに、`huge`を返してくれる

## MVCとWebflux

### MVCとWebfluxの違い

- MVC: MVCは伝統的な同期型のアプリケーション
  - Controllerクラスを利用してリクエストを振りかける
  - resttemplate/restclientを利用して同期的に通信する
  - webclientを利用して非同期的にすることも可能
- WebFlux: 
  - RouterFunctionを利用して、リクエストを振り分ける
  - 非同期およびリアクティブなプログラミングをサポート
  - webclientを利用して非同期的に通信する

### webflux独自の内容

- オブジェクトは Mono ないし Flux 型でwrapして利用する
  - Mono : 0または1の要素を持つ非同期のシーケンス
  - Flux : 複数の要素を持つ非同期のシーケンスで、0以上の要素を含む。複数の結果を表現する場合に使用。
- `Mono.zip` を使うことで、複数のリクエストを並列化できる
- blockをすると、そこで同期的になってしまうので、blockはせずに最後まで処理することが望ましい