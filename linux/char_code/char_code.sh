# 数字のn進数表示
printf "%x\n" 1024 #10 -> 16
printf "%o\n" 1024 #10 -> 8
printf "%o\n" 1024 | sed 's/0/000/g;s/1/001/g;s/2/010/g;s/3/011/g;s/4/100/g;s/5/101/g;s/6/110/g;s/7/111/g'  #10 -> 2
echo $((16#400)) #算術式展開を使って、16 -> 10 
echo $((8#2000))

# n進数変換　(obase=output, ibase=input)
echo 3 | sed 's/^/obase=2;ibase=10;/' | bc #10 -> 2
echo 10 | sed 's/^/obase=10;ibase=2;/' | bc #2 -> 10
echo "FF" | sed 's/^/obase=2;ibase=16;/' | bc #16 -> 2
echo "11001" | sed 's/^/obase=16;ibase=2;/' | bc #2 -> 16
echo '9A5F' | sed 'ibase=16;obase=2' | bc | sed -r 's/.{8}/& /g' # 8桁ごとに空白

# ascii (<- sudo apt install ascii)
ascii | grep -oE '[0-9]+ [0-9A-F]+ [A-C] ' #特定の文字の番号を取り出す

# 文字コード
echo -e '\U9A5F' # Unicode \U + 16進数
echo -e '\xE5\xAA\x9B' # utf-8 \x + 16進数
cat sample.txt | iconv -f shift_jis -t utf-8 # from:shift_jis to:UTF-8 

# ハッシュ値の計算
md5sum ./sample.txt
sha256sum ./sample.txt

# ファイルの分割 (2000Bごとに分割)
split -b 2000 --numeric-suffixes=1 ../image_process/one.png ./dumpbox/one.png.