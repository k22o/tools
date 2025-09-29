# IP (ネットワーク層)

OSI参照モデルでいうところの、L3:ネットワーク層に相当

## インターフェース

- **ルータ**
  - L3レイヤでネットワークを接続しパケットをやり取りする
  - IPアドレスで処理する

## プロトコル

- IP (Internet Protocol)
  - インターネット上でのデータパケットの送受信を管理し、データグラムのルーティングと転送を行う。IPv4とIPv6の両方を使用。
- IPSec
  - データ暗号化、VPNなどで利用
- ICMP (Internet Control Message Protocol)
  - IPネットワークでのエラーメッセージや制御メッセージを送受信するためのプロトコル。pingの利用時など
- ARP（Address Resolution Protocol）
  - IPアドレスからネットワーク上のMACアドレスを求める
  - IPv6では利用されない
- RARP (Reverse Address Resolution Protocol)
  - 物理的なMACアドレスからIPアドレスへの逆引きを行う。使用されることは稀。
- ICMPv6
  - IPv6で使われるプロトコルで、ICMP とARPを併せ持つ
- NAT (Network Address Translator)
  - private IPとglobal IPを変換する
- NAPT (IPマスカレード)
  - NAT + Portも付け替えられる
  - portを利用することで、1つのglobalに対して、複数のprivateを紐づけられるようになる
