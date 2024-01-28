-- Drop table if exists
DROP TABLE departments;

-- Create new table

CREATE TABLE departments (
	dept_no VARCHAR(10) NOT NULL,
	dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY (dept_no)
);
SELECT * FROM departments;

-- Drop table if exists
DROP TABLE titles;

CREATE TABLE titles (
	title_id VARCHAR(10) NOT NULL,
	PRIMARY KEY (title_id),
	title VARCHAR(70) NOT NULL
);
SELECT * FROM titles;

-- Drop table if exists
DROP TABLE employees;

CREATE TABLE employees (
	emp_no INT NOT NULL,
	PRIMARY KEY (emp_no),
	emp_title_id VARCHAR(10) NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
	birth_date DATE NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	sex VARCHAR(5) NOT NULL,
	hire_date DATE NOT NULL
);
SELECT * FROM employees;

-- Drop table if exists
DROP TABLE dept_emp;

CREATE TABLE dept_emp (
	id	SERIAL PRIMARY KEY,
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	dept_no VARCHAR(10) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
SELECT * FROM dept_emp;

-- Drop table if exists
DROP TABLE dept_manager;

CREATE TABLE dept_manager (
	id	SERIAL PRIMARY KEY,
	dept_no VARCHAR(10) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
SELECT * FROM dept_manager;


-- Drop table if exists
DROP TABLE salaries;

CREATE TABLE salaries (
	id	SERIAL PRIMARY KEY,
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	salary FLOAT NOT NULL
);
SELECT * FROM salaries;





