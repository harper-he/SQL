Now, please write SQL statements to finish the following tasks:
1. **Views: create views** based on the following requirements<br/>
    a. interviews_summary: for all the candidates, find their interviews and the corresponding interviewers. This view should show the candidate ID, candidate name, interview ID, interviewer ID, and interviewer name.<br/>
    b. position_summary: find the total number of positions available for each company in the second half of 2013 (Jul, Aug, Sep, Oct, Nov, Dec).<br/>
    c). maximum_candidate_interview_summary: find the candidate who had the largest number of interviews.<br/>
    d). minimum_interviewer_prescription_summary: find the interviewer who had the lowest number of interviews.<br/>
    e). position_interview_summary: find the position for which the largest number of interviews were conducted.<br/>
2. **Create two transactions**:<br/>
    a). Create a new interview for a new candidate. New rows should be inserted into the
    tables Candidate, Interview, and Position.<br/>
    Step 1: create a new candidate record whose first name is “Shah”, last name is
    “Kantilal”, and phone number is “315-525-2552”. His address is “193 Lancaster Ave,
    Syracuse, New York, 13210”. Candidate experience is in “Database and
    Development” and Relevant Experience is in “Database Administration”. He was
    interviewed on “2013-11-08 00:00:00.000” for his 1st round of interview for
    “Database Developer” position at Google. Position level is “Entry” and position is
    available. His interviewer was “Rose Barbara”.<br/>
    Step 2: display records from Candidate, Interview, and Position table.<br/>
    Step 3: **ROLLBACK transaction**.v
    Step 4: display records from Candidate, Interview, and Position table.<br/>
    b). Add a new position for a company. New rows should be inserted into the tables
    Company, Position and Interview.<br/>
    Step 1: create a new record for the company “Apple”. The company has a website
    URL www.apple.com and company phone is “400-000-1212”. Company
    Headquarters’ address is “1 Infinite Loop Cupertino, CA 95014”. The position they
    are hiring for is “Program Analyst” which is a “Staff” position. The 1st round of
    interviews were conducted for 3 candidates on “2013-11-01 00:00:00.000”. The 3
    candidates were “Sebastian Chapman”, “Lily Turner” and “Tin Chung”. Also the
    interviewer was “Shawn Micheal”<br/>
    Step 2: display records from Company, Position and Interview table.<br/>
    Step 3: **COMMIT transaction**.<br/>
    Step 4: display records from Company, Position and Interview table.<br/>
