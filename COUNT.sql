# COUNT
# Applicable to both numeric and  non-numeric data

SELECT 
    *
FROM
    salaries
ORDER BY salary DESC
LIMIT 10;

SELECT 
	COUNT(salary)
FROM
	salaries;

# COUNT DISTINCT
# Helps us find the number of times unique values are encountered in a given column.

SELECT 
	COUNT(DISTINCT from_date)
FROM
	salaries;
    
# Aggregate functions typically ignore null values, only if you have indicated a specific 
# column name within the parentheses.

# Alternatively, type the * wildcard character to return the number of all rows of the table, null
# values included.

SELECT 
	COUNT(*)
FROM
	salaries;