# なんか汎用的なスクリプトとして、順次加工してください

# URL
url="http://hoge.com"

# save
saveOption=""
# saveOption="-o saveFile.txt"

# get data type
dataOption=""   # bodyのみ
# dataOption="-I" # headerのみ
# dataOption="-i" # headerとbody
# dataOption="-v" # head response と headerとbody

# request method
requestOption=""

# user Agent
uaOption=""
uaOption="-H 'User-Agent: Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1)'"

IFS=$"\n"
curl "${dataOption} ${uaOption} ${url} ${saveOption} ${requestOption}" 




