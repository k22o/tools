## 疑似要素
疑似要素は、HTML要素を疑似的にcssから付与する。
コーディングで余分なタグを作成することなく、装飾することができる。
`<span>`タグが入るようなイメージ。

たとえば、
```
<p><span>h</span>ello world</p>
```
として、hだけ文字の色を替えたい場合には、first-letterが使える。
これを使えば、
```
<p>hello world</p>
```
で済む。


## 疑似セレクタ
### 補足 (nth-childとnth-of-type)
- 違いはこちらを参照
   - https://techacademy.jp/magazine/25452
- nth-child:
   - 子要素を順番に数えて、対象でない場合は反映しない
   - https://developer.mozilla.org/ja/docs/Web/CSS/:nth-of-type
- nth-of-type
   - 対象でない子要素は外して、順番に数える
   - https://developer.mozilla.org/ja/docs/Web/CSS/:nth-of-type
