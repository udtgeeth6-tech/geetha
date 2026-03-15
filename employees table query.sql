
-- create
CREATE TABLE employee (
  employee_id INT PRIMARY KEY,
  name varchar(20),
  department varchar(14),
  salary DECIMAL(10,2),
  hire_date DATE
);

-- insert
INSERT INTO employee (employee_id, name, department, salary, hire_date) VALUES
(1, 'Alice Johnson', 'Engineering', 90000, '2020-03-15'),
(2, 'Bob Smith', 'Sales', 65000, '2019-07-10'),
(3, 'Carol Lee', 'Marketing', 70000, '2021-01-05'),
(4, 'David Brown', 'Finance', 80000, '2018-09-23'),
(5, 'Eva Green', 'HR', 60000, '2022-06-01'),
(6, 'Frank White', 'Operations', 72000, '2020-11-12');
-- fetch SELECT * FROM INFORMATION_SCHEMA.COLUMNS

SELECT TOP 5 *
 FROM employee
ORDER BY salary DESC

SELECT TOP 3 *
FROM employee
WHERE department = 'Engineering'
ORDER BY hire_date DESC;

SELECT top 1 *
FROM employee
WHERE salary > 70000
AND department !='HR'
ORDER BY hire_date ASC;

SELECT  name, salary, salary/12 AS monthly_pay
FROM  employee
WHERE salary > 60000;

SELECT 
    name AS employee_name,
    salary AS annual_salary,
    salary/12 AS monthly_salary
FROM employee
WHERE department = 'Finance'
ORDER BY salary DESC;

