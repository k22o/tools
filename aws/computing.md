# computing

## IaaS

### EC2

- 仮想サーバーの種類について...
   - インスタンスタイプ: リソースの情報を記載したもの。インスタンスファミリーやインスタンスサイズの組み合わせで表現される
   - インスタンスファミリー: 汎用・コンピューティング最適化(バッチや危害学習など)・めもり最適化 (DBなど) などのいくつかのタイプがある
- 一般に、同じハードウェア上で複数の仮想サーバーが動くので、ノイジーネイバー問題がある
    - ハードウェ専有オプションで、ハードウェアを独占して、これを回避できる
- Availability Zoneの配置戦略を選ぶことができる
    - cluster: 単一AZ内の近い位置
    - spread: 別々のハードウェアに分散。AZを跨いて展開できる。
    - partition: 
- IAMによる権限認証で、他のAWSにアクセスできる

### AutoScaling

-  負荷増加などに対して、インスタンスをスケールアウトする

## CaaS (Container as a Service)
 
### Elastic Container Service (ECS)

- AWS独自のコンテナオーケストレーションサービス
- 事前に作成したコンテナイメージを、ECRやDockerhubにアップして使う

### Elastic Container Registry (ECR)

- AWS独自のdocker registory

### Elastic Kubernetes Service (EKS)

- マネージドKubernetesサービス
- kubernetesで大量のcontainerを利用する用途がなければ、ECSを利用    

## FaaS,その他

### Lambda (Function as a Service)

- サーバーを意識せずコードを実行できるサーバーレスコンピューティングサービス (FaaS)
- ZIP圧縮 or dockerImageの形式で、コードをデプロイ

### AWS Batch

- 大量のバッチジョブをEC2/Fargate上でスケジューリング・実行するマネージドバッチ処理サービス

### Step Functions

- ステートマシーンを使って、分散アプリケーションやマイクロサービスをオーケストレーションする
