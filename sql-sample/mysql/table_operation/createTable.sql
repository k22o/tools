-- databaseを消して再作成する
DROP DATABASE IF EXISTS sample_db;
CREATE DATABASE IF NOT EXISTS sample_db;
USE sample_db;

-- tableを消して再作成する
DROP TABLE IF EXISTS members;
CREATE TABLE IF NOT EXISTS members(
	member_id INT primary key auto_increment,
	name VARCHAR(20) NOT NULL,
	gender VARCHAR(10) ENUM('male', 'female', 'other'),
	delete_flag SMALLINT NOT NULL DEFAULT 0,
	created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	CONSTRAINT pk_member_id PRIMARY KEY (member_id)
);

-- 作成状況を確認する
desc members;

-- サンプルデータを作る
INSERT INTO members (name) VALUES ("Ito");
INSERT INTO members (name) VALUES ("Goto");
INSERT INTO members (name) VALUES ("Kato");
INSERT INTO members (name) VALUES ("Sato");