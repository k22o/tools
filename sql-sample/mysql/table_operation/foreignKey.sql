
CREATE TABLE IF NOT EXISTS members(
	member_id INT auto_increment,
	name VARCHAR(20) NOT NULL,
	CONSTRAINT pk_member_id PRIMARY KEY (member_id)
);

-- どの人がどの部署にいるか (複数存在する可能性あり) のデータ
CREATE TABLE IF NOT EXISTS department {
    member_id INT,
    department VARCHAR(20),
	join_at DATETIME,
    CONSTRAINT pk_department PRIMARY KEY (member_id, department),
    CONSTRAINT fk_department FOREIGN KEY (member_id)
    REFERENCES members (member_id)
}


-- 消すときは
-- DROP TABLE department
-- DROP TABLE members