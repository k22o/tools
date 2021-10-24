
## block要素とinline要素
- block要素：1つの固まりとして認識される。改行される。
    - 例：div, table, p, form h1 ...
    - margin (タグの外) や padding (内側の余白) を設定できる
    - width や height を指定できる
    - block要素内に、block要素もinline要素も入れることができる
    - その他使えるプロパティ: text-align ...
- inline要素：文章の一部として扱われる。改行されない。
    - 例：a, img, input, span ...
    - margin は左右だけ設定でき、paddingはちょっと使いにくい
    - 基本的にはwidthやheightは設定できない (img, inputなどの例外あり)
    - inline要素内には、block要素は入れられない

それぞれ、cssで要素を変更することができる
    - display:block
    - display:inline
    - display:inline-block
