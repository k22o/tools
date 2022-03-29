url="https://www.google.com"
url2="localhost:8080/api/v1/service"

# ファイルに保存する
curl -s -o saveFile.txt ${url} # -s で進捗表示をoffにする

# 取得する情報を制限する
curl -I ${url} # レスポンスヘッダーのみを表示する
curl -D saveFile.txt -o /dev/null ${url} # レスポンスヘッダーのみを保存する
curl -D - -s -o /dev/null ${url} # レスポンスヘッダーのみを表示する (-D - で保存先はなしになる)
curl -i ${url} # レスポンスヘッダーも、表示に含める
curl -v ${url} # 処理情報の詳細も表示に含める

# メソッドを指定する
# -X でメソッド、-d でデータを設定
curl -X POST -d '{"id":"12", "number":"100"}' ${url2}　

# ヘッダーを設定する
curl -X POST -H "Content-Type: application/json" -H 'Cache-Control: no-cache' -d '{"id":"12", "number":"100"}' ${url2} #ヘッダー一般
curl -I ${url} -A "Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1)" # User Agent
curl -I ${url} -e "https://test-referer.com" # Referer
curl -I ${url} -b "id=12;number=100"