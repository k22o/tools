# Javaのメモリの仕組み

```text
Java Process
│
├── Heap
│    │
│    ├── Young Generation
│    │    ├── Eden
│    │    └── Survivor
│    │
│    └── Old Generation
│
└── Heap外
     │
     ├── Direct Buffer
     ├── Metaspace: クラスのメタデータなど
     ├── Thread Stack
     └── その他 Native Memory
```

---

## 1. Heap

**Heap（ヒープ）**は、Javaオブジェクトを格納するためのメモリ領域で、GC（Garbage Collector）の主要な管理対象。
世代別GCでは、Heapを大きく以下のように分けて考える。

```text
Heap
│
├─ Young Generation
│   ├─ Eden
│   └─ Survivor
│
└─ Old Generation
```

Javaでは、作られたオブジェクトの多くが短時間で不要になるという性質があるため、このような管理が行われる。

- Eden領域
   - 新しく作られたオブジェクトは、基本的に **Eden** から割り当てられる。
   - Edenがいっぱいになると、Young Generationを対象としたGCが発生する。
   - 一般に **Young GC / Minor GC** と呼ばれる。

- Survivor領域
   - EdenでGCが発生したとき、まだ生きているオブジェクトはSurvivor領域へ移される
   - 何度かGCを生き残ったオブジェクトは、最終的にOld領域へ移される
- Old領域
   - **Old Generation（Old領域）**は、長期間生存しているオブジェクトを置く領域。

ただし、これは主に**世代別GCの概念モデル**。現在のJavaではG1 GCなどが一般的で、実際のメモリ構造・GCアルゴリズムはこの単純な説明だけではない。

---

## 2. Direct Buffer

Javaには、**Direct Buffer（ダイレクトバッファ）**を作成する仕組みがある。


```java
ByteBuffer buffer =
    ByteBuffer.allocateDirect(1024 * 1024);
```


- Direct Bufferは通常のJavaオブジェクトのデータ領域とは異なり、**Heap外のNative Memory**を利用する
- 主な用途はI/O処理。
- ネットワーク通信などでは、Native側とのデータの受け渡しが発生するため、Direct Bufferを利用することで不要なコピーを減らせる場合がある。
- そのため、Java NIOやネットワークライブラリなどで利用される。
- 「Direct BufferはHeap外だからGCされない」と考えるのは正確ではない。**Java側のオブジェクトはGCの対象になり得るが、実際のバッファ領域はHeapの外にある。**

---


## 3. メモリ不足を調査するときの考え方

「Javaのメモリが足りない」という場合、まずHeapとHeap外を分けて考える。

```text
Javaアプリのメモリ不足
        │
        ├─ Heapが増えている？
        │    ├─ Eden
        │    ├─ Survivor
        │    └─ Old
        │
        └─ Heap外が増えている？
             ├─ Direct Buffer
             ├─ Thread Stack
             ├─ Metaspace
             └─ その他 Native Memory
```

## 4. Garbage COllection

Javaでは、不要になったメモリを解放するため、「ゴミ」を自動で掃除してくれる機能、Garbage Collectionが存在する。
アルゴリズムの詳細は、https://qiita.com/e_tyubo/items/48398391a8ef0f24c1be を参照。<br>
はじめに、メモリの中で「新しい領域 (Eden)」にメモリが割り当てられる。複数回のGCを生き残ったデータは、「古い領域 (OLD)」に移動する。
基本的にはEdenのGCが行われ、それでも足りないときはOLDも含めたメモリのGCが行われる。OLDのGCは対象メモリが多くなるため時間がかかり、
OLDのGCが多いとパフォーマンス悪化につながる。

Java11以上では、G1GCというアルゴリズムが利用されており、基本的にはこれを利用し、必要に応じてチューニングする形が望ましい (https://docs.oracle.com/javase/jp/8/docs/technotes/guides/vm/gctuning/g1_gc_tuning.html)。
