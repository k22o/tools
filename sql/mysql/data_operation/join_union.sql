-- JOIN -> 列方向の結合
-- UNION -> 行方向の結合

-- INNER JOIN は一致するものがあるデータだけを取り出す
-- LEFT OUTER JOIN は、左を中心に、一致しないものはnullを返す
-- RIGHT OUTER JOIN は、右を中心に、一致しないものはnullを返す
SELECT 
f.film_id, f.title, COUNT(i.inventory_id)
FROM film f
    INNER JOIN inventory i
    ON f.film_id = i.film_id
GROUP BY f.film_id, f.title;

-- CROSS JOINは、デカルト積をとる
SELECT CONCAT(table1.num + table2.num)
FROM (
    SELECT 0 num 
    UNION ALL SELECT 1 num
) table1
CROSS JOIN(
    SELECT 10 num 
    UNION ALL SELECT 20 num
) table2
;



-- UNION A,B: AまたはB(重複は排除される)
-- UNION ALL A,B: AとBをすべて結合する(重複は排除しない)
-- INTERSECT A,B: AかつB
-- EXCEPT A,B: AかつnotB

SELECT 
c.first_name, c.last_name
FROM customer c
WHERE c.first_name LIKE 'J%' AND c.last_name LIKE 'D%'
UNION
SELECT 
a.first_name, a.last_name
FROM actor a
WHERE a.first_name LIKE 'J%' AND a.last_name LIKE 'D%'
;
