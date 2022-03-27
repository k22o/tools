# 文字の置換
echo aacdefgaa | sed 's/aa/ab/' #頭だけ置換
echo aacdefgaa | sed 's/aa/ab/g' #全てを置換
echo aacdefgaa | sed 's/d/&&/g' #&は前のものを表す
echo 'a,b,c,d,e' | tr , ' ' 
echo 'a,b,c,d,e' | tr -d , # delete 

# 文字のソート
seq 5 | sort -R #ランダムに並び替える
seq 5 | sort -r #降順に並び替える
seq 10 | sort -n #数字の小さい順に並べる

# 文字のunique
(echo 1;echo 1;echo 3;) | uniq
(echo c;echo a;echo a;) | uniq -c | sort -k2 | awk '{print $2 ":"  $1 "こ"}' #数えて、2列目でソート

# 文字を変換
echo ABCdefGHI | sed -r 's/(ABC)[^G]+/\1\U\2/' #小->大
echo ABCdefGHI | sed -r 's/.+/\L\0/' #小->大

# 差分を取る (入力はファイル)
diff <(echo 'abcde') <(echo 'abcdf')

# 文字列を折り返す
fmt -w 20 word_process/sample.txt

# 行数を調べる
wc -l < sample.txt # ファイルの行数を数える
