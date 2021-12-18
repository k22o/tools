## 内容
単純なnginx web serverを構築

## 実行方法
### コマンドラインからの実行
シェルスクリプトを実行。
- docker起動時に`-d`をつけることで、background起動
- 本ディレクトリ内のファイルをnginx内の所定のディレクトリにマウントすることで、htmlを反映

### dockerfileからの実行
```
$ docker build -t web-sample:1.0 .
$ docker container run --name test -p 8081:80 -d web-sample:1.0
```

## アクセス方法
`ip addr show`で、eth0のipアドレスを調べ、次のようなURLをブラウザに入力
```
http://[ipアドレス]:8081
```
