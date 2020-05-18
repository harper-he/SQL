-- IST659 - M004 - Lab4
-- Student Name: Harper He (xhe128@syr.edu)

-- create table --

-- create Candidate table
-- define column names and data types
-- define whether each column is nullable
-- define primary key 

create table Candidate
(
CandidateId VARCHAR(10) primary key,
CFName VARCHAR(30) not null,
CLName VARCHAR(30) not null,
CPhone VARCHAR(20) not null,
CEmail VARCHAR(50) not null,
CStreetNo VARCHAR(10),
CStreetName VARCHAR(50),
CCity VARCHAR(30),
CState VARCHAR(50),
CZip VARCHAR(10),
CExperience VARCHAR(100) not null,
ERelevantExp VARCHAR(100) not null,
);

-- run it, then check content
select * from Candidate;
select CandidateId from Candidate;

drop table Candidate;

-- create Interview table
-- define column names and data types
-- define whether each column is nullable
-- define primary key 

create table Interviewer
(
InterviewerId VARCHAR(10) primary key,
IFName VARCHAR(30) not null,
ILName VARCHAR(30) not null,
IPhone VARCHAR(20) not null,
IEmail VARCHAR(50) not null,
IStreetNo VARCHAR(10) not null,
IStreetName VARCHAR(50) not null,
ICity VARCHAR(30) not null,
IState VARCHAR(50) not null,
IZip VARCHAR(10) not null,
ISchedule VARCHAR(50),
);

-- run it, then check content
select * from Interviewer;
select InterviewerId from Interviewer;

drop table Interviewer;


-- create Company table
-- define column names and data types
-- define whether each column is nullable
-- define primary key 

create table Company
(
CompanyId VARCHAR(10) primary key,
CompanyName VARCHAR(50) not null,
CompanyPhone  VARCHAR(20) not null,
CompanyWebsite  VARCHAR(50) not null,
CoStreetNo  VARCHAR(10) not null,
CoStreetName  VARCHAR(50) not null,
CoCity  VARCHAR(30) not null,
CoState  VARCHAR(50) not null,
CoZip VARCHAR(10) not null,
);

-- run it, then check content
select * from Company;
select CompanyId from Company;

drop table Company;


-- create Position table
-- define column names and data types
-- define whether each column is nullable
-- define primary key 

create table Position
(
PositionId VARCHAR(10) primary key,
PositionName VARCHAR(50) not null,
PositionLevel VARCHAR(10) not null check( PositionLevel IN ('Internship', 'Entry', 'Executive', 'Managerial', 'Staff')),
PositionAvailable VARCHAR(3) not null check( PositionAvailable IN ('yes', 'no')),
CompanyId VARCHAR(10) NOT NULL,
--define foreign key in this table 
constraint Position_FK FOREIGN KEY (CompanyID) REFERENCES Company(CompanyID)
);

-- run it, then check content
select * from Position;
select PositionId from Position;

drop table Position;


-- create Interview table
-- define column names and data types
-- define whether each column is nullable
-- define primary key 

create table Interview
(
InterviewId VARCHAR(10) NOT NULL,
RoundNumber VARCHAR(5) NOT NULL,
InterviewDate DATETIME Constraint InterviewDate DEFAULT GETDATE() NOT NULL,
CandidateId VARCHAR(10) NOT NULL,
InterviewerId VARCHAR(10) NOT NULL,
PositionId VARCHAR(10) NOT NULL,
--define foreign key in this table 
 constraint Interview_FK1 FOREIGN KEY (CandidateId) REFERENCES Candidate(CandidateId),
constraint Interview_FK2 FOREIGN KEY (InterviewerId) REFERENCES Interviewer(InterviewerId),
constraint Interview_FK3 FOREIGN KEY (PositionId) REFERENCES Position(PositionId),
);


-- run it, then check content
select * from Interview;
select InterviewId from Interview;
select CandidateId from Interview;

drop table Interview;

-- Now I am done creating the five tables


-- 2. Insert Data:
-- insert values into Candidate table

insert into Candidate values ('1', 'Nathan', 'Kerr', '315-555-5555', 'nathan.kerr@syr.edu', '112', 'Lafayette Rd', 'Syracuse', 'New York', '13205', 'Database, Business Analysis', 'Database')
insert into Candidate values ('2', 'Sebastian', 'Chapman', '315-555-6666', 'sebastian.chapman@syr.edu', '17', 'James St', 'Syracuse', 'New York', '13210', 'Consultant, Business Analysis', 'Consultant')
insert into Candidate values ('3', 'Heather', 'Cameron', '315-555-7777', 'heather.cameron@syr.edu', '410', 'Comstock Ave', 'Syracuse', 'New York', '13210','Developer, Business Analysis', 'Developer')
insert into Candidate values ('4', 'Olivia', 'Wallace', '315-555-8888', 'olivia.wallace@syr.edu', '4248', 'Nottingham Rd', 'Syracuse', 'New York', '13244', 'Database, Business Analysis', 'Database')
insert into Candidate values ('5', 'Lily', 'Tumer', '315-555-9999', 'lily.tumer@syr.edu', '3', 'Ostrom Ave', 'Syracuse', 'New York', '13225', 'Database, Business Analysis, Developer, Analyst', 'Database')

-- run it, then check content
select * from Candidate;

delete from Candidate;

-- insert values into Interviewer table
insert into Interviewer values ('1', 'Dorothy', 'Paige', '315-555-0126', 'dorothy.paige@syr.edu', '137', 'Summer Ave', 'Syracuse', 'New York', '13210', '9am-5pm Monday-Friday')
insert into Interviewer values ('2', 'Amy', 'May', '315-555', 'amy.may@syr.edu', '777', 'Ackeman Ave', 'Syracuse', 'New York', '13210', 'NULL' )
insert into Interviewer values ('3', 'Charles', 'Duncan', '315-444-5555', 'charles.duncan@syr.edu', '345', 'Lancaster Ave', 'Syracuse', 'New York', '13210', '8am-6pm Monday-Friday')
insert into Interviewer values ('4', 'Victor', 'Miller', '315-333-5565', 'victor.miller@syr.edu', '7116', 'Lafayette Rd',  'Syracuse', 'New York', '13205', 'NULL')
insert into Interviewer values ('5', 'Ray', 'Mysterio', '315-129-5677', 'raymysterio@syr.edu', '234',  'Lafayette Rd',  'Syracuse', 'New York', '13205', '9:30am-5:30pm Monday-Friday')

-- run it, then check content
select * from Interviewer;

delete from Interviewer;

-- insert values into Company table
insert into Company values ('1', 'Emst & Young', '315-129-5677', 'www.ey.com', '234', 'Lafayette Rd', 'New York', 'New York', '13205')
insert into Company values ('2', 'Deloitte', '315-356-5887', 'www.deloitte.com', '456', 'Summer Ave', 'New York', 'New York', '13100')
insert into Company values ('3', 'PWC', '315-894-4787', 'www.pwc.com', '791', 'Manyland Ave', 'New York', 'New York', '13801')
insert into Company values ('4', 'KPMG', '315-129-5677', 'www.kpmg.com', '437', 'Lancaster Ave', 'New York', 'New York', '12147')
insert into Company values ('5', 'Cognizant', '315-479-5182', 'www.cognizant.com', '825', 'Ackeman Street', 'New York', 'New York', '10071')

-- run it, then check content
select * from Company;

delete from Company;

-- insert values into Position table
insert into Position values ('1', 'Techology Analyst', 'Internship', 'yes', '1')
insert into Position values ('2', 'Business Analyst', 'Entry', 'yes', '1')
insert into Position values ('3', 'Database Analyst', 'Executive', 'yes', '2')
insert into Position values ('4', 'Risk Manager', 'Executive', 'no', '3')
insert into Position values ('5', 'Advisory Consultant', 'Staff', 'yes', '4')
insert into Position values ('6', 'Project Manager', 'Managerial', 'no', '5')

-- run it, then check content
select * from Position;

delete from Position;

-- insert values into Interview table
insert into Interview(InterviewId, RoundNumber, CandidateId, InterviewerId, PositionId) values ('1', '2', '1', '1', '1')
insert into Interview(InterviewId, RoundNumber, CandidateId, InterviewerId, PositionId) values ('2', '1', '2', '2', '2')
insert into Interview(InterviewId, RoundNumber, CandidateId, InterviewerId, PositionId) values ('3', '3', '3', '3', '1')
insert into Interview(InterviewId, RoundNumber, CandidateId, InterviewerId, PositionId) values ('4', '2', '1', '2', '1')
insert into Interview(InterviewId, RoundNumber, CandidateId, InterviewerId, PositionId) values ('5', '5', '5', '5', '5')

-- run it, then check content
select * from  Interview;

delete from Interview;

