/*進站人數最多的一筆*/

SELECT *
FROM gate_count LEFT JOIN stations ON 站點編號 = 編號
WHERE 進站人數 = 82586

SELECT MAX(進站人數)
FROM gate_count

SELECT *
FROM gate_count LEFT JOIN stations ON 站點編號 = 編號
WHERE 進站人數 = (
	SELECT MAX(進站人數)
	FROM gate_count
);

