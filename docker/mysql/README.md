## 起動方法
2つのどちらかを実行。

**(A) シェルスクリプトの実行**

**(B) Dockerfileの実行** <br>
テーブルの初期化も済ませている。
方法については、以下を参照。
https://www.xlsoft.com/jp/blog/blog/2019/10/09/post-7617/

imageを作成して、コンテナを作成・実行する。

```
$ docker build -t mysql-sample:1.0 .
$ docker container run --name test -d -p 3307:3306 mysql-sample:1.0
```


## アクセス方法
### コンテナ外部からのアクセス
mysqlから接続できる環境下 (mysql or mysql-clientをinstall済) で、以下を実行するとリモートアクセスできる

```
$ mysql -h [ipアドレス] -P 3307 -u root -p
```
なお、ipアドレスは、`ip addr show` のeth0が該当。


## コンテナに入っての作業
当然、以下のようにして、dockerコンテナ内に入ってmysqlを作業することも可能
```
$ docker container attach test
(入った先で)
$ mysql -u root -p
```