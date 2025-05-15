--Queries

	--MIN & MAX 
Select MIN(Medication_Given_Date) AS Minimum_Medication_Date_Given FROM Medication_details;

Select MAX(Medication_Given_Date) AS MaximumHigher_Medication_Date_Given FROM Medication_details;

-- Counts how many records are not null in this column
Select Count(Previous_name) AS Number_of_NotNULL_Previous_Names   FROM User_Details;

-- Sum Blood GroupId with value of 1 
Select SUM(Blood_GroupId) As Sum_OF_BloodGroupId1 FROM User_Details where Blood_GroupId = 1;


-- AVG patientID in appointments table
Select AVG(PatientId) as AveragePatient_id  FROM Appointments;

-- Count simmilar countirs and disaplay it 
Select Count(Country_of_Birth) As Sum_OF_Countries, 
Country_of_Birth AS Country  
FROM Location 
Group by Country_of_Birth;


Select * from User_Details	
Where Gender LIKE 'M%'

Select * from Location	
Where Town_of_Birth LIKE '_ardiff'

Select * from Location	
Where Town_of_Birth LIKE '[c-l]%'

Select * 
From Patient
Inner Join User_Details ON Patient.UserDetailsId = User_Details.UserDetailsId
Inner Join GP_Details ON Patient.GPid = GP_Details.GPid

Select UserDetailsId, Blood_Group, Town_of_Birth
From User_Details
Inner Join Location ON Location.LocationId = User_Details.LocationId
Inner Join Blood_Group ON Blood_Group.Blood_GroupId = User_Details.Blood_GroupId

Select * 
From Doctor
Full Outer Join User_Details ON Doctor.UserDetailsId = User_Details.UserDetailsId

Select * 
From GP_Details

Full join Doctor ON GP_Details.GPid = Doctor.GPid