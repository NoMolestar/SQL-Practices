-- Query 1
SELECT * FROM teachers ORDER BY school,last_name ASC;
-- Query 2
SELECT * FROM teachers WHERE first_name LIKE 'S%' AND salary > 40000;
-- Query 3
SELECT * FROM teachers WHERE hire_date >= '2010-01-01' ORDER BY salary ASC;