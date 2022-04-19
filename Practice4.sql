-- Join and Union

-- 1. Select Join: Joining columns of two tables.

SELECT *
FROM employees JOIN departments
ON employees.dept_id = departments.dept_id
ORDER BY employees.dept_id;

-- 2. Inner Join: Elements matching the conditional.

SELECT *
FROM district_2020 INNER JOIN district_2035
ON district_2020.id = district_2035.id
ORDER BY district_2020.id;

-- 3. Left Join: Elements matching the conditional and left conditional.

SELECT *
FROM district_2020 LEFT JOIN district_2035
ON district_2020.id = district_2035.id
ORDER BY district_2020.id;

-- 4. Right Join: Elements matching the conditional and right conditional.

SELECT *
FROM district_2020 RIGHT JOIN district_2035
ON district_2020.id = district_2035.id
ORDER BY district_2035.id;

-- 5. Full Outer Join: Showing elements that do not meet the condition.

SELECT *
FROM district_2020 FULL OUTER JOIN district_2035
ON district_2020.id = district_2035.id
ORDER BY district_2020.id;

-- 6. Cross Join: Joining rows with every element from the other table.

SELECT *
FROM district_2020 CROSS JOIN district_2035
ORDER BY district_2020.id, district_2035.id;

-- 7. Union: Combining query results

SELECT * FROM district_2020
UNION
SELECT * FROM district_2035
ORDER BY id;

-- 8. Customizing union.

SELECT '2020' AS year,
       school_2020 AS school
FROM district_2020

UNION ALL

SELECT '2035' AS year,
       school_2035
FROM district_2035
ORDER BY school, year;

-- 9. Intersect: Elements that intersect in the two tables.

SELECT * FROM district_2020
INTERSECT
SELECT * FROM district_2035
ORDER BY id;

-- 10. Except: Elements that are excluded from the other table.

SELECT * FROM district_2020
EXCEPT
SELECT * FROM district_2035
ORDER BY id;