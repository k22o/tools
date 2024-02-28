# モジュール分割

## 分割方法

- **共通機能分割**
  - 共通して行われる処理をモジュールとして切り出す方式
- データの流れに注目した分割
  - **STS分割**
    - データの入力 (Source)、変換 (Transformation)、出力 (Sink) の3つに分割する
  - **TR分割**
    - トランザクション単位で分割する
- データの構造に注目した分割
  - バッチ処理に適しているとされている
  - **ジャクソン法**
    - 入出力データの構造からプログラムの構造を決定する
    - データの変換過程で、データやそれを扱うモジュールを、基本、連接、選択、反復の4つの要素を組み合わせて表現
  - **ワーニエ法**
    - 入力データの構造を分析してプログラムの構造を決定していく方式
    - データがいつ、どこで、何回使われるかを分析し、これを元に、順次（連結）、選択、繰り返しの3種類の制御構造を組み合わせて制御の流れを決める

## 分割の指標

- **モジュール強度**
  - 単体のモジュールの機能的な強さを7段階で表現。
  - 機能的強度が最も強いほど独立性が高く、好ましい
- **モジュール結合度**
  - モジュール間の関係性の強さを5段階で表現
  - 弱いほど理想的