# TCP/IPにおけるプロトコル

## ネットワークインターフェース層のプロトコル/規格

[datalink.md](./datalink.md)

## インターネット層のプロトコル

[ip.md](./ip.md)

## アプリケーション層のプロトコル

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
- SMTP-AUTH  
  - SMTPサーバーがSMTPクライアントを認証できるようにしたもの
  - 587ポート
- IMAP (Internet Message Access Protocol)
  - 電子メールの受信とメールボックスの管理に使用されるプロトコルで、サーバー上のメールボックスにアクセスする
