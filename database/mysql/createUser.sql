# ユーザーを作成する
create user 'username'@'localhost' identified by 'password';

# 権限付与
GRANT ALL ON *.* TO username@localhost; //global
GRANT SELECT, INSERT ON db_name.* TO username@localhost; //database
GRANT SELECT, INSERT UPDATE DELETE ON db_name.table_name TO username@localhost; //table
