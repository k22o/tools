# Web関連技術

- [ファイル構成](#ファイル構成)
- [web系の用語](#web系の用語)
  - [WebGL](#WebGL)
  - [webでのイベント発生順序](#webでのイベント発生順序)
- [storage](./storage/): 別ファイル
- [header](header.md): 別ファイル

## WebGL

漠然と、次のイメージ。

- 平たくいうと、OpenGLのweb版で、ブラウザ上で動くので、プラグイン等不要
- HTMLのcanvas要素で記述でき、GPUにもアクセスできる
- Javascriptでは、Three.jsなどで、効率よく実装できる

## webでのイベント発生順序

webでのイベント伝播は以下の流れで行われる

- capture phase
  - 最上位のwindow objectから下位の要素にイベントを伝播
  - eventListerを使う際に、オプションを指定するとこちらでイベントを検知できる
  - reactだと、`onClickCapture` などのメソッドが用意されている
- target phase
  - JS等で指定したターゲットでイベントが発生
- bubbling phase
  - 下位の要素で発生したにイベントを上位に伝播
  - 一般に、`onclick`等のイベントはここで発生
  - 伝播を停止させる場合は、`stopPropagation`を使う
     - イベント規定動作の停止には、`preventDefault`を使う
  