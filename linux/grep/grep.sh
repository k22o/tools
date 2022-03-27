# grepの種類 微妙に正規表現が違う
echo '(test1|test2)' | grep '^(test1|test2)' # BRE (basic RE)
echo 'abcdefg!!' | grep -E '!{2}' # ERE (extented RE)
echo '(test1|test2)' | grep -P '^(test1|test2)' # ERE (Perl RE)

# grepのoption
echo 123 456 789 | grep -oE '[7-9]+' # o:マッチする部分を改行して表示
grep '[1-10]' -R # ディレクトリ内のファイル全てをを再帰的に走査
