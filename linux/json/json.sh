# sudo apt install jq

cat sample.json | jq #jsonの表示
cat sample.json | jq .[0] #配列の指定。.はデータ自体を表す
cat sample.json | jq .[0].items[0:2] #要素の指定。
cat sample.json | jq '.[0].money - .[1].money' #計算
