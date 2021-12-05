-- Create a Retirement Titles table that holds all the titles of current employees who were born between January 1, 1952 and December 31, 1955.
-- Joining employees and titles tables
SELECT e.emp_no, 
	e.first_name, 
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_titles
FROM employees AS e
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no ASC;

-- Remove duplicate emp_no from promotions
SELECT DISTINCT ON (emp_no) emp_no, first_name, last_name, title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no ASC, to_date DESC;


-- Number of employees by their most recent job title who are about to retire
SELECT COUNT(title), title
--INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) DESC;

-- Create a mentorship-eligibility table that holds the current employees who were born between January 1, 1965 and December 31, 1965.
SELECT DISTINCT ON (emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO mentorship_eligibilty
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS t
ON (t.emp_no = e.emp_no)
WHERE de.to_date = '9999-01-01'
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no ASC;

-- Additional queries to include in README file

-- Count number of mentor-eligible by title
SELECT count(emp_no), title 
FROM mentorship_eligibilty
GROUP BY title
ORDER BY count(emp_no) DESC;

-- Count number of mentor-eligible
SELECT count(emp_no) 
FROM mentorship_eligibilty;

--emp_no of managers retiring
SELECT * FROM unique_titles
WHERE title = 'Manager';

-- number of employees retiring by department
-- Joining employees, titles, and deparatment tables
SELECT e.emp_no, 
	e.first_name, 
	e.last_name,
	t.title,
	t.from_date,
	t.to_date,
	d.dept_name
INTO retirement_department
FROM employees AS e
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no)
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN departments AS D
ON (de.dept_no = d.dept_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no ASC;

-- Remove duplicate emp_no from promotions
SELECT DISTINCT ON (emp_no) emp_no, first_name, last_name, title, dept_name
INTO unique_titles_by_dept
FROM retirement_department
ORDER BY emp_no ASC, to_date DESC;

-- Number of employees by their most recent job title and department who are about to retire
SELECT COUNT(dept_name), dept_name
FROM unique_titles_by_dept
GROUP BY dept_name
ORDER BY COUNT(dept_name) DESC;

-- number of mentor-eligible by department
SELECT DISTINCT ON (emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title,
	d.dept_name
INTO mentorship_eligibilty_by_dept
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS t
ON (t.emp_no = e.emp_no)
INNER JOIN departments AS D
ON (de.dept_no = d.dept_no)
WHERE de.to_date = '9999-01-01'
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no ASC;

-- Count number of mentor-eligible by dept
SELECT count(emp_no), dept_name 
FROM mentorship_eligibilty_by_dept
GROUP BY dept_name
ORDER BY count(emp_no) DESC;

