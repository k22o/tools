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

### プロセス
ps -aux # プロセスの表示
sleep 5 & # background実行
fg # background実行をforegroundに
^Z # foreground実行を中断
bg # 中断したものをbackgroundで再実行
pstree # process tree

### シグナル
kill <PID> # 削除　kill -s 9 <PID>と同じ
kill -l # シグナル一覧
