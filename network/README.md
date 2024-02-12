# TCP/IPにおけるプロトコル

## L1:ネットワークインターフェース層のプロトコル/規格

OSI参照モデルでいうところの、L1:物理層やL2:データリンク層に該当

- **Ethernet**
  - LAN（Local Area Network）で最も広く使われている有線ネットワーク技術で、コンピューターやネットワーク機器間でデータを送受信するためのプロトコル
  - かつてはCSMA/CD方式
  - 同軸上でつなぐ方式からスイッチになったことで、Collision対策が不要になり、CMSA/CDも不要に
- **Wi-Fi** (IEEE 802.11)
  - 無線LANで使用されるプロトコルで、ワイヤレスネットワーク上でのデータ通信を規定。
  - CMSA/CD方式
    - セキュリティ -> WPA2, WPA3
- BlueTooth
- ZigBee
  - 家電等への組み込み前提、低消費電力で短距離の無線通信
- LPWA
  - IoTなど、低消費電力・長距離の通信

- **PPP (Point-to-Point Protocol)**
  - ポイントツーポイント接続で使用されるプロトコルで、シリアル通信やダイヤルアップ接続で利用
    - シリアル通信: 伝送路を1本、または2本使用して、データを1ビットずつ連続的に送受信する通信方式
- **PPPoE (Point-to-Point Protocol Ethernet)**
  - PPPをLAN上で実現する

## L2:インターネット層のプロトコル

OSI参照モデルでいうところの、L3:ネットワーク層に相当

- IP (Internet Protocol)
  - インターネット上でのデータパケットの送受信を管理し、データグラムのルーティングと転送を行う。IPv4とIPv6の両方を使用。
- ICMP (Internet Control Message Protocol)
  - IPネットワークでのエラーメッセージや制御メッセージを送受信するためのプロトコル。pingの利用時など
- ARP（Address Resolution Protocol）
  - IPアドレスからネットワーク上のMACアドレスを求める
- RARP (Reverse Address Resolution Protocol)
  - 物理的なMACアドレスからIPアドレスへの逆引きを行う。使用されることは稀。
- NAT (Network Address Translator)
  - private IPとglobal IPの変換
- NAPT
  - NAT + Portも付け替えられる

## L4:アプリケーション層のプロトコル

OSI参照モデルでいうところの、L5:セッション層、L6:プレゼンテーション層、L7:アプリケーション層に該当。

- WWW
- HTTP (Hypertext Transfer Protocol)
- HTTPS (Hypertext Transfer Protocol Secure)
- SSH (Secure Shell)
- FTP (File Transfer Protocol)
  - ファイル転送用と制御用で、20,21番ポートを使う
- DHCP (Dynamic Host Configuration Protocol)
  - ネットワーク上のデバイスにIPアドレスやネットワーク設定情報を自動的に割り当てる
- DNS (Domain Name System)
  - UDPを利用する
- NTP (Network Time Protocol)
  - ネットワーク上のデバイス間で時刻同期を行う
  - UDPを利用する

### メール関係

- POP3 (Post Office Protocol v3)
  - メールサーバからのメールのDL
- SMTP (Simple Mail Transfer Protocol)
  - インターネット上でE-mailを送受信
- IMAP (Internet Message Access Protocol)
  - 電子メールの受信とメールボックスの管理に使用されるプロトコルで、サーバー上のメールボックスにアクセスする
