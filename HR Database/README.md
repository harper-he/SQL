
#### JOINs vs sub-queries
In most cases JOINs are faster than sub-queries and it is very rare for a sub-query to be faster.

In JOINs RDBMS can create an execution plan that is better for your query and can predict what data should be loaded to be processed and save time, unlike the sub-query where it will run all the queries and load all their data to do the processing.

The good thing in sub-queries is that they are more readable than JOINs: that's why most new SQL people prefer them; it is the easy way; but when it comes to performance, JOINS are better in most cases even though they are not hard to read too.

#### MySQL Subqueries with ALL, ANY, IN, or SOME

You can use a subquery after a comparison operator, followed by the keyword ALL, ANY, or SOME.

The ALL operator compares value to every value returned by the subquery. Therefore ALL operator (which must follow a comparison operator) returns TRUE if the comparison is TRUE for ALL of the values in the column that the subquery returns.

NOT IN is an alias for <> ALL. Thus, these two statements are the same:

The ANY operator compares the value to each value returned by the subquery. Therefore ANY keyword (which must follow a comparison operator) returns TRUE if the comparison is TRUE for ANY of the values in the column that the subquery returns.

When used with a subquery, the word IN (equal to any member of the list) is an alias for = ANY. Thus, the following two statements are the same:

The word SOME is an alias for ANY.
