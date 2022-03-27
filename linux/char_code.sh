# n進数のいろいろな変換
printf "%x\n" 1024 #10 -> 16
printf "%o\n" 1024 #10 -> 8
printf "%o\n" 1024 | sed 's/0/000/g;s/1/001/g;s/2/010/g;s/3/011/g;s/4/100/g;s/5/101/g;s/6/110/g;s/7/111/g'  #10 -> 2
echo $((16#400)) #算術式展開を使って、16 -> 10 
echo $((8#2000))
echo '9A5F' | sed '1iibase=16;obase=2' | bc #16(input) -> 2(output)


# ascii (<- sudo apt install ascii)
ascii | grep -oE '[0-9]+ [0-9A-F]+ [A-C] ' #特定の文字の番号を取り出す

# 文字コード
echo -e '\U9A5F' # Unicode
echo -e '\xE5\xAA\x9B' # utf-8
echo '揖' | iconv -f UTF-8 -t UTF-16 # UTF8->16 -f でiconvで

# バイナリ
echo "あいうえお" | xxd 
echo "あいうえお" | od 
