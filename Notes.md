SQL views and with clauses are very similar. Here are some differences.

>Views create an actual object in the database, with associated metadata and security capabilities. With statements are only part if a single query.

In many databases, views have options, for instance to index them or to "instantiate" them.

With statements offer the opportunity to have recursive CTEs, in some databases. This is not possible for views.

For simple subqueries incorporated into queries, they are quite similar. The choice really depends on whether you want to create a reusable code (views) or are focused on a single query (with).

share  edit  follow 

https://stackoverflow.com/questions/10674761/difference-between-sql-view-and-with-clause#:~:text=SQL%20views%20and%20with%20clauses%20are%20very%20similar.&text=Fundamentally%2C%20the%20definition%20of%20a,will%20be%20substantially%20the%20same.
