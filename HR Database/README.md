
In most cases JOINs are faster than sub-queries and it is very rare for a sub-query to be faster.

In JOINs RDBMS can create an execution plan that is better for your query and can predict what data should be loaded to be processed and save time, unlike the sub-query where it will run all the queries and load all their data to do the processing.

The good thing in sub-queries is that they are more readable than JOINs: that's why most new SQL people prefer them; it is the easy way; but when it comes to performance, JOINS are better in most cases even though they are not hard to read too.
