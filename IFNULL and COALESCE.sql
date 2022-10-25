# IFNULL 
#The IFNULL function returns the first of the two indicated values if the value found in the
# table is not null, and returns the second value if there is a null value.
SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no;

SELECT 
    dept_no,
    IFNULL(dept_name,
            'Department name not provided') as dept_name
FROM
    departments_dup;
# IFNULL cannot contain more than 2 parameters.

# COALESCE allows you insert N arguments in the parentheses
/* COALESCE will always return a single value of the ones within the parentheses, and this 
value will be the first non-null value of the list, reading from left to right. */
SELECT 
    dept_no,
    COALESCE(dept_name,
            'Department name not provided') as dept_name
FROM
    departments_dup;
    
# With three arguments
SELECT 
    dept_no,
    dept_name,
    COALESCE(dept_manager, dept_name, 'N/A') as dept_manager
FROM
    departments_dup
ORDER BY dept_no ASC;

# Using COALESCE with a single argument
SELECT
	dept_no,
    dept_name,
    COALESCE('department manager name') AS fake_col
FROM
	departments_dup;
# Using IFNULL here will give an error because it works with precisely two columns.

# Task 1:
/* Select the department number and name from the departments_dup table and add a 
third column where you name the department number (dept_no) as dept_info. If 
dept_no does not have a value, use dept_name.*/

SELECT
	dept_no,
    dept_name,
    COALESCE(dept_no, dept_name) as dept_info
FROM
	departments_dup;
    
# Task 2:
/* Apply the IFNULL() function to the values from the first and second column, so that N/A is
displayed whenever a department number has no value, and 'Department name not provided' is 
shown if there is no value for dept_name.*/
SELECT
	IFNULL(dept_no, 'N/A') AS dept_no,
    IFNULL(dept_name, 'Department name not provided') AS dept_name,
    COALESCE(dept_no, dept_name) as dept_info
FROM
	departments_dup;