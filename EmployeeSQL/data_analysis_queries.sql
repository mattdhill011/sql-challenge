--- Data Analysis step 1

SELECT
	e.emp_no AS "Employee Number",
	e.last_name AS "Last Name",
	e.first_name AS "First Name",
	e.sex AS "Sex",
	s.salary AS "Salary"

	FROM employees AS e
		JOIN salaries AS s
		ON (e.emp_no = s.emp_no);
		
-- Data Analysis step 2

SELECT
	e.first_name AS "First Name",
	e.last_name AS "Last Name",
	e.hire_date as "Hire Date"
	
	FROM employees AS e
		WHERE e.hire_date LIKE '%/1986';
		
-- Data Analysis step 3

SELECT * FROM dept_manager;

SELECT
	dm.dept_no AS "Department Number",
	d.dept_name AS "Department Name",
	dm.emp_no AS "Employee Number",
	e.last_name AS "Last Name",
	e.first_name as "First Name"
	
	FROM dept_manager AS dm
	
		JOIN departments AS d
		ON (dm.dept_no = d.dept_no)
		
		JOIN employees AS e
		ON (dm.emp_no = e.emp_no);	

-- Data Analysis Step 4

SELECT 
	e.emp_no AS "Employee Number",
	e.last_name AS "Last Name",
	e.first_name AS "First Name",
	d.dept_name AS "Department Name"
	
	FROM employees AS e
	
		JOIN dept_emp as de
		ON (de.emp_no = e.emp_no)
		
		JOIN departments AS d
		ON (de.dept_no = d.dept_no);
		
-- Data Anaylsis Step 5

SELECT
	e.first_name AS "First Name",
	e.last_name AS "Last Name",
	e.sex as "Sex"
	
	FROM employees AS e
		WHERE   (e.first_name = 'Hercules') 
			AND (e.last_name LIKE 'B%');

-- Data Anaylsis Step 6

SELECT
	e.emp_no AS "Employee Number",
	e.last_name AS "Last Name",
	e.first_name AS "First Name",
	d.dept_name AS "Department Name"
	
	FROM employees AS e	
		JOIN dept_emp as de
		ON (de.emp_no = e.emp_no)
		
		JOIN departments AS d
		ON (de.dept_no = d.dept_no)	   

	WHERE  (d.dept_name = 'Sales');

-- Data Analysis Step 7

SELECT
	e.emp_no AS "Employee Number",
	e.last_name AS "Last Name",
	e.first_name AS "First Name",
	d.dept_name AS "Department Name"
	
	FROM employees AS e	
		JOIN dept_emp as de
		ON (de.emp_no = e.emp_no)
		
		JOIN departments AS d
		ON (de.dept_no = d.dept_no)	   

	WHERE  (d.dept_name = 'Sales')
		or (d.dept_name = 'Development');
	
-- Data Analysis Step 8

SELECT
	COUNT(e.emp_no) AS "Total Employees",
	e.last_name AS "Last Name"
	
	FROM employees AS e
		
	GROUP BY "Last Name"
	ORDER BY "Total Employees" DESC;