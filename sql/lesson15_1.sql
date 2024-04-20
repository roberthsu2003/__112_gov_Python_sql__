SELECT DISTINCT SUBSTRING(地址, 1, 3) AS county
FROM stations;

SELECT DISTINCT 地址 AS county
FROM stations;

SELECT DISTINCT 名稱
FROM stations
WHERE SUBSTRING(地址, 1, 3) = '基隆市';

SELECT DISTINCT 名稱,地址
FROM stations