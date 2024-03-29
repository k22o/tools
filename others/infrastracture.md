# インフラの基礎知識

## サーバー

### 種別

- ラックマウント型
- タワー型

### CPU関連の用語

- ソケット数: CPUの搭載数
- 動作周波数: クロック/second
- コア数: 主要演算回路の数

### メモリ関連の用語

- スロット数：マザーボードにある、メモリを刺せる口の数
- ECCメモリ: 誤り訂正符号(ECC) がある、メモリ
- ランク: DRAMからデータを入出力する単位。1R = 64bit

### ディスク種別

- SATAハードディスク: 通常PCで利用されるHDD。8時間/dayの稼働用途で安い
- SASハードディスク: 常時稼働想定。高い。
- FCハードディスク: 高性能で高速。エンタープライズ向け。
- SSD: HDDに比べて高速だが、高価

## ネットワーク

### スイッチ

- L2/L3スイッチ：いわゆるスイッチングハブ。送信先を制御する。細かい設定が必要なら、intelliJent版、ただネットにつなぐだけなら、non-intellijent版。
- L4/L7スイッチ：いわゆるロードバランサ付きのL3スイッチ。
  - L4 -> TCP/UDPポートを見て送り先を選択
  - L7 -> URLを見て送り先を選択

## 構成

- **DAS (Direct Attached Storage)**
  - ストレージをPCに直接接続
- **NAS (Network Attached Storage)**
  - ネットワーク上にストレージを配置
- **SAN (Storage Area Network)**
  - LANから独立した、ストレージ専用のネットワークを構築し、ストレージを配置
  - **FC (ファイバーチャネル)** などのプロトコルがインターフェースに利用される
