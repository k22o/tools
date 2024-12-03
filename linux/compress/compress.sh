# gzip
# ファイルの圧縮はできる
# ファイルをまとめるアーカイブ機能はない
touch a.txt
gzip a.txt #compress 
gunzip a.txt.gz #decompress
rm a.txt

# tar
# 複数のファイルやディレクトリを1つにまとめるアーカイブ機能
# よって、gzip圧縮と一緒に使われることが多い
# 以下のコマンドの"z"は、gzip圧縮を指す
mkdir b
tar czf b.tar.gz b #compress
rm -r b
tar xzf b.tar.gz #decompress
rm -r b
rm b.tar.gz