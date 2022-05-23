--1. List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT emp.emp_no,emp.last_name,emp.first_name,emp.sex,sal.salary
FROM employees AS emp
INNER JOIN salaries AS sal
ON sal.emp_no = emp.emp_no;

--2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT emp.first_name, emp.last_name, emp.hire_date
FROM employees AS emp
WHERE hire_date BETWEEN '1/1/1986' AND '12/31/1986'
ORDER BY hire_date;

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT dep.dept_no, dep.dept_name, dm.emp_no, emp.last_name, emp.first_name
FROM departments AS dep
	JOIN dept_manager AS dm
	ON (dep.dept_no=dm.dept_no)
		JOIN employees as emp
		ON (dm.emp_no=emp.emp_no);
		
--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT emp.emp_no, emp.last_name, emp.first_name, dep.dept_name
FROM employees AS emp
	JOIN dept_emp AS de
	ON (emp.emp_no=de.emp_no)
		JOIN departments as dep
		ON (de.dept_no=dep.dept_no);
		
--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name like 'B%';

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT emp.emp_no, emp.last_name, emp.first_name, dep.dept_name
FROM employees AS emp
	JOIN dept_emp AS de
	ON (emp.emp_no=de.emp_no)
		JOIN departments as dep
		ON (de.dept_no=dep.dept_no)
		WHERE dep.dept_name = 'Sales';
		
--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT emp.emp_no, emp.last_name, emp.first_name, dep.dept_name
FROM employees AS emp
	JOIN dept_emp AS de
	ON (emp.emp_no=de.emp_no)
		JOIN departments AS dep
		ON (de.dept_no=dep.dept_no)
		WHERE dep.dept_name = 'Sales' OR dep.dept_name = 'Development';
		
--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, count(last_name) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency desc;

--BONUS
--Create a histogram to visualize the most common salary ranges for employees.
SELECT * FROM salaries;--using this query to find the most common salary in jupyter notebook

--Create a bar chart of average salary by title.
--using query below in jupyter notebook
SELECT tit.title,sal.salary
FROM salaries AS sal
INNER JOIN employees AS emp
ON (sal.emp_no = emp.emp_no)
INNER JOIN titles AS tit
ON emp.emp_title = tit.title_id;