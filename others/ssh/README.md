## SSH

### sshの鍵の作成
```
$ ssh-keygen -t rsa  # RSA暗号で鍵を作成する
$ ls ~/.ssh
```

### ssh鍵の設置
接続先サーバの、`~/.ssh/authorized_keys`に公開鍵を登録
注) sshサーバーは、openSSLなどを導入しておく
```
$ sudo chmod 700 ~/.ssh 
$ cat  ***/***/id_rsa.pub >> ~/.ssh/authorized_keys
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
sftp userName@server.com/files
```


## 参考
- sshキーを複数設定する：https://qiita.com/tmiame/items/e8df003c1d3cc6e2b6b7