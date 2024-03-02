CREATE TABLE IF NOT EXISTS city(
	id SERIAL,
	name VARCHAR(30),
	population INT,
	PRIMARY KEY(id)
);

SELECT *
FROM city;

