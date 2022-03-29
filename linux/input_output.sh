### 入出力
# 0: 標準入力
# 1: 標準出力
# 1: 標準 エラー出力
echo '1+1' | bc > output.txt # ファイルへの標準出力
echo next_line >> output.txt # 入力の追加
touch 2> error.txt # 標準エラー出力
touch 2>&1 # 標準エラー出力を標準出力(&1)にリダイレクトする
echo hoge 1>&2 #標準出力を標準エラー出力にリダイレクトする
seq 5 | tac # 逆順出力
rm output.txt
rm error.txt

uniq -c < system.sh # 入力


### sub shell
(cd /dev/; ls) # ()内でシェルが完結する。 

### place
echo {a,b,c}{1..4}


### xargsの使い方
echo dir1 dir2 dir3 | xargs mkdir
echo dir1 dir2 dir3 | xargs rmdir

mkdir 1 3
seq 4 | xargs -n2 mv #2つ引数を取る
rmdir 2 4

seq 3 | xargs -I@ mkdir dir_@ # 変数名として利用
rm -r dir_*

seq 100 | xargs -P$(nproc) echo > /dev/null # 並列稼働


# bashの使い方
## 変数を受け取って、それを実行できる
seq 4 | awk '{print "mkdir " ($1%2==0 ? mkdir "even_" : "odd_") $1}' | bash
rmdir even*
rmdir odd*