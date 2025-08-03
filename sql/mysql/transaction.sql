-- transaction開始
START TRANSACTION;

SAVEPOINT save_point_name;

ROLLBACK TO SAVEPOINT save_point_name;

ROLLBACK;

COMMENT;

--autocommitをoffにする
-- SET AUTOCOMMIT = 0