DROP TABLE student;
CREATE TABLE student(
	student_id SERIAL,
	name VARCHAR(20),
	major VARCHAR(20),
	score INT,
	PRIMARY KEY(student_id)
);
INSERT INTO student VALUES(1, '小白','英語',50);
INSERT INTO student VALUES(2, '小黃','生物',90);
INSERT INTO student VALUES(3, '小綠','歷史',70);
INSERT INTO student VALUES(4, '小藍','英語',80);
INSERT INTO student VALUES(5, '小黑','化學',20);

SELECT * FROM student;

UPDATE student
SET major='生物'
WHERE student_id = 3

DELETE FROM student
WHERE name='小白' AND major='英語'

DELETE FROM student