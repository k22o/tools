# SpringBoot

## MVCとWebflux

### MVCとWebfluxの違い
- MVC: MVCは伝統的な同期型のアプリケーション
    - Controllerクラスを利用してリクエストを振りかける
    - resttemplateをりようして同期的に通信する
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
