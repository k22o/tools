# URL
url="https://www.google.com"

# save
saveOption=""
# saveOption="-o saveFile.txt"

# get data type
# dataOption=""   # bodyのみ
dataOption="-I" # headerのみ
# dataOption="-i" # headerとbody
# dataOption="-v" # head response と headerとbody

# request method
requestOption=""

# user Agent
# uaOption=""
uaOption="-A \"Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1)\""

# referer
# refOption=""
refOption="-e https://test-referer.com/"

command="curl ${uaOption} ${refOption} ${dataOption} ${url} ${saveOption} ${requestOption}"
echo ${command} >> execute.sh

