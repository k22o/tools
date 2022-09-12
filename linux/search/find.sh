# findの使い方

find files.sh #ファイル名の検索
find . -name *.sh #場所と名前から検索
find ../../ -name *.md #デフォルトで再帰的に検索できる
find . -atime -2 #2日以内にアクセスされたもの
find . -mtime +3 #3日以上前に更新されたもの
find . -amin -2 #2分以内にアクセスされたもの
find . -mmin +3 #3分以上前に更新されたもの
find . -anewer ./files.sh #指定ファイルよりも最近にアクセスされたもの
find . -newer ./files.sh #指定ファイルよりも最近に更新されたもの
find . -name *.sh -and -perm 777 #条件and,permissionでの検索
find . -name *.sh -or -type d #条件or,ディレクトリ<d>の指定
find . -not -empty -and -type f #条件not, 容量がないもの, ファイル<f>の指定