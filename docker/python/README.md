## 内容
python3のサンプル


## 実行方法
以下のようにしてdocker imageを作成する。
- 名前：python-sample
- タグ：1.0

```
docker build -t python-sample:1.0 .
```

起動はいつものように。<br>
起動すると、CMDで指定したコマンドが実行されるはず。

```
docker container run --name test python-sample:1.0
```

CMDを指定しなければ、pythonの実行環境として、中に入って作業可能
```
docker container run --name test2 -it python-sample:1.0
```
