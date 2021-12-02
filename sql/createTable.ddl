// databaseを消して再作成する
DROP DATABASE IF EXISTS sample_db;
CREATE DATABASE IF NOT EXISTS sample_db;
USE sample_db;

// tableを消して再作成する
DROP TABLE IF EXISTS members;
CREATE TABLE IF NOT EXISTS members(
	id INT primary key auto_increment,
	name VARCHAR(20) not null
);

// サンプルデータを作る
INSERT INTO members (name) VALUES ("Ito");
INSERT INTO members (name) VALUES ("Goto");
INSERT INTO members (name) VALUES ("Kato");
INSERT INTO members (name) VALUES ("Sato");