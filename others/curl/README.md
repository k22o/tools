## webブラウザへのアクセス
もっと上手いコードを作りたい

- useragent_curl.shを実行して、実行したいcurl文をまとめてexecute.shに書き出す
- execute.sh



## curlコマンド

### 保存
```
$ curl hoge.com -o saveFile.txt
```

### データの指定

```
$ curl -I hoge.com #response headerのみ
$ curl -v hoge.com #リクエストヘッダとレスポンスヘッダ
```

### request method
```
$ curl -X GET hoge.com 
$ curl -X POST -d '{"id":"12", "number":"100"}' hoge.com 
```

### user Agent
`-H` でheaderに指定してもよいが、UAは `-A` で特別に指定可能
```
$ curl -A "Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1)" hoge.com
```

### referer
```
$ curl -e https://test-referer.com/ hoge.com
```

### Cookie
`-H` でheaderに指定してもよいが、UAは `-b` で特別に指定可能

```
$ curl -b "id=12;number=100" hoge.com
```

### sample
```
$ curl -A "Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1)" -e https://test-referer.com/ -I https://www.google.com

$ curl -X POST -d '{"id":"12", "number":"100"}' localhost:8080/api/v1/service
