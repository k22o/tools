import json
import re

f = open("./sample.json")
input = json.dumps(f.read())
output = re.sub('\s','',input).replace('\\n','').replace('\\','')
print(output)

# https://qiita.com/westhouse_k/items/60c6afdb8cf6bc417bd3