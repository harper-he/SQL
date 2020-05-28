* 查找最晚入职员工的所有信息

select * from employees
where hire_date =
(select max(hire_date) from employees)

* 查找入职员工时间排名倒数第三的员工所有信息
SELECT * FROM employees
ORDER BY hire_date DESC
LIMIT 2,1;

The LIMIT clause is used in the SELECT statement to constrain the number of rows to return. The LIMIT clause accepts one or two arguments. The values of both arguments must be zero or positive integers.
SELECT select_list FROM table_name LIMIT [offset,] row_count;
The offset specifies the offset of the first row to return. The offset of the first row is 0, not 1.
The row_count specifies the maximum number of rows to return.
When you use the LIMIT clause with one argument, MySQL will use this argument to determine the maximum number of rows to return from the first row of the result set.
Therefore, these two clauses are equivalent:
LIMIT row_count;
And
LIMIT 0 , row_count;

* 查找各个部门当前(dept_manager.to_date='9999-01-01')领导当前(salaries.to_date='9999-01-01')薪水详情以及其对应部门编号dept_no(请注意输出结果，dept_no列是最后一列)
SELECT salaries.*, dept_manager.dept_no
FROM salaries, dept_manager
WHERE salaries.emp_no=dept_manager.emp_no
AND dept_manager.to_date='9999-01-01'
AND salaries.to_date='9999-01-01'

* 查找所有已经分配部门的员工的last_name和first_name以及dept_no(请注意输出描述里各个列的前后顺序)
SELECT employees.last_name, employees.first_name, dept_emp.dept_no
FROM employees
JOIN dept_emp
ON employees.emp_no=dept_emp.emp_no

* 查找所有员工的last_name和first_name以及对应部门编号dept_no，也包括暂时没有分配具体部门的员工(请注意输出描述里各个列的前后顺序)
SELECT employees.last_name, employees.first_name, dept_emp.dept_no
FROM employees
LEFT JOIN dept_emp
ON employees.emp_no=dept_emp.emp_no

* 查找所有员工入职时候的薪水情况，给出emp_no以及salary， 并按照emp_no进行逆序(请注意，一个员工可能有多次涨薪的情况)
SELECT employees.emp_no, salaries.salary
FROM employees
JOIN salaries
ON employees.emp_no=salaries.emp_no
WHERE employees.hire_date=salaries.from_date
ORDER BY employees.emp_no DESC;

SELECT employees.emp_no, salaries.salary
FROM employees, salaries
WHERE employees.emp_no=salaries.emp_no
AND employees.hire_date=salaries.from_date
ORDER BY employees.emp_no DESC;

* 查找薪水变动超过15次的员工号emp_no以及其对应的变动次数t
SELECT emp_no, COUNT(1) t
FROM salaries
GROUP BY emp_no
HAVING t>15

* 找出所有员工当前(to_date='9999-01-01')具体的薪水salary情况，对于相同的薪水只显示一次,并按照逆序显示
SELECT DISTINCT salary
FROM salaries
WHERE to_date='9999-01-01'
ORDER BY salary DESC;

* 获取所有部门当前(dept_manager.to_date='9999-01-01')manager的当前(salaries.to_date='9999-01-01')薪水情况，给出dept_no, emp_no以及salary(请注意，同一个人可能有多条薪水情况记录)
SELECT dept_manager.dept_no, dept_manager.emp_no, salaries.salary
FROM dept_manager, salaries
WHERE salaries.emp_no=dept_manager.emp_no
AND dept_manager.to_date='9999-01-01'
AND salaries.to_date='9999-01-01'
