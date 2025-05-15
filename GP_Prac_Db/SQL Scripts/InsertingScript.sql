

Use GP_Prac_DB
--Use created Db




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





INSERT INTO Education (EducationId, Specialisation, Degree, University_Name) VALUES 
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

Select * from Education

EXEC sp_rename 'Education.EductionId',  'EducationId', 'COLUMN'


Drop table Education


INSERT INTO Users_Registration_date (UserDetailsId, Date_of_Registration) values 
	('Q1001', '2012-06-10'),
	('Q1002', '2011-03-10'),
	('Q1003', '2003-01-01'),
	('Q1004', '2020-09-21'),
	('Q1005', '2010-08-10'),
	('Q1006', '2018-08-01'),
	('Q1007', '2025-02-17'),
	('Q1008', '2023-03-14'),
	('Q1009', '2018-02-17'),
	('Q1010', '2011-04-21'),
	('Q1011', '2024-01-21'),
	('Q1012', '2022-06-15'),
	('Q1013', '2021-03-10'),
	('Q1014', '2023-05-10'),
	('Q1015', '2019-09-22'),
	('Q1016', '2020-08-12'),
	('Q1017', '2018-07-01'),
	('Q1018', '2022-02-17'),
	('Q1019', '2023-05-14'),
	('Q1020', '2017-10-30'),
	('Q1021', '2015-04-21'),
	('Q1022', '2015-04-21');

select * from Users_Registration_date



Insert into User_Details (UserDetailsId,Title, Surname, Forename, Previous_name, DOB, Gender, LocationId, Blood_GroupId, Telephone_number)  Values 
	('Q1001', 'Mr', 'Harris', 'John', NULL, '1975-04-12', 'Male', 'A1', 1, '+44 7849545330'),
	('Q1002', 'Mrs', 'Brown', 'Helen',Null , '1982-09-25', 'Female', 'A2', 2, '+44 7849545230'),
	('Q1003', 'Miss', 'Poter', 'Emily','Harris', '2001-04-12', 'Female', 'A3', 1, '+44 7849545330'),
	('Q1004', 'Mr', 'Beckham', 'Michael', NULL, '1988-07-18', 'Male', 'A4', 4, '+12 7345697120'),
	('Q1005', 'Ms', 'Davids', 'Jessica', NULL, '2005-01-30', 'Female', 'A5', 1, '+44 78421198436'),
	('Q1006', 'Dr', 'Evans', 'David', NULL, '1986-11-05', 'Female', 'A6', 5, '+0 7856321478'),
	('Q1007', 'Mr', 'Thomas', 'James', NULL, '1965-03-14', 'Male', 'A7', 6, '+0 7856321478'),
	('Q1008', 'Miss', 'Roberts', 'Olivia', NULL, '1998-05-20', 'Female', 'A8', 7, '+1 7214560823'),
	('Q1009', 'Ms', 'Walker', 'Sky', NULL, '1998-08-12', 'Female', 'A9', 8, '+44 7898542310'),
	('Q1010', 'Dr', 'Smith', 'James', NULL, '1970-06-07', 'Male', 'A10', 1, '+44 7451239876'),
	('Q1011', 'Dr', 'Misha', 'Josh', NULL, '1970-06-07', 'Male', 'A11', 2, '+44 7777777777'),
	('Q1012', 'Mrs', 'Jones', 'Sarah', NULL, '1983-12-22', 'Female', 'A12', 6, '+4 7698542310'),
	('Q1013', 'Mr', 'Smith', 'John', NUll, '1986-04-12', 'Male', 'A13', 3, '+1 123456789'),
	('Q1014', 'Ms', 'Brown', 'Emily', 'Katya', '1985-04-12', 'Female', 'A14', 3, '+12 123456789'),
	('Q1015', 'Miss', 'Johnson', 'Michael', NULL, '1992-09-25', 'Male', 'A15', 4, '+44 7849541230'),
	('Q1016', 'Ms', 'Williams', 'Jessica', NULL, '2000-01-30', 'Female', 'A16', 1, '+44 7845629876'),
	('Q1017', 'Dr', 'Evans', 'David', NULL, '1978-07-18', 'Female', 'A17', 2, '+44 7896541230'),
	('Q1018', 'Mr', 'Thomas', 'Daniel', NULL, '1986-11-05', 'Male', 'A18', 3, '+1 7345698712'),
	('Q1019', 'Miss', 'Roberts', 'Olivia', NULL, '1965-03-14', 'Female', 'A19', 4, '+44 7856321478'),
	('Q1020', 'Ms', 'Walker', 'Sophia', NULL, '1995-05-20', 'Female', 'A20', 6, '+2 7214569823'),
	('Q1021', 'Dr', 'Harris', 'James', NULL, '1998-08-12', 'Female', 'A21', 7, '+11 745631289'),
	
 ('Q1022', 'Mr', 'Holms', 'Obla', NULL, '1973-06-07', 'Male', 'A22', 4, '+8 7451239876');

 select * from User_Details



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

	select * from Location



INSERT INTO Blood_Group (Blood_GroupId, Blood_Group) VALUES
(1, 'O+'),
	(2, 'O-'),
	 (3, 'A+'),
	(4, 'A-'),
	(5, 'B+'),
	(6, 'B-'),
	(7, 'AB+'),
	(8, 'AB-');

	select * from Blood_Group


drop table Appointments

Insert into Appointments (DoctorId, PatientId, AppointmentId, Appointment_Date, Appointment_Time, Reason, Confirmation) values 
	(1001, 1, 'A4001', '2025-03-20', '09:30', 'General checkup', 'Confirmed'),
	(1002, 2, 'A4002', '2025-03-21', '10:00', 'Fever', 'Confirmed'),
	(1003, 3, 'A4003', '2025-03-22', '11:15', 'Annual Physical Exam', 'Pending'),
	(1004, 4, 'A4004', '2025-03-23', '14:00', 'Back Pain Consultation', 'Confirmed'),
	(1005, 5, 'A4005', '2025-03-24', '15:45', 'Blood Test', 'Cancelled'),
	(1006, 6, 'A4006', '2025-03-25', '08:30', 'Skin Allergy', 'Confirmed'),
	(1007, 7, 'A4007', '2025-03-26', '13:00', 'Cordiology Consultation', 'Pending'),
	(1008, 8, 'A4008', '2025-03-27', '16:30', 'Diabities', 'Confirmed'),
	(1009, 9, 'A4009', '2025-03-28', '12:00', 'Mental Health', 'Pending'),
	(1010, 10, 'A4010', '2025-03-29', '10:30', 'Post-Surgery', 'Confirmed'),
	(1011, 10, 'A4011', '2025-03-29', '10:30', 'Post-Surgery', 'Cancelled');


	Select * from Appointments




Insert into Medication_Description (Given_Medication_Code, Given_Medication, Notes) values 
	('MED01', 'Paracetamol', 'Prescribed for fever and mild pain'),
	('MED02', 'Sertraline', 'Depression managment'),
	('MED03', 'Salbutamol', 'Asthma treatment'),
	('MED04', 'Walfarin', 'Blood thinner for stroke prevention'),
	('MED05', 'Doxycycline', 'Antibiotics for infection '),
	('MED06', 'Ibuprofen', 'Pain managment for injury'),
	('MED07', 'Metformin', 'Diabities managment'),
	('MED08', 'Losartan','Hypertension'),
	('MED09', 'Loratadine', 'Alergy relief'),
	('MED010', 'Omeprazole', 'Acid reflix treatment'),
	('MED011', 'Amoxicilin', 'Antiiotics for bactrerial infection');
	




Insert into Medication_details (Medication_details_Id, Medication_Given_Date,  DoctorId, Given_Medication_Code) values 

	(1,'2025-03-10', 1001, 'MED01'),
	(2, '2025-03-11', 1002, 'MED02'),
	(3, '2025-03-12', 1003, 'MED03'),
	(4, '2025-03-13', 1004, 'MED04'),
	(5, '2025-03-14', 1005, 'MED05'),
	(6, '2025-03-15', 1006, 'MED06'),
	(7, '2025-03-16', 1007, 'MED07'),
	(8, '2025-03-17', 1008, 'MED08'),
	(9, '2025-03-18', 1009, 'MED09'),
	(10, '2025-03-19', 1010, 'MED010'),
	(11, '2025-03-20', 1011, 'MED011');





Select * from Medication_details

Select * from Medication_Description

