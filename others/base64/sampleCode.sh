## コマンドラインから
echo abcdefg | base64 # encoding
echo YWJjZGVmZwo= | base64 -d # decoding

# ファイルから
base64 ./original.txt
base64 -d ./translated.txt