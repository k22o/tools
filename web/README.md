# contents
- [ファイル構成](#ファイル構成)
- [web系の用語](#web系の用語)
    - [WebGL](#WebGL)
    - [Reactive Programming](#Reactive-Programming)

# ファイル構成
- storage: ストレージ

# web系の用語
## WebGL
漠然と、次のイメージ。
- 平たくいうと、OpenGLのweb版で、ブラウザ上で動くので、プラグイン等不要
- HTMLのcanvas要素で記述でき、GPUにもアクセスできる
- Javascriptでは、Three.jsなどで、効率よく実装できる

## Reactive Programming
[wikipedia](https://en.wikipedia.org/wiki/Reactive_programming)より引用した、下記のコードが分かりやすい。<br>
通常は、ある変数 `a (= b+c)` を更新するためには、明示的に `a` を更新する必要がある。reactive programming (RP) の場合は、aが自分を構成する変数 `b, c`の変化を検知して、いわばevent-driven的に値を更新する。

```
// 通常
var b = 1
var c = 2
var a = b + c
b = 10
console.log(a) // 3 

// reactive programmingの考え方
// $= が、疑似的な演算子
var b = 1
var c = 2
var a $= b + c
b = 10
console.log(a) // 12
```

この、RPの実現方法の１つとして、functional reactive programming (FRP) が存在する。前述の通り、RPはevent drivenな側面があり、clickイベント同様、非同期的に実行できる。[参考文献](https://ninjinkun.hatenablog.com/entry/introrxja) では、このような非同期データストリームを扱う関数型プログラミング技法だと言及されている。

一方では、RPを実現していると言われる、spring webfluxの特徴には次が挙げられている([参考文献1](https://spring.pleiades.io/spring-framework/docs/current/reference/html/web-reactive.html), [参考文献2](https://news.mynavi.jp/itsearch/assets_c/WF01_001.jpg))。
- non-blocking IOで、スレッド数の削減を実現 (JS的な)
- 変化への反応に基づいて構築されたプログラミングモデル

マクロな観点からは、これらで使われる 'reactive programming'の意味合いは共通しているようにも見えるが、ミクロに見ると、異なっている部分も多い。

