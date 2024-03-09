/*取出payment的所有客戶的coutomer_id(不重覆)*/
SELECT customer_id, COUNT(*) AS 筆數
FROM payment
GROUP BY customer_id