This is the note for Kaggle [Intro to SQL](https://www.kaggle.com/learn/intro-to-sql) course

1.	Print information on all the columns in a table
table.schema
2.	the triple quotation marks (""")?
These tell Python that everything inside them is a single string, even though we have line breaks in it. The line breaks aren't necessary, but they make it easier to read your query.
3.	HAVING is used in combination with GROUP BY to ignore groups that don't meet certain criteria.
4.	If you are ever unsure what to put inside the COUNT() function, you can do COUNT(1) to count the rows in each group. Most people find it especially readable, because we know it's not focusing on other columns. It also scans less data than if supplied column names (making it faster and using less of your data access quota).
5.	Note that because it tells SQL how to apply aggregate functions (like COUNT()), it doesn't make sense to use GROUP BY without an aggregate function. Similarly, if you have any GROUP BY clause, then all variables must be passed to either a GROUP BY command, or an aggregation function.
6.	There are two ways that dates can be stored in BigQuery: as a DATE or as a DATETIME.
The DATE format has the year first, then the month, and then the day. It looks like this:
YYYY-[M]M-[D]D
YYYY: Four-digit year
[M]M: One or two digit month
[D]D: One or two digit day
So 2019-01-10 is interpreted as January 10, 2019.
The DATETIME format is like the date format ... but with time added at the end.
7.	A common table expression (or CTE) is a temporary table that you return within your query. CTEs are helpful for splitting your queries into readable chunks, and you can write queries against them.
8.	Also, it's important to note that CTEs only exist inside the query where you create them, and you can't reference them in later queries. So, any query that uses a CTE is always broken into two parts: (1) first, we create the CTE, and then (2) we write a query that uses the CTE.
9.	SELECT yourcolumns
FROM tablenames
JOIN tablenames
WHERE condition
GROUP BY yourcolumns
HAVING aggregatecolumn condition
ORDER BY yourcolumns

