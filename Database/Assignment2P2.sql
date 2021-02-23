/* Insert data into table 'points' */
DELETE FROM points;
INSERT INTO public.points(grade, points)VALUES ('A+', 4);
INSERT INTO public.points(grade, points)VALUES ('A', 4);
INSERT INTO public.points(grade, points)VALUES ('A-', 3.7);
INSERT INTO public.points(grade, points)VALUES ('B+', 3.5);
INSERT INTO public.points(grade, points)VALUES ('B', 3.2);
INSERT INTO public.points(grade, points)VALUES ('B-', 3);
INSERT INTO public.points(grade, points)VALUES ('C+', 2.8);
INSERT INTO public.points(grade, points)VALUES ('C', 2.6);
INSERT INTO public.points(grade, points)VALUES ('C-', 2.4);


/* Q1 */
SELECT title FROM public.course
WHERE dept_name = 'Comp. Sci.' AND credits = 3;


/* Q2 */
/* Attention: name modified */
-- Since take.ID is a foreign key from table 'student'
SELECT takes.ID FROM takes
WHERE takes.course_id IN (
	SELECT course_id FROM teaches 
	WHERE teaches.ID IN (SELECT instructor.id FROM instructor WHERE instructor.name LIKE '%Bondi%') );


/* Q3 */
SELECT * FROM public.instructor
ORDER BY instructor.salary DESC LIMIT 1;


/* Q3-2 */
SELECT * FROM public.instructor
WHERE instructor.id = (SELECT id FROM instructor WHERE salary = (SELECT MAX(salary) FROM instructor));


/* Q4 */
SELECT * FROM public.instructor
WHERE instructor.id IN (SELECT id FROM instructor WHERE salary = (SELECT MAX(salary) FROM instructor));


/* Q5 */
SELECT * FROM public.takes
WHERE semester = 'Fall' AND year = 2009;
-- WHERE takes.course_id IN (SELECT course_id FROM public.section WHERE semester = 'Fall' AND year = 2009)


/* Q6 */
SELECT COUNT(course_id) FROM public.takes
WHERE semester = 'Fall' AND year = 2009
GROUP BY course_id
ORDER BY COUNT(course_id) DESC LIMIT 1;
	
	
/* Q7 */
SELECT * FROM public.section
WHERE year = 2009 AND semester = 'Fall' AND section.course_id = (SELECT course_id FROM public.takes
	WHERE semester = 'Fall' AND year = 2009
	GROUP BY course_id
	ORDER BY COUNT(course_id) DESC LIMIT 1);
	
	
/* Q8 */
/* Attention: ID modified */							  
SELECT SUM(credits*points) FROM public.takes
LEFT JOIN public.course ON takes.course_id = course.course_id
LEFT JOIN public.points ON takes.grade = points.grade
WHERE takes.ID = '66054';



/* Q9 */
/* Attention: ID modified */								  
SELECT CAST(SUM(credits*points)/SUM(credits) AS DECIMAL(10,2))FROM public.takes
LEFT JOIN public.course ON takes.course_id = course.course_id
LEFT JOIN public.points ON takes.grade = points.grade
WHERE takes.ID = '66054';



/* Q10 */
SELECT takes.ID, CAST(SUM(credits*points)/SUM(credits) AS DECIMAL(10,2))FROM public.takes
LEFT JOIN public.course ON takes.course_id = course.course_id
LEFT JOIN public.points ON takes.grade = points.grade
GROUP BY takes.ID;



/* Q11 */
UPDATE public.instructor
SET salary = salary*1.1
WHERE dept_name = 'Comp. Sci.';



/* Q12 */
/* Attention: DISABLE or DROP the CONSTRAINT before  DELETE*/								  
ALTER TABLE prereq
DISABLE CONSTRAINT  prereq_prereq_id_fkey;

DELETE FROM public.course
WHERE course.course_id NOT IN(SELECT section.course_id FROM public.section);

ALTER TABLE prereq
ENABLE CONSTRAINT  prereq_prereq_id_fkey;


/* Q13 */
/* Attention: DISABLE or DROP the CONSTRAINT before  INSERT*/
ALTER TABLE instructor
DROP CONSTRAINT instructor_salary_check;

INSERT INTO public.instructor (id, name, dept_name, salary)
SELECT student.ID, student.name, student.dept_name, 10000 FROM student WHERE student.tot_cred > 100;

-- ALTER TABLE instructor
-- ADD CONSTRAINT instructor_salary_check check(salary > 29000);












	


