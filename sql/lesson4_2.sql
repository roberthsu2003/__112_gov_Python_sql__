/*Field constraints*/
/*
PRIMARY KEY
NOT NULL (不可以是空的)
UNIQUE (不可以重覆)
DEFAULT (新增值時,可以不設)
*/

DROP TABLE student;

CREATE TABLE student(
	student_id SERIAL PRIMARY KEY,
	name VARCHAR(20) NOT NULL,
	major VARCHAR(20) UNIQUE
);

SELECT *
FROM student

INSERT INTO student VALUES (2,'小白','歷史')
RETURNING *;
/*指定欄位都要有*/
INSERT INTO student(name,major) VALUES ('小黑','地理')
RETURNING *;

/*錯誤的 NOT NULL*/
INSERT INTO student(name,major) VALUES (NULL,'地理')
RETURNING *;

/*新增多筆*/
INSERT INTO student(name,major) 
VALUES ('小白','國文'),('小藍','英文')
RETURNING *;

