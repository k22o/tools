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
Java11以上では、G1GCというアルゴリズムが利用されており、基本的にはこれを利用し、必要に応じてチューニングする形が望ましい (https://docs.oracle.com/javase/jp/8/docs/technotes/guides/vm/gctuning/g1_gc_tuning.html)。


