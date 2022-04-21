# device file / special file
# https://ja.wikipedia.org/wiki/%E3%83%87%E3%83%90%E3%82%A4%E3%82%B9%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB
# linuxの/devは、deviceの情報が保存されている


### 実デバイス ###
# 端末情報 
tty #接続端末を表示する
echo hello > /dev/tty　#現在の端末にデータを送る
echo hello > /dev/pts/1　#1番の端末にデータを送る


### ファイルディスクリプタ ###
# dev/stdin: 出力内容を一時的にファイルとして保持する。/dev/fd/0に同じ
echo a | cp sample.txt #これはダメ
echo a | cp /dev/stdin sample.txt #これはOK
rm sample.txt
# 出力側
echo a > /dev/stdout # 標準出力。/dev/fd/1に同じ
echo a > /dev/stderr # 標準エラー出力。 /dev/fd/2に同じ


### 疑似デバイス ###
# 実際のデバイスに紐づいているわけではないので、pseudo deviceと呼ばれる
# dev/null: データを読み込んでも出さない (=読み込んだデータをすぐ捨てる)
seq 5 > /dev/null


# 乱数生成 
echo $RANDOM #16bitの乱数を生成
echo head -c 8 /dev/random # 8文字の乱数を読み出す
echo head -c 8 /dev/urandom # 8文字の疑似乱数を読み出す
od -An -tu4 -N4 /dev/random # 10進数4バイトで表示(tu)、4バイト分を読み出す(N)


### proc
# プロセスに関数する情報を保存する
# /*todo*/