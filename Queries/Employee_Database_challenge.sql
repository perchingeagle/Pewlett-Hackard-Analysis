-- Create retirement_titles table
SELECT em.emp_no, em.first_name, em.last_name,
       ti.title, ti.from_date, ti.to_date
INTO retirement_titles
FROM employees AS em
INNER JOIN titles AS ti
ON em.emp_no = ti.emp_no
WHERE em.birth_date BETWEEN 
'1952-01-01' AND '1955-12-31';


-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
       first_name, last_name, title
--INTO unique_retirees
FROM retirement_titles
ORDER BY emp_no, from_date DESC;

-- Create the unique_titles table
SELECT DISTINCT ON (ur.emp_no) ur.emp_no, 
       ur.first_name, ur.last_name, ur.title
INTO unique_titles
FROM unique_retirees as ur
INNER JOIN retirement_titles as rt
ON ur.emp_no = rt.emp_no
ORDER BY ur.emp_no ASC, rt.to_date DESC;

-- Retiring titles
SELECT COUNT(emp_no) as "count", title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY "count" DESC;

--create a Mentorship Eligibility table
SELECT DISTINCT ON (em.emp_no) em.emp_no,
       em.first_name, em.last_name,
	   em.birth_date, de.from_date,
	   de.to_date, ti.title
INTO mentorship_eligibilty 
FROM employees AS em
INNER JOIN dept_emp AS de
ON em.emp_no = de.emp_no
INNER JOIN titles AS ti
ON em.emp_no = ti.emp_no
WHERE (em.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY em.emp_no, de.to_date DESC;