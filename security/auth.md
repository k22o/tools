# 認証認可

## 認証方法

### パスワードによる認証プロトコル
  
- ユーザ名やPWなどを平文で送信する
  - 後述するCHAPとの対比で、PAP (Password Authentication Protocol) とも
  - telnet、Basic認証
- PWをhashなどで変換して送る
- **Chanllenge/Response認証**
  - 認証の際にサーバから乱数を送り、それをhashに含めてもらう
  - CHAP (Challenge Handshake Authentication Protocol) とも

### 公開鍵ペアを用いた認証プロトコル

- 公開鍵ペアを利用して認証する
- 公開鍵ペアとデジタル署名を使った認証

### ID連携

- 別々の組織で運営されるサービス間で、IDや付随した属性情報を連携する仕組みを**ID連携**と呼ぶ。
- ID連携を利用して、1度ログインしたら他ではログインする必要のない仕組みを、**SSO (Single Sign ON)** と呼ぶ。
- ID連携の実現には、OpenIDとSAMLの2つの方式が主流。

### webにおける認証プロトコル

- **BASIC認証**
  - ユーザ名とPWをBase64変換で送信
- **Digest認証**
  - サーバからのchallengeとPWなどをハッシュ化して送信
- cookieを利用したセッション管理

### 認証サーバ

ネットワークなどアクセスしようとしているユーザーの認証認可を担うする専用サーバを認証サーバと呼ぶ。
**RADIUS**や**LDAP**といった認証プロトコルが利用される。
