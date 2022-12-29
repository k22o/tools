
SELECT
`TABLE_NAME`, `TABLE_TYPE`
FROM information_schema.tables
WHERE `TABLE_SCHEMA` = 'sakila';

SELECT
table_name, is_updatable
FROM information_schema.views
WHERE `TABLE_SCHEMA` = 'sakila';

SELECT 
`INDEX_NAME`, `TABLE_NAME`, `COLUMN_NAME`
FROM information_schema.statistics
WHERE table_schema = 'sakila';
