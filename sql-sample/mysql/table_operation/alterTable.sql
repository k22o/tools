
CREATE TABLE IF NOT EXISTS memberrs(
	member_id INT primary key auto_increment,
	name VARCHAR(20) NOT NULL,
	created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

------- tableの操作 -------
ALTER TABLE memberrs
RENAME TO members;


------- columnの操作 -------
-- columnの追加
ALTER TABLE members
    ADD COLUMN delete_flag SMALLINT NOT NULL;

-- columnの設定変更
ALTER TABLE members
    ALTER COLUMN delete_flag SET DEFAULT 0;
ALTER TABLE members
    ALTER COLUMN delete_flag DROP DEFAULT;    
ALTER TABLE members
    RENAME COLUMN delete_flag TO del_flag;
ALTER TABLE members
    RENAME COLUMN delete_flag TO del_flag;

-- columnの削除
ALTER TABLE members
    DROP del_flag;

----- 確認・後始末用
DESCRIBE members;
DROP TABLE members;