#  ネットワーク系

## VPC (Virtual Private Cloud)

- 論理的に分離された仮想ネットワーク空間を構築する
- サブネット・ルートテーブル・セキュリティグループなどでEC2等のリソースへの通信を制御する
    - ***.***.***.***/16~28  のIPを設定できる
- 用途に応じて、gatewayを設定
    - Internet Gateway: VPCとインターネットの双方向の通信に使う。当public IP addrをAWS側で割り当てる。
    - NAT GateWay: VPCで作成されたprivate subnetから、インターネットへのの単方向通信に使う。
    - VPN Gateway: VPCとオンプレ環境をつなぐ。オンプレ環境側には、Customer Gatewayを設定する必要がある
    - VPC Peering: 独立したVPC間をprivate addrで通信する
    - VPC Endpoint: VPCからAWSのマネージドサービスにアクセスする
        - gateway型: route tableへの設定が必要なタイプ。S3やDynamoDBなど。
        - interface型: security groupで設定。大半のサービスはこっち。
    - Transit Gateway: これらのGatewayを統一的に管理する
- 以下の3つの方法で、アクセス制御する
    - route table: VPC内の通信をroutingするためのルールを記載する
    - security group: Linuxのファイアーウォール(IP tables)とほぼ一緒。許可するポートやプロトコルなどの設定をを作成し、接続対象に関連付ける
    - network ACL: サブネットの単位で、ACLする

## Route53

- ドメイン登録・DNS名前解決を行う
- 加重・レイテンシーベース・地理的近接性など複数のルーティングポリシーやヘルスチェックによるフェイルオーバーに対応

## Elastic Load Balancing

- ロードバランサー。ヘルスチェック・リクエストモニタリングなどの機能を持つ。以下の3つを含む。
    - Application LB: L7レイヤーのロードバランサ、リバースプロキシ型
    - Network LB: L4レイヤーのロードバランサ
    - Classic LB: (昔からあるもの、新規に使う場合は上記を推奨)

## CloudFront

- CDN (Content Delivery Network)
- 世界各地のエッジロケーションを通じてコンテンツを高速配信するCDNサービス

## Global Accelerator

- キャッシュできないコンテンツやHTTPS以外の通信を高速化する

## AWS VPN

- VPN

## 補足

- サーキットブレーカー / 異常検知
   - ※ 専用のサーキットブレーカーサービスは無く、ALB/NLBのターゲットグループヘルスチェック(異常ターゲットへのルーティング停止)や、アプリケーション側のライブラリ実装で代替する