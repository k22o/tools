# Java

## sampleの中身

- StreamSample.java: StreamAPIの使い方
- ThreadSample.java: threadの使い方
- OptionalSample.java: Optionalの使い方

以下で実行

``` bash
$java hoge.java
```

## Javaのノウハウ

### メモリ

[java-memory.md](./java-memory.md)

### heapdump

Javaが利用するメモリのうち、heapdumpと呼ばれる領域がある。
このheapdumpの中を確認する方法は、
1. heapdumpを取得する (https://qiita.com/strsk/items/ae203cf056d66eff1490)
    - heapdumpは、`.hprof`という拡張子になっている
    - ダウンロードしたデータに拡張子がないばあいは、ファイル名を修正して、上記の拡張子を付与する
1. 解析用のソフトで中身を確認する(https://www.eclipse.org/mat/)
