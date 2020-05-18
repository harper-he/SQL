## Business Case
Career Services of our school wants to keep a track of all interviews (positions, candidates, company, and
interviewer) that take place. They want to keep track of all the companies, the potential candidates, interviewer,
positions available at companies etc. Sometimes the career services needs to contact the companies for
verification or other inquiries. We need to build a database that would assist the career services in recording this
information.
In this database system, each company and candidate will have their own profiles which include their names
and contact information such as phone numbers, postal addresses. Candidates would need to provide
information about their primary Experience domain, and relevant experience. Interviewers may or may not
provide their office hour information. The schedule or office hour information should be a text describing when
the interviewer’s office is open, e.g. 9am-5pm Monday – Thursday.
An interviewer can conduct one or multiple interviews of candidates. A candidate can have one or more
interviews. Each interview must have an interview date and round number along with information about the
Candidate (CandidateId) and Interviewer (InterviewerId).
The database should also maintain information about the positions a company is looking to hire for. Details
about position level, and position name should also be given. Information about whether the position is still
available or not should also be stored in the database (this field will be either “yes” or “no”).
In this lab we have already created the ERD model for the career services database (see below).

## Lab 4 instruction
Imagine you are hired by career services to design a new database to support this business. Now it’s time to
move to the next step, database physical design and implementation. As the first step please use SQL DDL and
DML to provide the following deliverables that satisfy the requirements.
1. Create tables:
Create the five tables following the ERD above. Copy and paste the complete create statements to your
lab report.
3
Make sure you set up correct constraints for the primary keys and foreign keys. Also the following
domain constrains are required in the creating:
1) Set the default date as today for the value of InterviewDate.
2) PositionLevel Type attribute in the Position table should only accept one of these five values -
“Internship”, “Entry”, “Executive”, “Managerial”, “Staff”
2. Insert data:
Insert the following data (shown in the screenshots) to the tables. Copy and paste all insert statements to
the lab report.
3. Select data:
Select all content of each table to prove the success of creating tables and inserting data. Include the
screenshots of the select results in the lab report. The select results should look like follows:
Candidate Table:
Interviewer Table:
Company Table:
4
Position Table:
Interview Table:
Submission
