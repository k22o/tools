# CSS テンプレート集

ソースコードの内容は、以下のサイトを参考にしています。
- https://www.udemy.com/course/front-dev-tutorial/

## contents
- animation:
- button:
- layout:
- menu:
- pseudo-element-and-selector:

## 実装について
- scssを利用
- vscode (live server + live Saas Compiler)

## 補足
### scssの記法
一般にクラスを複数指定する際は、次の3つの書き方があります
- `.p1, .p2`: p1またはp2のクラスに対して  
- `.p1 .p2` : p1の子要素をであるp2に対して
- `.p1.p2`  : p1かつp2である要素に対して
scssでは、特に2,3番目について、この空白の有無を反映して、ネストした先の&を書きます。
- & p2
- &p2



