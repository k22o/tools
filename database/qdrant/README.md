# QDrant

ベクトルデータベース

## 起動方法

以下でimageを作って、docker desktopからrunする。

```shell
docker compose up -d
```

http://localhost:6333/dashboard でUIを表示できる。

## 用語解説

- collection
  - tableに相当する概念
  - 何次元のベクトルで表現するか・ベクトルの距離をどの手段で計算するか (cos類似度など) などを定める
- point
  - レコードに相当する概念
- payload
  - レコードに付与できるJSON。データの情報などを記載する。payloadの内容でフィルタリングできる (ベクトル間距離と併用する形で、ラベル的に使える？)。

## 備考

現在は認証なし設定にしています