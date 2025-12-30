---------------数値-------------------
-- 切り捨て切り上げ四捨五入
SELECT CEIL(3.14);-- 切り上げ
SELECT FLOOR(3.14);-- 切り捨て
SELECT ROUND(3.14);-- 四捨五入
SELECT ROUND(3.14, 1);-- 小数点以下を残す
SELECT ROUND(316, -1);-- 1の位で四捨五入
SELECT TRUNCATE(316, -1);-- 1の位で切り捨て

-- 符号の取り扱い
SELECT SIGN(10), ABS(10);-- signは1
SELECT SIGN(0), ABS(0);-- signは0
SELECT SIGN(-10), ABS(-10);-- signは-1

---------------文字列-------------------
-- 比較
SELECT 
STRCMP('abcde', 'abcde') AS 'abcde',
STRCMP('abcde', 'ABCDE') AS 'ABCDE',
STRCMP('abcde', 'abcd') AS 'abcd';

-- ASCII
SELECT 'abcd', CHAR(97, 98, 99, 100);

-- 文字の挿入と置換
-- フラグが0 -> ずれる、0より大きい -> 文字数分だけ置換
SELECT INSERT('ho world', 2, 0, 'ell'); 
SELECT INSERT('heeeo world', 3, 2, 'll');
SELECT REPLACE('aaaaa world', 'aaaaa', 'hello');

-- その他
SELECT CONCAT('abc', 'def');
SELECT LENGTH('abcde');
SELECT POSITION('def' IN 'abcdef');
SELECT SUBSTR('abcdefg', 1, 3);

---------------日時-------------------
-- timezone
SELECT @@global.time_zone;-- system-> サーバーのtimezone
SET time_zone = 'Europe/Zurich'; -- timezoneの変更

-- 時刻の生成
SELECT DATE('2022-10-10');-- DATEの作成
SELECT TIMESTAMP('2022-10-10 10:10:00');-- TIME STAMpの作成
SELECT CAST('2022-10-10 10:00:00' AS DATETIME);-- 文字列の変換
SELECT CAST('10:00:00' AS TIME);-- 文字列の変換
SELECT STR_TO_DATE('2022/01/10 10時10分10秒', '%Y/%m/%d %H時%i分%s秒');-- フォーマットに沿っていない場合の変換
SELECT CURRENT_DATE(), CURRENT_TIME(), CURRENT_TIMESTAMP(); -- 現在時刻

-- 時刻の足し引きなど
SELECT DATE_ADD(CURRENT_DATE(), INTERVAL 5 DAY);
SELECT DATE_SUB(CURRENT_TIMESTAMP(), INTERVAL '1-1' YEAR_MONTH);
SELECT DATEDIFF('2022-12-12', '2022-01-13');

-- others
SELECT LAST_DAY(CURRENT_DATE());--その月の月末
SELECT DAYNAME(CURRENT_DATE());-- 曜日
