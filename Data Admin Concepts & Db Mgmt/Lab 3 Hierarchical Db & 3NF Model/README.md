(1) Hierarchical Database Model
You need to use the hierarchical database model to illustrate the structure of a university. One
university consists of many schools. For example, a university called “University A” has the
following schools - business school, engineering school, life sciences, information technology
school. One school consists of many departments. For example, the information technology
school has departments such as Information management, Library Information systems, and
Telecommunication Network Management. One department offers many courses. To simplify
the problem, we assume that one school consists of at least one department, and one department
offers at least one course. We also do not consider the situation of courses overlapping between
departments or schools. If you make any assumptions in addition to the information provided as
above, make sure to list them with your data model.
(2) Supertype and Subtype
The XYZ Bank is a major bank that provides services for different types of customers like
company accounts, individual accounts, joint accounts and others. You need to design a
simplified Bank Accounts Management System to store the metadata of the account types.
This database should store information about various accounts offered at the bank, including
account ID, branch location, balance, etc. The type of an account can be either one of the
following saving, checking, and credit or can be a combination of them example: “Checking and
Saving”, “Credit, checking and saving”, etc. Table 1 below shows the information about each
type of account.
Account Information captures
Checking CheckingAccountID, OverdraftAmount, MinimumBalance
Saving SavingAccountID, OverdraftAmount, MinimumBalance,
SavingInterestRates
Credit CreditAccountID, CreditlineAmount, InterestRate
(3) Data Normalization
You need to develop a normalized data model starting with a sample document (see table 2
below). The sample document is a Wireless (Mobile) bill summary sheet that the XYZ Company
is currently using to track the wireless usage for its customers. The XYZ Company wants to
build a database to store and retrieve this information.
XYZ Company follows these business rules:
a. Each account can be held by one and only one customer.
b. Each account will have voice, text and a data plan.
c. Each PlanId of Voice, Text and Data is different from each other
d. Each PlanId (Voice, Text, Data) is associated with one or more account number.
e. Total utility bill amount is the summation of Voice, Text and Data amounts for the billing
period. There are no adjustments from previous cycles.
Table 2 XYZ Company Wireless Bill Summary Sheet
XYZ Wireless Services Company
Wireless Bill Summary
Section A: Customer Information
Customer ID # _______________ First Name____________ Last Name ___________
Address______________________________________ Phone # ______________
Section B: Account Information
Account # _______________ Account Type____________ (Postpaid or Prepaid)
Billing Period: Start Date ________ End Date _________ Due Date_________
Last Payment Amount _____________ Last Payment Date ______________
Section C: Usage Information
Voice:
PlanID # ___________Minutes ___________ Per Minute Charge _________ Amount _____
Data:
PlanID# __________MB used ___________ Per MB Charge _________ Amount ______
Text:
PlanID# _______No of Texts _________ Per Text Message Charge _______ Amount ____
Total Wireless Bill Amount __________
2. Instruction
For questions (1) and (2), create two ERDs according to the following instructions:
(1) Create necessary entities, and give appropriate names to them.
(2) Add entity attributes. Make sure their attributes are at atomic level using good naming
conventions (no composite attribute, no multi-value attribute).
(3) Set up primary key for each entity.
(4) Establish relationships between entities. Give the relationships appropriate names (show
forward verb phrases only) and recognize the associations (foreign keys).
(5) Mark correct cardinality of the relationships.
For question (3), you will begin with identifying the functional dependencies and then move
forward with normalizing this data model to the 1NF (first normal form), 2NF (second normal
form) and 3NF (third normal form). Make sure you also demonstrate the intermediate steps
before arriving at the 3NF i.e. show 1NF and 2NF ERDs and written explanations for the
functional dependencies. Your final ERD must be in the 3NF, which means, there should be no
multi-valued attributes, partial dependencies or transitive dependencies in the model.
Note: feel free to create new entities or attributes when necessary.
Here is the list of all items that you should turn in and their point distribution:
(1) A list of all functional dependencies
(2) The data model that conforms to 1NF
(3) Explanation of what you did to normalize the current table to 1NF
(4) The data model that conforms to 2NF
(5) Explanation of what partial dependencies you have found and how you removed them
(6) The data model that conforms to 3NF
(7) Explanation of what transitive dependencies you have found and how you removed them
