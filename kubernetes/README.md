## Kubernetesの概念
Kubernetesはコンテナ化されたワークロードやサービスを管理するプラットフォーム。
https://kubernetes.io/ja/docs/concepts/overview/components/

### Cluster
- 1つのKubernetesクラスタには、以下の要素が存在する
   - Control Plane Component
   - Node (複数)

#### Controle Plane Component
- クラスタの全体的な決定 (スケジューリングなど) を行う。
- 以下のComponentが存在している
    - kube-apiserver: 、Kubernetes APIを外部に提供する。FE面に相当。
    - etcd: クラスタ情報を保存する、Key-Valueストア。
    - kube-scheduler: スケジューラ。Pod (※後述) にNodeが割り当てられているかなどチェックする。
    - kube-controller-manager: 複数のコントローラープロセスを実行する
       - コントローラー: クラスターの状態を監視し、必要に応じて変更を加えたり要求したりする制御ループ
       - 制御ループ: あるシステムの状態を制御する終了状態のないループ 
    - cloud-controller-manager : ラウドプロバイダー固有のコントローラーのみを実行する。

#### Node
- Clusterは、複数のNode (Worker Machine) とを有する。
- Node内には、以下のコンポーネント (Node Components)が存在している
  - Kubelet: Nodeで実行されるエージェント
  - KubeProxy: ノードのプロキシ
  - Container RunTime: コンテナの実行を担当するソフトウェア (e.g. docker)

### Pod
- [公式サイト](https://kubernetes.io/ja/docs/concepts/workloads/pods/pod-overview/)
- Kubernetesアプリケーションの基本的な実行単位 (= インスタンス)。Nodeに割り当てられる。
- Podには、次の2種類がある
    - 単一のコンテナを稼働させるPod
    - 協調して稼働させる必要がある複数のコンテナを稼働させるPod

### Controller
- 