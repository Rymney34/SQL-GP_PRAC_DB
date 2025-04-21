CREATE Database GP_Prac_DB
--Creating db 
Use GP_Prac_DB
--Use creted Db

Create table GP_Details(

	GPid VARCHAR(255),
	GP_Name VARCHAR(200) NOT NULL,
	GP_Address VARCHAR(255) NOT NULL,
	GP_ContactNumber VARCHAR(30)NOT NULL,
	primary key(GPid),

)



INSERT into GP_Details (GPid, GP_Name, GP_Address, GP_ContactNumber) VALUES
('G3001', 'City Clinic', '45 High St', '2321461234'),
('G3002', 'North Medical', '78 Park Ave', '1641445678'),
('G3003', 'West Clinic', '22 West St', '21412412321'),
('G3004', 'Liverpool Health', '33 River Ln', '466556445'),
('G3005', 'Leeds Care', '90 North St', '1174324523'),
('G3006', 'South Medical', '12 Elm St', '1179234567'),
('G3007', 'Sheffield Surgery', '28 Market Rd', '1143422340'),
('G3008', 'Trent Clinic', '56 Riverbank', '1135436456'),
('G3009', 'Cardiff Medical Center', '88 Bay St', '292578658'),
('G3010', 'Scottish Health 1', '99 Clyde St', '1423429876');


Select * from GP_Details

CREATE TABLE Patient
(
	UserDetailsId  Varchar(255) NOT null,
	PatientId int,
	GPid VARCHAR(255) NOT NUll,
	primary key(PatientId),
	foreign key (GPid) references GP_Details,
	foreign key(UserDetailsId) references User_Details,

)


Insert Into Patient (UserDetailsId, PatientId, GPid) VALUES
	('Q1012', 1, 'G3001'),
('Q1013', 2, 'G3002'),
('Q1014', 3, 'G3003'),
('Q1015', 4, 'G3004'),
('Q1016', 5, 'G3005'),
('Q1016', 6, 'G3006'),
('Q1017', 7, 'G3007'),
('Q1018', 8, 'G3008'),
('Q1019', 9, 'G3009'),
 ('Q1020', 10, 'G3010'),
('Q1021', 11, 'G3006');

Select * from Patient


CREATE TABLE Doctor
(
	UserDetailsId  Varchar(255) NOT NULL,
	DoctorId int NOT NULL,
	EducationId VARCHAR(255) NOT NULL,
	GPid VARCHAR(255) NOT NULL,
	constraint DoctroId_pk primary key(DoctorId),


	constraint GPid_fk foreign key (GPid) references GP_Details,
	constraint Eduction_fk foreign key (EducationId) references Education,
	constraint UserDetailsId_fk foreign key(UserDetailsId) references User_Details,
)

Select * from Doctor

INSERT INTO Doctor (UserDetailsId, DoctorId, EducationId, GPid) Values
	('Q1001', 1001, 'E001', 'G3005'),
	('Q1002', 1002, 'E002', 'G3006'),
	('Q1003', 1003, 'E003', 'G3007'),
	('Q1004', 1004, 'E004', 'G3001'),
	('Q1005', 1005, 'E005', 'G3007'),
	('Q1006', 1006, 'E006', 'G3008'),
	('Q1007', 1007, 'E007', 'G3009'),
	('Q1008', 1008, 'E008', 'G3010'),
	('Q1009', 1009, 'E009', 'G3006'),
	('Q1010', 1010, 'E010', 'G3006'),
	('Q1011', 1011, 'E0011', 'G3004');

CREATE TABLE Education
(
	EductionId VARCHAR(255) Primary key,
	Specialisation VARCHAR(255) NOT NULL,
	Degree VARCHAR(20) NOT NULL ,
	University_Name VARCHAR(110) NOT NULL, 
)

INSERT INTO Education (EductionId, Specialisation, Degree, University_Name) VALUES 
	('E001', 'General Medicine', 'MBBS', 'Caridiff Metropolitan University'),
	('E002', 'Pediatr', 'MBBS', 'Caridiff Metropolitan University'),
	('E003', 'Dermatology', 'MBBS', 'University of Manchester'),
	('E004', 'Cardiology', 'MD', 'University of Liverpool'),
	('E005', 'Neurology', 'MD', 'University of London'),
	('E006', 'Orthopedics', 'MD', 'University of Bristol'),
	('E007', 'Pshychiatry', 'MD', 'University of Shefield'),
	('E008', 'Gynecology', 'MBBS', 'University of Nottingham'),
	('E009', 'Endocrinology', 'BcS', 'Cardiff University'),
	('E0010', 'Urology', 'BcS', 'University of Glasgow'),
	('E0011', 'Urology', 'MD', 'University of Glasgow');

CREATE TABLE Users_Registration_date
(
	 UserDetailsId  Varchar(255),
	 Date_of_Registration Date,
	 PRIMARY key (UserDetailsId, Date_of_Registration),
	 FOREIGN key (UserDetailsId) references User_Details,

)




--insert data
CREATE TABLE User_Details
(
    UserDetailsId  Varchar(255) PRIMARY KEY,
    Title VARCHAR(15) NOT NULL,
    Surname VARCHAR(55) NOT NULL,
    Forename VARCHAR(55) NOT NULL,
    Previous_name VARCHAR(55),
	DOB DATE,
    Gender CHAR(10) NOT NULL,
	LocationId varchar(255) UNIQUE,
    Blood_GroupId int NOT NULL,
    Telephone_number VARCHAR(30) NOT NULL,
	foreign key(LocationId) references Location,
	foreign key(Blood_GroupId) references Blood_Group,
)




CREATE TABLE Location(
	LocationId varchar(255) PRIMARY KEY,
	Town_of_Birth varchar(70) NOT nULL,
	Coutry_of_Birth varchar(50) NOT NULL,
	Home_Address varchar(255) NOT NULL,
)

-- typo in Country_of_Birth I decide to chnage name of the column with code below
EXEC sp_rename 'Location.Coutry_of_Birth',  'Country_of_Birth', 'COLUMN'

INSERT INTO Location ( LocationId ,Town_of_Birth, Country_of_Birth, Home_Address) Values 
	('A1', 'Cardiff', 'UK', '123 Baker St'),
	('A2', 'Manchester', 'UK', '456 Green Rd'),
	('A3', 'New York City', 'USA', '789 Oak St'),
	('A4', 'Liverpool', 'UK', '321 Hill Dr'),
	('A5', 'London', 'UK', '654 Maple Dr'),
	 ('A6', 'Bristol', 'UK', '987 Pine Ave'),
	('A7', 'Madrid', 'Spain', '147 Cedar Ct'),
	('A8', 'Cardiff', 'UK', '369 Birch Pl'),
	('A9', 'Cardiff', 'UK', '852 Spruce Ln'),
	('A10', 'Rome', 'Italy', '753 Elm Rd'),
	('A11', 'Cardiff', 'UK', '53 Elm Rd'),
	('A12', 'London', 'UK', '123 Baker St'),
	('A13', 'Manchester', 'UK', '456 Green Rd'),
	('A14', 'Birmingham', 'UK', '789 Oak St'),
	('A15', 'Liverpool', 'UK', '321 Hill Rd'),
	('A16', 'Leeds', 'UK', '654 Maple Dr'),
	('A17', 'Bristol', 'UK', '987 Pine Ave'),
	('A18', 'Sheffield', 'UK', '147 Cedar Ct'),
	('A19', 'Nottingham', 'UK', '369 Birch Pl'),
	('A20', 'Cardiff', 'UK', '852 Spruce Ln'),
	('A21', 'Glasgow', 'UK', '753 Elm Rd'),
	('A22', 'Glasgow', 'UK', '7 Etr Rd');

CREATE TABLE Blood_Group(
	BloodGroupId int PRIMARY KEY,
	Blood_Group Varchar(4) NOT NULL,
)



INSERT INTO Blood_Group (Blood_GroupId, Blood_Group) VALUES
(1, 'O+'),
	(2, 'O-'),
	 (3, 'A+'),
	(4, 'A-'),
	(5, 'B+'),
	(6, 'B-'),
	(7, 'AB+'),
	(8, 'AB-');

CREATE TABLE Appointments_Details
(
	AppoitmentId varchar(255),
	DoctorId int NOT NULL,
	PatientId int NOT NULL,
	FOREIGN KEY (AppoitmentId) references Appointments,
)

CREATE TABLE Appointments 
(
	AppoitmentId varchar(255) PRIMARY KEY,
	Appoitment_Date date NOT NULL,
	Appoitment_Time time NOT NULL,
	Reason varchar(255) NOT NULL,
	Confirmation varchar(15) NOT NULL,
)


CREATE TABLE Medication_Description
(
	Given_Medication_Code varchar(255) PRIMARY KEY,
	Given_Medication varchar(100) NOT NULL,
	Notes varchar(255) NOT NULL,
)

CREATE TABLE Medication_details
(
	Medication_Details_Id int IDENTITY(1,1) Primary key,
	Medication_Given_Date date NOT NULL,
	Given_Medication_Code varchar(255) NOT NULL,
	DoctorId int NOT NULL,
	FOREIGN KEY (Given_Medication_Code) references Medication_Description,
	FOREIGN KEY (DoctorId) references Doctor,

)


