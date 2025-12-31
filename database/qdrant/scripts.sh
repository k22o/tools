######## collectionsの操作 ########
# collectionをの一覧を取得する
curl -X GET "http://localhost:6333/collections"

# 特定のcollectionの情報を取得する
curl  -X GET 'http://localhost:6333/collections/test-collection'

# collectionsを登録する
curl -X PUT 'http://localhost:6333/collections/test-collection' \
  -H 'Content-Type: application/json' \
  --data-raw '{
    "vectors": {
      "size": 4,
      "distance": "Cosine"
    }
  }'


######## pointの操作 ########
# pointを取得する
curl http://localhost:6333/collections/test-collection/points/1

# pointを登録する
curl  -X PUT \
  'http://localhost:6333/collections/test-collection/points' \
  --data-raw '{
  "points": [
    {
      "id": "76874cce-1fb9-4e16-9b0b-f085ac06ed6f",
      "payload": {
        "color": "red"
      },
      "vector": [
        0.9,
        0.1,
        0.1,
        0.1,
        0.3
      ]
    },
    {
      "id": 1,
      "payload": {
        "color": "green"
      },
      "vector": [
        0.1,
        0.9,
        0.1,
        0.7,
        0.5
      ]
    }
  ]
}'


######## 検索 ########
# docker-imageの最新版がまだちょっと古くて新しいエンドポイントは使えなさそう

# vector検索

# フィルター (payload) のみ

# vector + フィルター