### 基本的なあれこれ
hostname # host名を調べる
nproc # コア数

### 
file system.sh # ファイルの情報を調べる
df -Th #ローカルファイルシステムの一覧
ls -i # iノード (ファイルの識別子) の確認

### ディスクのストレージ使用量を調べる
du -h #ファイル単位
du -sh #ディレクトリ単位

### システムコール
strace bash -c 'echo aaa' |& head -n 3 # システムコールのトレース