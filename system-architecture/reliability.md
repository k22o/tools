# 信頼性設計

## 概念

- **Fault Avoidance**
  - 障害自体の発生を極力避ける
  - システム構成要素に故障しにくいものを選ぶ
- **Fault Tolerance**
  - 障害が発生しても、あらかじめ定められた状態を維持する
  - e.g. 多重化など
- **Fault Masking**
  - システム内のエラーや障害を隠蔽することで、それらが外部に影響を与えないようにする仕組み
- **Fail-Safe**
  - システムの一部が故障しても、危険が生じないような仕組みづくり
- **Fail Over**
  - ステムの障害が発生した場合に自動的に別のバックアップシステムに切り替える仕組み  
- **Fail-Soft**
  - 故障した場合には、性能を低下させてでも残りの稼働を維持して前面停止にならないようにする
  - 以下のような仕組みが挙げられる
    - **Fall-Back**:  何らかの問題が発生した際に、機能や性能を制限して動かし続けること。
- **Fool Proof**
  - 誤って操作しても重大な事故を招かないよう設計する
  - 「愚か者(fool) でも、耐久できる」

## 障害メトリクス

- **MTBF (Mean Time Between Failures, 平均故障間隔)**
  - 故障するまでの時間
- **MTTR (Mean Time Through Repair, 平均復旧時間)**
  - 故障してからシステムが復旧するまでの時間
- **MTRS (Mean Time to Restore Serivce, 平均サービス復旧時間)**
  - 故障してからシステムが復旧しサービスが使えるようになるまでの時間
- **MTBSI (Mean Time Between Sytem Incident, 平均システムインシデント間隔)**
  - 一度故障してから次に故障するまでの時間。MTBF + MTRS