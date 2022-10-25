# COALESCE

SELECT 
    *
FROM
    departments_dup;
    
# With the ALTER TABLE statement and the CHANGE COLUMN command, we will modify this 
# constraint and allow null values to be registered in the “department name” column.

ALTER TABLE departments_dup
CHANGE COLUMN dept_name dept_name VARCHAR (40) NULL;
INSERT INTO departments_dup(dept_no) VALUES('d010'), ('d011');

SELECT
*
FROM
departments_dup
ORDER BY dept_no ASC; 

# Adding a third column called “Department manager"
ALTER TABLE employees.departments_dup
ADD COLUMN dept_manager VARCHAR(255) NULL AFTER dept_name;

COMMIT;