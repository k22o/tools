# 文字の置換
echo aacdefgaa | sed 's/aa/ab/' # 頭だけ置換
echo aacdefgaa | sed 's/aa/ab/g' # 全てを置換
echo aacdefgaa | sed 's/d/&&/g' # &は前のものを表す
echo abc ABC | sed -E 's/(.*) (.*)/\2 \1/' # ()をつけて、\1で引用
seq 5 | tr '\n' ',' 
echo 'a,b,c,d,e' | tr -d , # delete 

# 文字のソート・並び替え
seq 5 | sort -R # ランダムに並び替える
seq 5 | sort -r # 降順に並び替える
seq 10 | sort -n # 数字の小さい順に並べる
echo abc | rev # 各行を逆順にする
seq 5 | tac # 出力を逆順にする

# 文字のunique
(echo 1;echo 1;echo 3;) | uniq
(echo 100;echo 101;echo 300;) | uniq -w2 #指定した文字数でuniqか調べる
(echo c;echo a;echo a;) | uniq -c | sort -k2 | awk '{print $2 ":"  $1 "こ"}' # 数えて、2列目でソート

# 文字を変換
echo ABCdefGHI | sed -r 's/(ABC)[^G]+/\1\U\2/' # 小->大
echo ABCdefGHI | sed -r 's/.+/\L\0/' # 小->大

# 差分を取る (入力はファイル)
diff <(echo 'abcde') <(echo 'abcdf')
sdiff <(echo 'abcde') <(echo 'abcdf') # 左右に並べてくれる

# 文字列を折り返す
fmt -w 20 word_process/sample.txt

# 行数を調べる
wc -l < sample.txt # ファイルの行数を数える

# 行ごとに文字を並べる
paste <(seq 10) <(seq 10 | tac) # 2つの引数の値をそれぞれ並べる
seq 10 | paste -sd ',' # -sで引数を横にする -d でつなぎ方を決める

# 文字幅を揃える
ls | column -c 50 # cで1行の幅を設定して、それにあうように並べる