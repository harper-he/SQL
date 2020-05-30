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

* 获取所有非manager的员工emp_no
SELECT emp_no
FROM employees
WHERE emp_no NOT IN (SELECT emp_no FROM dept_manager)

* 获取所有员工当前的(dept_manager.to_date='9999-01-01')manager，如果员工是manager的话不显示(也就是如果当前的manager是自己的话结果不显示)。输出结果第一列给出当前员工的emp_no,第二列给出其manager对应的emp_no。
SELECT dept_emp.emp_no, dept_manager.emp_no AS manager_no
FROM dept_emp, dept_manager
WHERE dept_manager.to_date='9999-01-01'
AND dept_emp.dept_no=dept_manager.dept_no
AND dept_emp.emp_no!=dept_manager.emp_no


* 从titles表获取按照title进行分组，每组个数大于等于2，给出title以及对应的数目t。
SELECT title, COUNT(1) t
FROM titles
GROUP BY title
HAVING t>=2

* 从titles表获取按照title进行分组，每组个数大于等于2，给出title以及对应的数目t。注意对于重复的emp_no进行忽略(即emp_no重复的title不计算，title对应的数目t不增加)。
SELECT title, COUNT(DISTINCT emp_no) AS t
FROM titles
GROUP BY title
HAVING t>=2

* 查找employees表所有emp_no为奇数，且last_name不为Mary(注意大小写)的员工信息，并按照hire_date逆序排列(题目不能使用mod函数)
SELECT *
FROM employees
WHERE emp_no%2!=0
AND last_name != 'Mary'
ORDER BY hire_date DESC

* 获取当前（to_date='9999-01-01'）薪水第二多的员工的emp_no以及其对应的薪水salary
SELECT emp_no, salary
FROM salaries
WHERE to_date='9999-01-01'
ORDER BY salary DESC
LIMIT 1,1

* 查找所有员工的last_name和first_name以及对应的dept_name，也包括暂时没有分配部门的员工
SELECT employees.last_name, employees.first_name, departments.dept_name
FROM employees
LEFT JOIN dept_emp
ON employees.emp_no=dept_emp.emp_no
LEFT JOIN departments
ON dept_emp.dept_no=departments.dept_no

* 统计各个部门的工资记录数，给出部门编码dept_no、部门名称dept_name以及次数sum
SELECT departments.dept_no, departments.dept_name, COUNT(salaries.salary)
FROM departments
JOIN dept_emp
ON departments.dept_no=dept_emp.dept_no
JOIN salaries
ON salaries.emp_no=dept_emp.emp_no
GROUP BY departments.dept_no

* 获取所有非manager员工当前的薪水情况，给出dept_no、emp_no以及salary ，当前表示to_date='9999-01-01'
SELECT dept_emp.dept_no, dept_emp.emp_no, salaries.salary
FROM dept_emp
JOIN salaries
ON dept_emp.emp_no=salaries.emp_no
WHERE dept_emp.emp_no NOT IN 
(SELECT emp_no FROM dept_manager)
AND salaries.to_date='9999-01-01'

### MEDIUM
* 查找员工编号emp_no为10001其自入职以来的薪水salary涨幅(总共涨了多少)growth(可能有多次涨薪，没有降薪)
SELECT 
(SELECT salary 
FROM salaries 
WHERE emp_no='10001' 
AND to_date=(SELECT MAX(to_date) FROM salaries WHERE emp_no='10001'))-
(SELECT salary 
FROM salaries 
WHERE emp_no='10001' 
AND from_date=(SELECT MIN(from_date) FROM salaries WHERE emp_no='10001')) AS growth;

* 获取员工其当前的薪水比其manager当前薪水还高的相关信息，当前表示to_date='9999-01-01',
* 结果第一列给出员工的emp_no，
* 第二列给出其manager的manager_no，
* 第三列给出该员工当前的薪水emp_salary,
* 第四列给该员工对应的manager当前的薪水manager_salary

* 汇总各个部门当前员工的title类型的分配数目，即结果给出部门编号dept_no、dept_name、其部门下所有的当前(dept_emp.to_date = '9999-01-01')员工的当前(titles.to_date = '9999-01-01')title以及该类型title对应的数目count
(注：因为员工可能有离职，所有dept_emp里面to_date不为'9999-01-01'就已经离职了，不计入统计，而且员工可能有晋升，所以如果titles.to_date 不为 '9999-01-01'，那么这个可能是员工之前的职位信息，也不计入统计)

* 给出每个员工每年薪水涨幅超过5000的员工编号emp_no、薪水变更开始日期from_date以及薪水涨幅值salary_growth，并按照salary_growth逆序排列。
提示：在sqlite中获取datetime时间对应的年份函数为strftime('%Y', to_date)

* 对所有员工的当前(to_date='9999-01-01')薪水按照salary进行按照1-N的排名，相同salary并列且按照emp_no升序排列

* 查找所有员工自入职以来的薪水涨幅情况，给出员工编号emp_no以及其对应的薪水涨幅growth，并按照growth进行升序
（注:可能有employees表和salaries表里存在记录的员工，有对应的员工编号和涨薪记录，但是已经离职了，离职的员工salaries表的最新的to_date!='9999-01-01'，这样的数据不显示在查找结果里面）


* 查找当前薪水(to_date='9999-01-01')排名第二多的员工编号emp_no、薪水salary、last_name以及first_name，你可以不使用order by完成吗

* 统计出当前各个title类型对应的员工当前（to_date='9999-01-01'）薪水对应的平均工资。结果给出title以及平均工资avg。

* 获取所有部门中当前(dept_emp.to_date = '9999-01-01')员工薪水最高的相关信息，给出dept_no, emp_no以及其对应的salary

