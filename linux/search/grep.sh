# grepの種類 微妙に正規表現が違う
echo '(test1|test2)' | grep '^(test1|test2)' # BRE (basic RE)
echo 'abcdefg!!' | grep -E '!{2}' # ERE (extented RE)
echo '(test1|test2)' | grep -P '^(test1|test2)' # ERE (Perl RE)

# grepのoption
echo 123 456 789 | grep -oE '[7-9]+' # o:マッチする部分のみを表示
echo abcde | grep -x 'abc' # 行が完全一致した場合のみ表示

# regex
grep -oE '[1-3]{2}.{,3}' sample.txt
grep -E '^[^s]' sample.txt
grep -E 'u$' sample.txt
grep -E 'see?t' sample.txt 
grep -E 's(a|i)t' sample.txt
grep -P '\d+' sample.txt
grep -P '12(?=3)' sample.txt # 肯定の先読み
grep -P '12(?!3)' sample.txt # 否定の先読み

# 複数ファイルの検索、再帰的な走査
grep -r "における"  ../../../ # ファイルとその中の文言の抽出
grep -rl "における"  ../../../ # パターンを含むファイル名のみ表示