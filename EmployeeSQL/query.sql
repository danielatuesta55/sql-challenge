--DATA ANALYSIS

-- Part 1: List the following details of each employee: employee number, last name, first name, sex, and salary.
--CREATE VIEW Data_analysis_p1 AS
SELECT public."Employees".emp_no, public."Employees".last_name, public."Employees".first_name, public."Employees".sex, public."Salaries".salary
FROM public."Employees"
JOIN public."Salaries"
	ON public."Employees".emp_no = public."Salaries".emp_no;

--PART 2: List first name, last name, and hire date for employees who were hired in 1986.
--CREATE VIEW Data_analysis_p2 AS
SELECT public."Employees".first_name, public."Employees".last_name, public."Employees".hire_date
FROM public."Employees"
WHERE public."Employees".hire_date >= '1-1-1986' AND public."Employees".hire_date <= '12-31-1986'



--PART 3: List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT * 
FROM public."Department_Manager";

--CREATE VIEW Data_analysis_p3 AS
SELECT public."Departments".dept_no, public."Departments".dept_name, public."Department_Manager".emp_no, public."Employees".last_name, public."Employees".first_name 
FROM public."Departments"
JOIN public."Department_Manager"
	ON public."Departments".dept_no = public."Department_Manager".dept_no
JOIN public."Employees"
	ON public."Department_Manager".emp_no = public."Employees".emp_no;

--PART 4: List the department of each employee with the following information: employee number, last name, first name, and department name.
--CREATE VIEW Data_analysis_p4 AS
SELECT public."Employees".emp_no, public."Employees".last_name, public."Employees".first_name, public."Departments".dept_name
FROM public."Employees"
JOIN public."Department_Manager"
	ON public."Employees".emp_no = public."Department_Manager".emp_no
JOIN public."Departments"
	ON public."Department_Manager".dept_no = public."Departments".dept_no;
	--This code did not work as it only showed 24 employees 

--PART 5: List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
--CREATE VIEW Data_analysis_p5 AS

--PART 6: List all employees in the Sales department, including their employee number, last name, first name, and department name.
--CREATE VIEW Data_analysis_p6 AS

--PART 7: List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
--CREATE VIEW Data_analysis_p7 AS

--PART 8: In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
--CREATE VIEW Data_analysis_p8 AS

