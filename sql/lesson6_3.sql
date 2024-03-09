/*取出payment的所有客戶的coutomer_id(不重覆)*/
SELECT customer_id, COUNT(*) AS 筆數
FROM payment
GROUP BY customer_id

/*取出payment的所有客戶的的應收帳款總合,SUM()*/
SELECT customer_id, SUM(amount) AS 總合
FROM payment
GROUP BY customer_id
ORDER BY 總合 DESC;

SELECT first_name || ' ' || last_name AS full_name,
	   SUM(amount) AS 總合
FROM payment LEFT JOIN customer ON payment.customer_id=customer.customer_id
GROUP BY full_name
ORDER BY 總合 DESC;

SELECT first_name || ' ' || last_name AS full_name,
	   SUM(amount) AS 總合
FROM payment LEFT JOIN customer USING (customer_id)
GROUP BY full_name
ORDER BY 總合 DESC;


SELECT first_name || ' ' || last_name AS full_name,
	   SUM(amount) AS 總合
FROM payment LEFT JOIN customer USING (customer_id)
GROUP BY full_name
HAVING SUM(amount) >= 200
ORDER BY 總合 DESC;

