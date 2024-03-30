DROP TABLE student;

CREATE TABLE IF NOT EXISTS student(
	id SERIAL PRIMARY KEY,
	name VARCHAR(20),
	chinese SMALLINT,
	english SMALLINT,
	math SMALLINT
);

INSERT INTO student(name, chinese, english, math)
VALUES('徐國堂',60,72,85);