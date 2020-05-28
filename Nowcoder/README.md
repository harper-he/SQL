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
