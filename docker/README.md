## コンテンツ
適宜、必要なdocker imageをpullしておくこと。
- python: python3環境の構築
- web-server: ウェブサーバーの構築
- mysql: mysqlサーバーの構築


## メモ
昨今は、docker desktopでできるので、そこまでコマンドいらん。


## Dockerの基本コマンド

image関連
```
$ docker image ls            # 一覧を取得
$ docker image pull [target] # リモートから取得
$ docker iamge push [target] # リモートにプッシュ
$ docker iamge rm [target]   # イメージの削除 
```

container関連
```
$ docker container run [target]   # コンテナの起動
$ docker container ls -a            # 一覧を取得
$ docker container stop [target]  # 停止
$ docker container start [target] # 停止したものを再開
```

## サンプルコード

### 基礎：起動から消去まで
(1) "test"という名前で起動し、中で作業する (`-it`をつけると中で作業できる)
```
$ docker container nun --name test -it ubuntu 
```
(2) コンテナから出る
```
$ exit
```
(3) コンテナの状態を確認する (exitedになっているはず)
```
$ docker container ls -a
```
(4) コンテナを起動する (start or restart)
```
$ docker container start test
```
(5) コンテナの中に入る
```
$ docker container attach test
```
(6) コンテナを消す
```
$ exit
$ docker container rm test
```

### 外部からアクセスされるポートを作る
例は、`web-server` を参照
- `-p`で、外部からアクセスされるポートを指定。
    - 左側は外部に公開するポート番号
    - 右側はコンテナのポート番号
- `-d`で、バックグラウンド起動
```
docker container run --name test -d -p 8080:80 nginx
```

### 永続化する
例は、`web-server` を参照。<br>
以下のコマンドを実行することで、コンテナ内で作成したファイル等を実環境に保存することができる

```
docker container run --mount type=bind,src=/home/user/sample,dst=/root -it ubuntu
```

## dockerfile
### 実行
dockerfileのあるディレクトリならこれ。docker imageが作成される。
```
docker build -t imageName:tag .  
```

### コマンド例
- FROM: ベースとなるimageを指定
- RUN: 実行するlinuxコマンド
- WORKDIR: ワーキングディレクトリの指定
- CMD: Container 起動時に実行されるコマンド。1つしか実行されない