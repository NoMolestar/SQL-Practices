-- Math in SQL.

SELECT 2 + 2;    -- addition

-- 1. Do basic operations.
-- 1) Addition.
-- 2) Subtraction.
-- 3) Multiplication.
-- 4) Division.
-- 5) Module Division.

SELECT 11.0 / 6; -- decimal division

-- 2. Work with decimal, Exponents and Factorials.
-- 1) Exponentiation.
-- 2) Square root.
-- 3) Factorial.

SELECT (7 + 8) * 9;	-- answer: 135

-- 3. Order of operations.

SELECT
    percentile_cont(.5)
    WITHIN GROUP (ORDER BY numbers),
    percentile_disc(.5)
    WITHIN GROUP (ORDER BY numbers)
FROM percentile_test;

-- 4. Percentiles.

SELECT sum(pop_est_2019) AS county_sum,
       round(avg(pop_est_2019), 0) AS county_average,
       percentile_cont(.5)
       WITHIN GROUP (ORDER BY pop_est_2019) AS county_median
FROM us_counties_pop_est_2019;

-- 5. Average and Summation.



