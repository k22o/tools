#####
# install: sudo apt install gawk
#####

seq 5 | awk '$1%2==0' # 偶数を選択,単純な条件分岐ならこれでOK
seq 5 | awk '$1%2==0{printf("%s even\n",$1)}$1%2==1{printf("%s odd\n",$1)}' #printfで表示
seq 5 | awk '{for(i=1;i<$1;i++){printf " "};print "x"}' | tac #for文
seq 5 | awk 'BEGIN{sum=0}{sum+=$1}{print sum}END{print "fin"}' #変数の導入とENDの使い方
cat sample.txt | awk -F " " '$3>200 {print $2}' #変数の取り方 -Fなしだと空白で分ける
cat sample.txt | awk '{x[$1]+=$3}END{for(k in x) print k, x[k]}' #連想記憶とENDの使い方
seq 5 | awk '{print $1%2==0 ? "even":"odd"}' | sort | uniq -c #3項演算子
seq 5 | awk '{print $1%2==0 ? "even":"odd"}' | sort | uniq -c #3項演算子
