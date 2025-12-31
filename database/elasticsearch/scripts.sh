######### indexの操作 ########
# indexの追加
curl -X PUT -H "Content-Type: application/json" -d '{"settings":{"number_of_shards":3,"number_of_replicas":2}}' "http://localhost:9200/my-index-000001"

# indexの参照
curl -X GET "http://localhost:9200/my-index-000001"

######### documentの操作 ########
# documentの追加
curl -X PUT -H "Content-Type: application/json" -d '{"@timestamp":"2099-11-15T13:12:00","message":"GET /search HTTP/1.1 200 1070000","user":{"id":"kimchy"}}' "http://localhost:9200/my-index-000001/_create/1"

# documentの取得
curl -X GET "http://localhost:9200/my-index-000001/_doc/1"

######### search ########
# 件数取得
curl -X GET -H "Content-Type: application/json" -d '{"query":{"term":{"user.id":"kimchy"}}}' "http://localhost:9200/my-index-000001/_count"

# 検索 
curl -X GET -H "Content-Type: application/json" -d '{"query":{"term":{"user.id":"kimchy"}}}' "http://localhost:9200/my-index-000001/_search?size=20"