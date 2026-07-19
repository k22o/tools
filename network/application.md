# application層

## プロトコル

- WWW
- HTTP (Hypertext Transfer Protocol)
- HTTPS (HTTP over SSL/TLS)
  - 暗号化に、SSLの後継であるTLSを利用する
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

メール関係

- POP3 (Post Office Protocol v3)
  - メールサーバからのメールのDL
- SMTP (Simple Mail Transfer Protocol)
  - インターネット上でE-mailを送受信
- SMTP-AUTH  
  - SMTPサーバーがSMTPクライアントをIDやPWで認証できるようにしたもの
  - 587ポート
- IMAP (Internet Message Access Protocol)
  - 電子メールの受信とメールボックスの管理に使用されるプロトコルで、サーバー上のメールボックスにアクセスする

## HTTPSの仕組み

HTTP通信をSSL/TLSで暗号化したもの。通信の暗号化に加え、サーバの正当性の証明、データ改ざんの検知を実現する。

1. **TCPコネクションの確立**: 3ウェイハンドシェイクによりTCP接続を確立する
2. **TLSハンドシェイク**
   - クライアントとサーバが対応する暗号方式を確認し合う
   - サーバがデジタル証明書 (公開鍵を含む) をクライアントに送付し、クライアントは認証局 (CA) の署名をもとに証明書を検証してサーバのなりすましでないことを確認する
   - 公開鍵暗号方式を用いて、以降の通信で使う共通鍵 (セッション鍵) を安全に共有する
3. **暗号化通信**: 共有した共通鍵を用いて、以降のHTTP通信本体を暗号化してやり取りする

公開鍵暗号方式は処理コストが高いため鍵交換のみに用い、実際のデータ本体の暗号化には処理の軽い共通鍵暗号方式を用いる (ハイブリッド暗号方式)。

## メール関係のセキュリティ

送信元メールアドレスの詐称 (メールスプーフィング) を防ぎ、メールの正当性を検証するための仕組み。

- **SPF (Sender Policy Framework)**
  - 送信元ドメインのDNSに、そのドメインからのメール送信を許可するIPアドレスをTXTレコードとして登録しておく。受信側はメールの送信元IPアドレスがそのリストに含まれるかを検証することで、なりすましを検知する。
- **DKIM (DomainKeys Identified Mail)**
  - 送信サーバがメールにデジタル署名を付与し、受信側は送信元ドメインのDNSに公開されている公開鍵を使って署名を検証する。これにより、送信元の正当性と通信経路上での改ざんの有無を確認できる。
- **DMARC (Domain-based Message Authentication, Reporting, and Conformance)**
  - SPFやDKIMの検証結果をもとに、認証に失敗したメールをどう扱うか (受信・隔離・拒否) をドメイン所有者がポリシーとして定義する仕組み。認証結果のレポートを受け取ることもできる。

