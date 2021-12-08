# SSH

### sshの鍵の作成
```
$ ssh-keygen -t rsa  # RSA暗号で鍵を作成する
$ ls ~/.ssh
```

### ssh接続する
```
$ ssh server.com 
または
$ ssh userName@111.111.111.111 #ユーザを指定する場合
```
なお、踏み台サーバー等を経由する際は、認証情報を引き継ぐために、`-A` を用いる

```
$ ssh server1.com
$ ssh -A server2.com
```

### ファイルを転送する
ssh接続下では以下の２つ。
SSL/TLSなら、ftpsなんかも使える。
ftpは暗号化なしのため、使わないこと。

scpの場合

```
scp file.txt userName@server.com:~/files
```

sftpの場合
- ファイル名などは対話的に送信
```
scp file.txt userName@server.com:~/files
```

