# od -> 8進数や16進数などでダンプする際に使用するコマンド
# xxd -> 16 or 2進数でダンプ。16進ダンプから元のデータに復元も可能
# hexdump -> 16新数でダンプ。

##### od (octal dump) 2byte単位の8進数表記のリトルエンディアンがデフォ
echo "abcde" | od # 8進数に変換する (基本はリトルエンディアン)
echo "-------"
echo "abcde" | od -tx1 # 16進数(x)で、1バイトごとに表示
echo "-------"
echo "abcde" | od -td2 # 10進数(d)で、2バイトごとに表示
echo "-------"
echo "abcde" | od -tx1c # acIIコード付きで出力

###　xxd (hex dump) 2byte単位の16新数表記のビッグエンディアンがデフォ
echo "abcde" | xxd # 16進数
echo "abcde" | xxd -u # 16進数 大文字
echo "abcde" | xxd -b # 2進数
xxd -r sample16.dat # 16進数を文字に変換

echo "abcde" | xxd -g4 # 4byteごとにグループ化
echo "abcde" | xxd -e -g2 # リトルエンディアン

### hexdump 2byte単位の16新数表記のリトルエンディアンがデフォ
echo "abcde" | hexdump
echo "abcde" | hexdump -C # ビッグエンディアン

### strings ACIIの可読部を読み出す
strings dummy_binary.out