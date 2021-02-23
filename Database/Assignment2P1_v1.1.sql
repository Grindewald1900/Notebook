/*
CS557 Assignment2P1 GroupA23
Junjia Lin (#002269013)
Luyun Nie (#002268087)
Wentao Lu (#002276355)
Yi Ren (#002269013)
*/

DROP TABLE ENROLMENT;
DROP TABLE COURSE_SCHEDULE;
DROP TABLE TEACHER;
DROP TABLE COURSE;
DROP TABLE STUDENT;

create table TEACHER(
	t_id   integer,
	t_name    text,
	t_states   text,
	t_dept   text,
	primary key(t_id)
);

create table COURSE(
	c_id   text,
	c_name    text,
	c_level   text,
	primary key(c_id)
);

create table STUDENT(
	s_id   integer,
	s_name   text,
	s_status    text,
	primary key(s_id)
);

create table ENROLMENT(
	c_id   text,
	s_id    integer,
	foreign key(c_id)references COURSE 
	    on delete set null,
	foreign key(s_id)references STUDENT 
	    on delete set null	
);
create table COURSE_SCHEDULE(
	c_id   text,
	t_id   integer,
	foreign key(c_id)references COURSE
	    on delete set null,
	foreign key(t_id)references TEACHER
	    on delete set null
);

INSERT INTO teacher VALUES 
(00111,'John A. Brown','P','CS'),
(00112,'James kareter','P','ECE'),
(00113,'Christopher Lee','AP', 'ECE'),
(00114,'Susanne Hambrusch','L','CS'),
(00115,'Sheron Noel','P','MA'),
(00116,'Kim Basinger','AP','ECE'),
(00117,'Christopher Clifton','P','CS'),
(00118,'Elisa Bertino','P','CS'), 
(00119,'Susanne Hambrusch','AP','CS');

INSERT INTO COURSE VALUES
('CS110','Intro to Computers','F'),
('CS348','Information Systems','S'),  
('CS250','Computer Architecture','SP'),
('CS448','Intro to Data Bases','S'),
('MA511','Linear Algebra','GR'),
('CS503','Operating System','GR'), 
('MA525','Intro to Complex Analysis','GR'), 
('ECE264','Advanced C Programming','S'),
('ECE255','Intro to Electric Analysis & Design','S');

INSERT INTO STUDENT VALUES
(234,'Anglo Anebal','F'),
(235,'Abram Ace','S'),
(236,'Adelbert Antti','SP'), 
(237,'William Walker','GR'),
(238,'Emila Wdyth','GR'),
(239,'Judith Elba','S'),
(240,'Benjamin Bratt','SP'),
(241,'Tawny Kitaen','F');

INSERT INTO ENROLMENT VALUES
('CS110',    240),
('CS110',    241),
('CS348',   235),
('CS348',     239),
('CS348',     237),
('CS250',     236),
('CS250',     241),
('ECE264',    236),
('ECE264',    237),
('ECE264',    238),
('MA525',     236),
('CS503',     238),
('CS503',     239),
('CS448',     240),
('CS250',     240),
('MA511',     240);

INSERT INTO COURSE_SCHEDULE VALUES
('CS110',       00114),
('CS348',       00117),
('CS250',       00118),
('CS448',       00114),
('MA511',       00115),
('CS503',       00119),
('MA525',       00115),
('ECE264',      00113),
('ECE255',      00116);

/* Question 1: Teachers from ECE department*/
SELECT t_name FROM public.TEACHER
WHERE t_dept LIKE 'ECE';

/* Question 2: Students enrolled CS250*/
SELECT s_name FROM public.ENROLMENT
LEFT JOIN public.STUDENT
on ENROLMENT.s_id = STUDENT.s_id
WHERE c_id LIKE 'CS250';

/* Question 3(a): Students enrolled CS348and ECE264 OR CS348 and CS503*/
SELECT  DISTINCT s_id,s_name FROM STUDENT
WHERE s_id in(
	SELECT s_id FROM ENROLMENT
	WHERE c_id In ('CS348','ECE264')
    GROUP By s_id
    HAVING Count (DISTINCT c_id) = 2)
	OR
	s_id in(
	SELECT s_id FROM ENROLMENT
	WHERE c_id In ('CS348','CS503')
    GROUP BY s_id
    HAVING COUNT (DISTINCT c_id) = 2
	);


/* Question 4: Teachers teaching MA525*/
SELECT * FROM public.COURSE_SCHEDULE
LEFT JOIN public.TEACHER
on TEACHER.t_id = COURSE_SCHEDULE.t_id
WHERE c_ID LIKE 'MA525';


/* Question 5: Students enrolled one or three*/
SELECT DISTINCT s_id,s_name FROM STUDENT
WHERE s_id in(
	SELECT s_id FROM ENROLMENT
    Group By s_id
    Having Count (DISTINCT c_id) = 1) 
	OR 
	s_id in(SELECT s_id FROM ENROLMENT
    GROUP BY s_id
    Having Count (DISTINCT c_id) = 3);


/* Question 6: All students taught by Prof. Christopher Clifton*/
SELECT DISTINCT s_id,s_name FROM STUDENT
WHERE s_id in (
	SELECT s_id FROM ENROLMENT
	WHERE c_id in(
		SELECT c_id FROM COURSE_SCHEDULE
		WHERE t_id in (
			SELECT t_id FROM TEACHER
			WHERE t_name LIKE '%Christopher Clifton%'
		)
	)
);


/* Q7 */
SELECT DISTINCT c_name FROM COURSE
WHERE c_level != 'GR' AND c_id IN(
	SELECT c_id FROM public.STUDENT
	LEFT JOIN public.ENROLMENT
	ON ENROLMENT.s_id = STUDENT.s_id
	WHERE s_status = 'GR');


/* Q8 */
SELECT DISTINCT s_name FROM STUDENT
LEFT JOIN public.ENROLMENT
ON ENROLMENT.s_id = STUDENT.s_id
WHERE s_status != 'GR' AND c_id IN (
	SELECT c_id FROM COURSE_SCHEDULE
	WHERE t_id in (SELECT t_id FROM TEACHER WHERE t_name LIKE '%Sheron Noel')) 