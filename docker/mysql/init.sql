CREATE DATABASE IF NOT EXISTS sample_db;
USE sample_db;

CREATE TABLE IF NOT EXISTS members(
	id INT primary key auto_increment,
	name VARCHAR(20) NOT NULL,
	created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO members (name) VALUES ("Ito");
INSERT INTO members (name) VALUES ("Goto");
INSERT INTO members (name) VALUES ("Kato");
INSERT INTO members (name) VALUES ("Sato");