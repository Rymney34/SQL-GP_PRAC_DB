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

CREATE TABLE Patient
(
	UserDetailsId  Varchar(255) NOT null,
	PatientId int not null,
	GPid VARCHAR(255) NOT NUll,
	primary key(PatientId),
	foreign key (GPid) references GP_Details,
	foreign key(UserDetailsId) references User_Details,

)

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


CREATE TABLE Education
(
	EducationId VARCHAR(255) Primary key,
	Specialisation VARCHAR(255) NOT NULL,
	Degree VARCHAR(20) NOT NULL ,
	University_Name VARCHAR(110) NOT NULL, 
)


CREATE TABLE Users_Registration_date
(
	 UserDetailsId  Varchar(255),
	 Date_of_Registration Date,
	 PRIMARY key (UserDetailsId, Date_of_Registration),
	 FOREIGN key (UserDetailsId) references User_Details,

)

CREATE TABLE User_Details
(
    UserDetailsId  Varchar(255) PRIMARY KEY,
    Title VARCHAR(15) NOT NULL,
    Surname VARCHAR(55) NOT NULL,
    Forename VARCHAR(55) NOT NULL,
    Previous_name VARCHAR(55),
	DOB DATE not null,
    Gender CHAR(10) NOT NULL,
	LocationId varchar(255) NOT NULL,
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


CREATE TABLE Blood_Group(
	BloodGroupId int PRIMARY KEY,
	Blood_Group Varchar(4) NOT NULL,
)


CREATE TABLE Appointments 
(	DoctorId int NOT NULL,
	PatientId int NOT NULL,
	AppointmentId varchar(255) PRIMARY KEY,
	Appointment_Date date NOT NULL,
	Appointment_Time time NOT NULL,
	Reason varchar(255) NOT NULL,
	Confirmation varchar(15) NOT NULL,
	foreign key (DoctorId) references Doctor,
	foreign key (PatientId) references Patient,
)


CREATE TABLE Medication_Description
(
	Given_Medication_Code varchar(255) PRIMARY KEY,
	Given_Medication varchar(100) NOT NULL,
	Notes varchar(255) NOT NULL,
)

CREATE TABLE Medication_details
(
	Medication_Details_Id int Primary key,
	Medication_Given_Date date NOT NULL,
	Given_Medication_Code varchar(255) NOT NULL,
	DoctorId int NOT NULL,
	FOREIGN KEY (Given_Medication_Code) references Medication_Description,
	FOREIGN KEY (DoctorId) references Doctor,

)
