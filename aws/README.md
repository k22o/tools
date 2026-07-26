# AWS

## ネットワーキング

[network.md](./network.md)

## コンピューティング

[computing.md](./computing.md)

## ストレージ

[storage.md](./storage.md)

## データベース (DBaaS)

[db.md](./db.md)

## 認証・認可

- IAM (Identity and Access Management)
   - AWSリソースへのアクセスを制御する認証・認可サービス。ユーザー/グループ/ロールに対してポリシーで権限を付与する
- Cognito
   - アプリケーションのエンドユーザー向けにサインアップ・サインイン・ソーシャルログインなどの認証・認可機能を提供するサービス。IDaaS

## CI/CD

- CodeBuild: CI用。ソースコードのビルド・テストを行うマネージドサービス。
- CodeDeploy: CD用。EC2/Lambda/ECSなどへのアプリケーションデプロイを自動化するサービス
- CodePipeline: ビルド・テスト・デプロイの一連の流れをワークフローとして自動化するサービス
- Elastic Beanstalk: EC2やRDSなどをまとめて管理し、アプリケーションのデプロイ・運用を自動化
- 

## 連携・メッセージング

- SNS (Simple Notification Service)
   - Pub/Sub型のマネージド通知配信サービス
   - Publisherはメッセージを配信
   - Subscriberは購読対象のメッセージを受信
- SQS (Simple Queue Service)
   - 分散メッセージキュー
   - Producerは生成したメッセージをQueueに送信
   - Consumerは自分でQueueに取得にいく
   - AmazonMQ の後継的立ち位置？
- App Mesh
   - Envoyベースで、サービスメッシュを提供する
- API Gateway
   - APIの作成・公開・管理を行うマネージドサービス。使用量プラン/APIキー単位でのスロットリング(レート制限)機能を持つ
- Event Bridge
   - イベント駆動でサービス間を連携するイベントバス

## モニタリング・ロギング

- CloudWatch: リソースやアプリケーションのメトリクスを収集・可視化(ダッシュボード)し、閾値超過時にアラームを発報するサービス
- CloudWatch Logs: アプリケーション・システムのログを収集・保存・検索するサービス (CloudWatchの一機能)
- X-Ray: マイクロサービス間のリクエストを追跡し、レイテンシやエラー箇所を可視化する分散トレーシングサービス。dynatraceに近い。
- CloudTrail: AWSアカウント内のAPI呼び出し履歴を記録する監査ログサービス

## セキュリティ

- Shild: DDoS攻撃を自動検知・緩和するサービス。全AWS利用者に自動適用され、ネットワーク/トランスポート層(L3/L4)を保護するStandardと、L3/L4に加えWAFと組み合わせてアプリケーション層(L7、HTTPフラッド等)も保護し、24時間対応の専門チーム支援を受けられるAdvancedがある
- WAF: SQLインジェクション等の攻撃遮断に加え、レートベースルールにより送信元IPごとのリクエスト数を制限(レートリミット)できるサービス。API GatewayやCloudFront、ALBに適用可能
- KMS (Key Management Service): データ暗号化に使う暗号鍵を作成・管理するサービス
- Secrets Manager: DB認証情報やAPIキーなどのシークレットを安全に保存し、自動ローテーションするサービス
- Inspector: EC2の脆弱性を管理する (LambdaやRDSはAWSがやってくれるが、EC2は利用者がいろいろと設定するため、脆弱性管理が必要)
- GuardDuty: VPCフローログ・CloudTrail・DNSログなどを機械学習で継続的に分析し、不正アクセスや侵害の兆候を検知するサービス

## ビッグデータ

TBD

## 機械学習

TBD
