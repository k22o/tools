
CREATE TABLE IF NOT EXISTS members(
	member_id INT primary key auto_increment,
	name VARCHAR(20) NOT NULL,
	delete_flag SMALLINT NOT NULL DEFAULT 0,
	created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO members (name) VALUES ("Ito");

UPDATE members
SET name = "Yoshida"
WHERE name = "Ito";

DELETE FROM members
WHERE name = "Yoshida";

DROP TABLE members;