CREATE TABLE Departments (
    dept_no VARCHAR(4) PRIMARY KEY,
    dept_name VARCHAR(40)
);

CREATE TABLE Dept_Employees (
    emp_no INT,
    dept_no VARCHAR(4),
    PRIMARY KEY(emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

CREATE TABLE Dept_Managers (
    dept_no VARCHAR(4),
    emp_no INT,
    PRIMARY KEY(dept_no),
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

CREATE TABLE Employees (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR(5),
    birth_date DATE,
    first_name VARCHAR(14),
    last_name VARCHAR(16),
    sex VARCHAR(1),
    hire_date DATE,
    FOREIGN KEY (emp_title_id) REFERENCES Titles(title_id)
);


CREATE TABLE Salaries (
    emp_no INT,
    salary INT,
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

CREATE TABLE Titles (
    title_id VARCHAR(5) PRIMARY KEY,
    title VARCHAR(50)
);


