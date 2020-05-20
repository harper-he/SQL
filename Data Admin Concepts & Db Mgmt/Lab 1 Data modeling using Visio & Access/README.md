1. Problem description
For this lab, you need to use Visio to create an ERD that models the “Shopping site database.
You will then use MS Access to build corresponding tables, establish their relationships, and
add sample data.
We assume that this database retains profile information about products, vendors, customers,
purchases, and their relationships. To model this database, we have identified four entities:
(1) The Product entity contains data about all the products that are offered at this shopping site.
This entity shall store at least the following information:
i. Product ID
ii. Product Name
iii. Product Price
iv. Vendor ID
(2) The Vendor entity stores data about vendors that supply products for sale at the shopping site.
This entity shall store at least the following information:
i. Vendor ID
ii. Vendor Name
iii. Vendor Address
iv. Vendor Phone Number
(3) The Customer entity stores data about the customers of the shopping site. The Customer
entity shall store at least the following information:
i. Customer ID
ii. Customer Name
iii. Customer Address
(4) The Purchase entity contains data about all the purchases made at this shopping site. Each
purchase consists of one or more units of the same product. This entity shall store at least the
following information:
i. Purchase ID
ii. Product ID
iii. Number of products
iv. Customer ID
v. Total Price
2. ERD
Use Visio to create an ERD according to the following instructions:
(1) Create the above entities, give appropriate names, and add entity attributes. Make sure these
attributes are at an atomic level (meaning no composite and no multi-valued attributes) and use
good naming conventions. (1 pt)
(2) Set up primary keys for each entity. (.5 pts)
(3) Establish the relationships between entities. Give the relationships appropriate names, mark
the cardinality, and recognize the associations (foreign keys). (1 pt)
(4) Use MS Access to build the tables, establish relationships, and add sample data. Don’t
worry about other details like datatypes. We will talk about them later. Please attach the
following screenshots with your report.
(1) the datasheet view of each table; (1 pt)
(2) the data relationship model. (1 pt)
3. Question
Currently in this ERD every purchase can only have at most one type of product.
If we want to allow a purchase to have more than one type of product, how would you change
this ERD to accommodate this new need? (If possible please provide corrected ERD) (.5 pts)
