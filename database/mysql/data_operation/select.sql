-- 列エイリアス:列名の再設定
SELECT 
CONCAT(c.first_name, " ", c.last_name) AS 'full_name',
DATE(r.rental_date) as 'rental_date'
FROM rental r
    JOIN customer c
    ON r.customer_id = c.customer_id 
WHERE r.return_date IS NULL
ORDER BY r.rental_date
LIMIT 10;

-- 重複排除
SELECT 
DISTINCT actor_id AS
FROM film_actor
LIMIT 10;

-- ソート
SELECT 
*
FROM actor
WHERE last_name IN ('WILLIAMS', 'DAVIS')
ORDER BY last_name, first_name ASC #降順ならDESC
LIMIT 10;

SELECT 
c.first_name, c.last_name, a.address, ct.city
FROM customer c
INNER JOIN address a
    ON c.address_id = a.address_id
INNER JOIN city ct
    ON a.city_id = ct.city_id
WHERE ct.city LIKE "C%"
LIMIT 10;

SELECT name,
    CASE
        WHEN name IN ('English', 'Italian', 'Franch', 'German') THEN 'latin1'
        WHEN name IN ('Japanese', 'Mandarin') THEN 'utf8'
        ELSE 'unknown'
    END 'charactor_set' -- キー名
FROM language;
