# AVERAGE

SELECT 
    AVG(salary)
FROM
    salaries;
    
# Task:
# What is the average annual salary paid to employees who started after the 
# 1st of January 1997?
SELECT 
    *
FROM
    salaries;

SELECT 
    AVG(salary)
FROM
    salaries
WHERE
    from_date > '1997-01-01';
