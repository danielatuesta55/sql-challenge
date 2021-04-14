--DATA ANALYSIS

-- Part 1: List the following details of each employee: employee number, last name, first name, sex, and salary.
--CREATE VIEW Data_analysis_p1 AS
SELECT public."Employees".emp_no, public."Employees".last_name, public."Employees".first_name, public."Employees".sex, public."Salaries".salary
FROM public."Employees"
JOIN public."Salaries"
	ON public."Employees".emp_no = public."Salaries".emp_no;

--PART 2: List first name, last name, and hire date for employees who were hired in 1986.
--CREATE VIEW Data_analysis_p2 AS

--PART 3: 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
--CREATE VIEW Data_analysis_p3 AS

--PART 4: List the department of each employee with the following information: employee number, last name, first name, and department name.
--CREATE VIEW Data_analysis_p4 AS

--PART 5: List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
--CREATE VIEW Data_analysis_p5 AS

--PART 6: List all employees in the Sales department, including their employee number, last name, first name, and department name.
--CREATE VIEW Data_analysis_p6 AS

--PART 7: List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
--CREATE VIEW Data_analysis_p7 AS

--PART 8: In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
--CREATE VIEW Data_analysis_p8 AS

