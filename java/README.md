# Javaのサンプルコード
## contents
- StreamSample.java: StreamAPIの使い方
- ThreadSample.java: threadの使い方
- <todo 排他制御とか />

## 実行方法
- java8以上
- 以下のコマンドで実行 (普通はjavacだと思うけど)。
```
$ java hoge.java

```

# Javaのノウハウ
## Garbage Collection
Javaでは、不要になったメモリを解放するため、「ゴミ」を自動で掃除してくれる機能、Garbage Collectionが存在する。
アルゴリズムの詳細は、https://qiita.com/e_tyubo/items/48398391a8ef0f24c1be を参照。<br>
はじめに、メモリの中で「新しい領域 (Eden)」にメモリが割り当てられる。複数回のGCを生き残ったデータは、「古い領域 (OLD)」に移動する。
基本的にはEdenのGCが行われ、それでも足りないときはOLDも含めたメモリのGCが行われる。OLDのGCは対象メモリが多くなるため時間がかかり、
OLDのGCが多いとパフォーマンス悪化につながる。

Java11以上では、G1GCというアルゴリズムが利用されており、基本的にはこれを利用し、必要に応じてチューニングする形が望ましい (https://docs.oracle.com/javase/jp/8/docs/technotes/guides/vm/gctuning/g1_gc_tuning.html)。


### heapdump
Javaが利用するメモリのうち、heapdumpと呼ばれる領域がある。
このheapdumpの中を確認する方法は、
1. heapdumpを取得する (https://qiita.com/strsk/items/ae203cf056d66eff1490)
    - heapdumpは、`.hprof`という拡張子になっている
    - ダウンロードしたデータに拡張子がないばあいは、ファイル名を修正して、上記の拡張子を付与する
1. 解析用のソフトで中身を確認する(https://www.eclipse.org/mat/)
