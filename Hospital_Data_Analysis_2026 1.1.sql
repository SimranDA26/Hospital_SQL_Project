create database Hospital_Project;

use Hospital_Project;

show databases;

CREATE TABLE doctors (
    Doctor_ID VARCHAR(10) PRIMARY KEY,
    Doctor_Name VARCHAR(100),
    Department VARCHAR(50),
    Experience_Years INT
);


select * from doctors;

select count(doctor_id) from doctors
group by doctor_id
having count(doctor_id)>1;

CREATE TABLE admissions (
    Admission_ID VARCHAR(10) PRIMARY KEY,
    Patient_ID VARCHAR(10),
    Doctor_ID VARCHAR(10),
    Admission_Date DATE,
    Discharge_Date DATE,
    Admission_Type VARCHAR(20),
    Admission_Status VARCHAR(20)
);

CREATE TABLE billing (
    bill_id VARCHAR(10) PRIMARY KEY,
    admission_id VARCHAR(10),
    consultation_fee DECIMAL(10,2),
    room_charges DECIMAL(10,2),
    medicine_charges DECIMAL(10,2),
    procedure_charges DECIMAL(10,2),
    total_bill DECIMAL(10,2),
    payment_status VARCHAR(20),
    payment_mode VARCHAR(30)
);

select * from patients;
drop table patients;

show tables;

describe patients;

drop table if exists patients;

CREATE TABLE patients (
    Patient_ID varchar(10) PRIMARY KEY,
    Patient_Name VARCHAR(100),
    Gender VARCHAR(20),
    Age INT,
    City VARCHAR(100),
    Insurance_Type VARCHAR(50)
);

ALTER TABLE patients 
MODIFY patient_id VARCHAR(50);



INSERT INTO patients
(Patient_ID, Patient_Name, Gender, Age, City, Insurance_Type)
VALUES
('P001','Aarav Sharma','Male',45,'Delhi','Private Insurance'),
('P002','Ananya Verma','Female',32,'Gurgaon','Self Pay'),
('P003','Rahul Mehta','Male',58,'Noida','CGHS'),
('P004','Priya Singh','Female',41,'Delhi','Private Insurance'),
('P005','Rohan Gupta','Male',29,'Faridabad','Self Pay'),
('P006','Neha Kapoor','Female',36,'Ghaziabad','Private Insurance'),
('P007','Amit Yadav','Male',52,'Delhi','PMJAY'),
('P008','Sneha Malhotra','Female',27,'Gurgaon','Self Pay'),
('P009','Vikram Bhatia','Male',64,'Noida','Private Insurance'),
('P010','Pooja Sharma','Female',48,'Delhi','CGHS'),
('P011','Karan Arora','Male',34,'Faridabad','Private Insurance'),
('P012','Ritu Chauhan','Female',55,'Ghaziabad','PMJAY'),
('P013','Manish Kumar','Male',47,'Delhi','Self Pay'),
('P014','Kavya Nair','Female',26,'Gurgaon','Private Insurance'),
('P015','Suresh Mishra','Male',61,'Noida','CGHS'),
('P016','Divya Joshi','Female',39,'Delhi','Private Insurance'),
('P017','Nitin Aggarwal','Male',43,'Faridabad','Self Pay'),
('P018','Meena Gupta','Female',67,'Ghaziabad','PMJAY'),
('P019','Aditya Saxena','Male',31,'Delhi','Private Insurance'),
('P020','Shreya Agarwal','Female',24,'Gurgaon','Self Pay'),
('P021','Rajesh Tiwari','Male',59,'Noida','CGHS'),
('P022','Simran Kaur','Female',35,'Delhi','Private Insurance'),
('P023','Deepak Rawat','Male',50,'Faridabad','PMJAY'),
('P024','Nisha Jain','Female',44,'Ghaziabad','Self Pay'),
('P025','Mohit Saini','Male',38,'Delhi','Private Insurance'),
('P026','Poonam Verma','Female',57,'Gurgaon','CGHS'),
('P027','Sanjay Kumar','Male',63,'Noida','PMJAY'),
('P028','Ishita Roy','Female',29,'Delhi','Self Pay'),
('P029','Arjun Malhotra','Male',46,'Faridabad','Private Insurance'),
('P030','Swati Sharma','Female',33,'Ghaziabad','Private Insurance'),
('P031','Manoj Singh','Male',56,'Delhi','CGHS'),
('P032','Aditi Gupta','Female',37,'Gurgaon','Self Pay'),
('P033','Rajat Kapoor','Male',42,'Noida','Private Insurance'),
('P034','Komal Yadav','Female',51,'Delhi','PMJAY'),
('P035','Ashok Mehra','Male',69,'Faridabad','CGHS'),
('P036','Tanya Bansal','Female',28,'Ghaziabad','Private Insurance'),
('P037','Rohit Chawla','Male',40,'Delhi','Self Pay'),
('P038','Sunita Devi','Female',62,'Gurgaon','PMJAY'),
('P039','Harish Arora','Male',53,'Noida','Private Insurance'),
('P040','Sakshi Mehta','Female',31,'Delhi','Self Pay'),
('P041','Naveen Sharma','Male',48,'Faridabad','CGHS'),
('P042','Preeti Singh','Female',45,'Ghaziabad','Private Insurance'),
('P043','Gaurav Mittal','Male',35,'Delhi','Self Pay'),
('P044','Rekha Joshi','Female',60,'Gurgaon','PMJAY'),
('P045','Varun Gupta','Male',27,'Noida','Private Insurance'),
('P046','Bhavna Sethi','Female',52,'Delhi','CGHS'),
('P047','Anil Kumar','Male',66,'Faridabad','PMJAY'),
('P048','Muskan Arora','Female',23,'Ghaziabad','Self Pay'),
('P049','Tarun Bhatia','Male',44,'Delhi','Private Insurance'),
('P050','Shalini Verma','Female',38,'Gurgaon','Private Insurance'),
('P051','Vivek Saxena','Male',57,'Noida','CGHS'),
('P052','Radhika Sharma','Female',30,'Delhi','Self Pay'),
('P053','Yogesh Yadav','Male',49,'Faridabad','PMJAY'),
('P054','Monica Kapoor','Female',42,'Ghaziabad','Private Insurance'),
('P055','Pankaj Mishra','Male',55,'Delhi','Self Pay'),
('P056','Sonal Jain','Female',34,'Gurgaon','Private Insurance'),
('P057','Mahesh Gupta','Male',68,'Noida','CGHS'),
('P058','Nandini Rao','Female',25,'Delhi','Self Pay'),
('P059','Akash Verma','Male',39,'Faridabad','Private Insurance'),
('P060','Geeta Sharma','Female',61,'Ghaziabad','PMJAY'),
('P061','Abhishek Mehta','Male',33,'Delhi','Private Insurance'),
('P062','Pallavi Singh','Female',47,'Gurgaon','CGHS'),
('P063','Rakesh Yadav','Male',54,'Noida','PMJAY'),
('P064','Isha Gupta','Female',29,'Delhi','Self Pay'),
('P065','Sameer Khan','Male',43,'Faridabad','Private Insurance'),
('P066','Jyoti Verma','Female',56,'Ghaziabad','CGHS'),
('P067','Ankur Sharma','Male',37,'Delhi','Self Pay'),
('P068','Alka Devi','Female',64,'Gurgaon','PMJAY'),
('P069','Siddharth Kapoor','Male',30,'Noida','Private Insurance'),
('P070','Rashi Malhotra','Female',40,'Delhi','Self Pay'),
('P071','Devendra Singh','Male',58,'Faridabad','CGHS'),
('P072','Mansi Jain','Female',26,'Ghaziabad','Private Insurance'),
('P073','Prakash Kumar','Male',65,'Delhi','PMJAY'),
('P074','Payal Sharma','Female',36,'Gurgaon','Self Pay'),
('P075','Rajiv Bansal','Male',51,'Noida','Private Insurance'),
('P076','Shweta Gupta','Female',43,'Delhi','CGHS'),
('P077','Hemant Yadav','Male',46,'Faridabad','Self Pay'),
('P078','Seema Kapoor','Female',59,'Ghaziabad','PMJAY'),
('P079','Varsha Mehta','Female',32,'Delhi','Private Insurance'),
('P080','Ajay Sharma','Male',53,'Gurgaon','CGHS'),
('P081','Namita Singh','Female',28,'Noida','Self Pay'),
('P082','Sunil Gupta','Male',60,'Delhi','PMJAY'),
('P083','Kritika Arora','Female',35,'Faridabad','Private Insurance'),
('P084','Dinesh Kumar','Male',49,'Ghaziabad','Self Pay'),
('P085','Renu Sharma','Female',63,'Delhi','CGHS'),
('P086','Akhil Verma','Male',41,'Gurgaon','Private Insurance'),
('P087','Manisha Yadav','Female',54,'Noida','PMJAY'),
('P088','Chirag Bhatia','Male',29,'Delhi','Self Pay'),
('P089','Shobha Devi','Female',68,'Faridabad','PMJAY'),
('P090','Yash Mehta','Male',34,'Ghaziabad','Private Insurance'),
('P091','Priti Kapoor','Female',46,'Delhi','CGHS'),
('P092','Sanjeev Sharma','Male',62,'Gurgaon','PMJAY'),
('P093','Riya Gupta','Female',27,'Noida','Self Pay'),
('P094','Mukesh Singh','Male',50,'Delhi','Private Insurance'),
('P095','Ayesha Khan','Female',39,'Faridabad','Self Pay'),
('P096','Bharat Yadav','Male',57,'Ghaziabad','CGHS'),
('P097','Suman Verma','Female',65,'Delhi','PMJAY'),
('P098','Varun Sharma','Male',31,'Gurgaon','Private Insurance'),
('P099','Nikhil Arora','Male',44,'Noida','Self Pay'),
('P100','Poonam Singh','Female',52,'Delhi','Private Insurance');


#Data Analysis

#1 How many total patients are present in the patients table?

select Count(distinct(patient_id)) as Total_Patients from Patients;

#2 How many patients are there in each city?

select city, count(distinct(patient_id)) as Total_Patients from patients
group by city;

#3 Find the number of patients by Gender.

select Gender, count(distinct(patient_id)) as Total_Patient 
from patients 
group by gender;

#4 Find the number of patients under each Insurance Type.

select Insurance_Type, count(distinct(patient_id)) as Total_Patient 
from patients 
group by Insurance_Type;

#5- Find the average age of patients for each Gender.

select Gender, round(avg(age),2) as Average_Age 
from patients 
group by gender;


#6 Find the number of patients for each Insurance Type, broken down by Gender.

select Insurance_type ,Gender,count(Gender) from patients
group by Gender, Insurance_type
order by Insurance_Type, Gender;

#7 Find how many patients have a NULL value in Age.

Select Count(Patient_ID) as Total_Patient from patients
where age is null;

#8 Find all patients who are 60 years or older.

select Patient_id, Patient_name, Age, City from patients
where age >= 60;

select * from patients;

#9 Find all patients who are 60 years or older AND have Private Insurance.

select Patient_id, Patient_name, Age, Insurance_type from patients
where age >= 60 
and Insurance_type = 'Private Insurance';

#10 Find all patients who are from Delhi OR Gurgaon.

select Patient_id, Patient_name, City, Insurance_type from patients
where city = 'Delhi' 
Or City = 'Gurgaon';

#11 Find all patients who are from Delhi ,Gurgaon or Noida.

select Patient_id, Patient_name, City, Insurance_type from patients
where city In ('Delhi', 'Gurgaon', 'Noida');

#12 Question — CASE WHEN + GROUP BY to group patients in age brackets:

Young → Age < 30
Adult → Age 30–59
Senior → Age >= 60

select 
	case 	
		when age < 30 then 'Young'
        when age between 30 and 59 then 'Adult'
        when age >=60 then 'Senior'
        end as Age_Group, count(*) as Total_Patients
        from patients
        group by 
        case 	
			when age < 30 then 'Young'
			when age between 30 and 59 then 'Adult'
			when age >=60 then 'Senior'
            End;
            
#13 Find cities where the average patient age is greater than 45.

select City, avg(age) as Average_Age
from patients
group by city
having Average_Age >45;

#14 Find the insurance types that have more than 20 patients.

select Insurance_Type, count(patient_ID) AS Total_Patients
from patients
group by Insurance_Type
HAVING Total_Patients > 20;


#15 Find all patients whose age is greater than the overall average age of all patients.

select Patient_name , age from patients
where age > ( select avg(age) from patients);

#16 Find the cities where the average patient age is greater than the overall average age of all patients.

select city, avg(age) from patients
group by city
having avg(age) > ( select avg(age) from patients);

#17 Find the total number of admissions for each patient using the Patients and Admissions tables.

select p.patient_id , count(a.Admission_id)
from patients p
inner join admissions a
on p.patient_id = a.patient_id
group by p.patient_id;

SELECT *
FROM Admissions;

DESCRIBE Admissions;

SELECT *
FROM billing;

INSERT INTO Admissions
(Admission_ID, Patient_ID, Doctor_ID, Admission_Date, Discharge_Date, Admission_Type, Admission_Status)
VALUES
('A001','P001','D001',STR_TO_DATE('05-01-2024','%d-%m-%Y'),STR_TO_DATE('09-01-2024','%d-%m-%Y'),'Emergency','Discharged'),
('A002','P002','D003',STR_TO_DATE('08-01-2024','%d-%m-%Y'),STR_TO_DATE('12-01-2024','%d-%m-%Y'),'Planned','Discharged'),
('A003','P003','D007',STR_TO_DATE('12-01-2024','%d-%m-%Y'),STR_TO_DATE('15-01-2024','%d-%m-%Y'),'Emergency','Discharged'),
('A004','P004','D005',STR_TO_DATE('18-01-2024','%d-%m-%Y'),STR_TO_DATE('23-01-2024','%d-%m-%Y'),'Referral','Discharged'),
('A005','P005','D012',STR_TO_DATE('21-01-2024','%d-%m-%Y'),STR_TO_DATE('25-01-2024','%d-%m-%Y'),'Planned','Discharged'),
('A006','P006','D009',STR_TO_DATE('25-01-2024','%d-%m-%Y'),STR_TO_DATE('30-01-2024','%d-%m-%Y'),'Emergency','Discharged'),
('A007','P007','D014',STR_TO_DATE('02-02-2024','%d-%m-%Y'),STR_TO_DATE('04-02-2024','%d-%m-%Y'),'Planned','Discharged'),
('A008','P008','D013',STR_TO_DATE('06-02-2024','%d-%m-%Y'),STR_TO_DATE('11-02-2024','%d-%m-%Y'),'Emergency','Discharged'),
('A009','P009','D010',STR_TO_DATE('10-02-2024','%d-%m-%Y'),STR_TO_DATE('13-02-2024','%d-%m-%Y'),'Referral','Discharged'),
('A010','P010','D015',STR_TO_DATE('15-02-2024','%d-%m-%Y'),STR_TO_DATE('21-02-2024','%d-%m-%Y'),'Emergency','Discharged'),
('A011','P011','D002',STR_TO_DATE('19-02-2024','%d-%m-%Y'),STR_TO_DATE('23-02-2024','%d-%m-%Y'),'Planned','Discharged'),
('A012','P012','D004',STR_TO_DATE('24-02-2024','%d-%m-%Y'),STR_TO_DATE('28-02-2024','%d-%m-%Y'),'Emergency','Discharged'),
('A013','P013','D006',STR_TO_DATE('03-03-2024','%d-%m-%Y'),STR_TO_DATE('07-03-2024','%d-%m-%Y'),'Referral','Discharged'),
('A014','P014','D008',STR_TO_DATE('07-03-2024','%d-%m-%Y'),STR_TO_DATE('10-03-2024','%d-%m-%Y'),'Planned','Discharged'),
('A015','P015','D011',STR_TO_DATE('12-03-2024','%d-%m-%Y'),STR_TO_DATE('15-03-2024','%d-%m-%Y'),'Emergency','Discharged'),
('A016','P016','D001',STR_TO_DATE('18-03-2024','%d-%m-%Y'),STR_TO_DATE('23-03-2024','%d-%m-%Y'),'Referral','Discharged'),
('A017','P017','D003',STR_TO_DATE('22-03-2024','%d-%m-%Y'),STR_TO_DATE('27-03-2024','%d-%m-%Y'),'Emergency','Discharged'),
('A018','P018','D007',STR_TO_DATE('26-03-2024','%d-%m-%Y'),STR_TO_DATE('29-03-2024','%d-%m-%Y'),'Planned','Discharged'),
('A019','P019','D009',STR_TO_DATE('02-04-2024','%d-%m-%Y'),STR_TO_DATE('07-04-2024','%d-%m-%Y'),'Emergency','Discharged'),
('A020','P020','D012',STR_TO_DATE('05-04-2024','%d-%m-%Y'),STR_TO_DATE('09-04-2024','%d-%m-%Y'),'Planned','Discharged'),
('A021','P021','D005',STR_TO_DATE('10-04-2024','%d-%m-%Y'),STR_TO_DATE('16-04-2024','%d-%m-%Y'),'Emergency','Discharged'),
('A022','P022','D013',STR_TO_DATE('15-04-2024','%d-%m-%Y'),STR_TO_DATE('19-04-2024','%d-%m-%Y'),'Referral','Discharged'),
('A023','P023','D010',STR_TO_DATE('20-04-2024','%d-%m-%Y'),STR_TO_DATE('23-04-2024','%d-%m-%Y'),'Planned','Discharged'),
('A024','P024','D015',STR_TO_DATE('25-04-2024','%d-%m-%Y'),STR_TO_DATE('01-05-2024','%d-%m-%Y'),'Emergency','Discharged'),
('A025','P025','D002',STR_TO_DATE('03-05-2024','%d-%m-%Y'),STR_TO_DATE('07-05-2024','%d-%m-%Y'),'Referral','Discharged'),
('A026','P026','D004',STR_TO_DATE('08-05-2024','%d-%m-%Y'),STR_TO_DATE('12-05-2024','%d-%m-%Y'),'Planned','Discharged'),
('A027','P027','D006',STR_TO_DATE('12-05-2024','%d-%m-%Y'),STR_TO_DATE('16-05-2024','%d-%m-%Y'),'Emergency','Discharged'),
('A028','P028','D008',STR_TO_DATE('17-05-2024','%d-%m-%Y'),STR_TO_DATE('20-05-2024','%d-%m-%Y'),'Planned','Discharged'),
('A029','P029','D011',STR_TO_DATE('21-05-2024','%d-%m-%Y'),STR_TO_DATE('26-05-2024','%d-%m-%Y'),'Emergency','Discharged'),
('A030','P030','D001',STR_TO_DATE('25-05-2024','%d-%m-%Y'),STR_TO_DATE('30-05-2024','%d-%m-%Y'),'Referral','Discharged'),
('A031','P031','D003',STR_TO_DATE('02-06-2024','%d-%m-%Y'),STR_TO_DATE('08-06-2024','%d-%m-%Y'),'Emergency','Discharged'),
('A032','P032','D007',STR_TO_DATE('06-06-2024','%d-%m-%Y'),STR_TO_DATE('10-06-2024','%d-%m-%Y'),'Planned','Discharged'),
('A033','P033','D009',STR_TO_DATE('11-06-2024','%d-%m-%Y'),STR_TO_DATE('15-06-2024','%d-%m-%Y'),'Referral','Discharged'),
('A034','P034','D012',STR_TO_DATE('15-06-2024','%d-%m-%Y'),STR_TO_DATE('20-06-2024','%d-%m-%Y'),'Emergency','Discharged'),
('A035','P035','D005',STR_TO_DATE('20-06-2024','%d-%m-%Y'),STR_TO_DATE('24-06-2024','%d-%m-%Y'),'Planned','Discharged'),
('A036','P036','D013',STR_TO_DATE('25-06-2024','%d-%m-%Y'),STR_TO_DATE('30-06-2024','%d-%m-%Y'),'Emergency','Discharged'),
('A037','P037','D010',STR_TO_DATE('02-07-2024','%d-%m-%Y'),STR_TO_DATE('05-07-2024','%d-%m-%Y'),'Referral','Discharged'),
('A038','P038','D015',STR_TO_DATE('06-07-2024','%d-%m-%Y'),STR_TO_DATE('11-07-2024','%d-%m-%Y'),'Emergency','Discharged'),
('A039','P039','D002',STR_TO_DATE('10-07-2024','%d-%m-%Y'),STR_TO_DATE('14-07-2024','%d-%m-%Y'),'Planned','Discharged'),
('A040','P040','D004',STR_TO_DATE('15-07-2024','%d-%m-%Y'),STR_TO_DATE('19-07-2024','%d-%m-%Y'),'Emergency','Discharged'),
('A041','P041','D006',STR_TO_DATE('20-07-2024','%d-%m-%Y'),STR_TO_DATE('24-07-2024','%d-%m-%Y'),'Referral','Discharged'),
('A042','P042','D008',STR_TO_DATE('24-07-2024','%d-%m-%Y'),STR_TO_DATE('27-07-2024','%d-%m-%Y'),'Planned','Discharged'),
('A043','P043','D011',STR_TO_DATE('28-07-2024','%d-%m-%Y'),STR_TO_DATE('02-08-2024','%d-%m-%Y'),'Emergency','Discharged'),
('A044','P044','D001',STR_TO_DATE('03-08-2024','%d-%m-%Y'),STR_TO_DATE('08-08-2024','%d-%m-%Y'),'Referral','Discharged'),
('A045','P045','D003',STR_TO_DATE('07-08-2024','%d-%m-%Y'),STR_TO_DATE('12-08-2024','%d-%m-%Y'),'Emergency','Discharged'),
('A046','P046','D007',STR_TO_DATE('12-08-2024','%d-%m-%Y'),STR_TO_DATE('15-08-2024','%d-%m-%Y'),'Planned','Discharged'),
('A047','P047','D009',STR_TO_DATE('16-08-2024','%d-%m-%Y'),STR_TO_DATE('21-08-2024','%d-%m-%Y'),'Emergency','Discharged'),
('A048','P048','D012',STR_TO_DATE('20-08-2024','%d-%m-%Y'),STR_TO_DATE('24-08-2024','%d-%m-%Y'),'Referral','Discharged'),
('A049','P049','D005',STR_TO_DATE('25-08-2024','%d-%m-%Y'),STR_TO_DATE('30-08-2024','%d-%m-%Y'),'Emergency','Discharged'),
('A050','P050','D013',STR_TO_DATE('01-09-2024','%d-%m-%Y'),STR_TO_DATE('05-09-2024','%d-%m-%Y'),'Planned','Discharged'),
('A051','P051','D010',STR_TO_DATE('05-09-2024','%d-%m-%Y'),STR_TO_DATE('09-09-2024','%d-%m-%Y'),'Referral','Discharged'),
('A052','P052','D015',STR_TO_DATE('10-09-2024','%d-%m-%Y'),STR_TO_DATE('16-09-2024','%d-%m-%Y'),'Emergency','Discharged'),
('A053','P053','D002',STR_TO_DATE('14-09-2024','%d-%m-%Y'),STR_TO_DATE('18-09-2024','%d-%m-%Y'),'Planned','Discharged'),
('A054','P054','D004',STR_TO_DATE('18-09-2024','%d-%m-%Y'),STR_TO_DATE('22-09-2024','%d-%m-%Y'),'Emergency','Discharged'),
('A055','P055','D006',STR_TO_DATE('22-09-2024','%d-%m-%Y'),STR_TO_DATE('26-09-2024','%d-%m-%Y'),'Referral','Discharged'),
('A056','P056','D008',STR_TO_DATE('26-09-2024','%d-%m-%Y'),STR_TO_DATE('29-09-2024','%d-%m-%Y'),'Planned','Discharged'),
('A057','P057','D011',STR_TO_DATE('02-10-2024','%d-%m-%Y'),STR_TO_DATE('07-10-2024','%d-%m-%Y'),'Emergency','Discharged'),
('A058','P058','D001',STR_TO_DATE('06-10-2024','%d-%m-%Y'),STR_TO_DATE('11-10-2024','%d-%m-%Y'),'Referral','Discharged'),
('A059','P059','D003',STR_TO_DATE('10-10-2024','%d-%m-%Y'),STR_TO_DATE('15-10-2024','%d-%m-%Y'),'Emergency','Discharged'),
('A060','P060','D007',STR_TO_DATE('15-10-2024','%d-%m-%Y'),STR_TO_DATE('19-10-2024','%d-%m-%Y'),'Planned','Discharged'),
('A061','P061','D009',STR_TO_DATE('20-10-2024','%d-%m-%Y'),STR_TO_DATE('25-10-2024','%d-%m-%Y'),'Emergency','Discharged'),
('A062','P062','D012',STR_TO_DATE('24-10-2024','%d-%m-%Y'),STR_TO_DATE('29-10-2024','%d-%m-%Y'),'Referral','Discharged'),
('A063','P063','D005',STR_TO_DATE('28-10-2024','%d-%m-%Y'),STR_TO_DATE('02-11-2024','%d-%m-%Y'),'Emergency','Discharged'),
('A064','P064','D013',STR_TO_DATE('03-11-2024','%d-%m-%Y'),STR_TO_DATE('08-11-2024','%d-%m-%Y'),'Planned','Discharged'),
('A065','P065','D010',STR_TO_DATE('07-11-2024','%d-%m-%Y'),STR_TO_DATE('11-11-2024','%d-%m-%Y'),'Referral','Discharged'),
('A066','P066','D015',STR_TO_DATE('12-11-2024','%d-%m-%Y'),STR_TO_DATE('18-11-2024','%d-%m-%Y'),'Emergency','Discharged'),
('A067','P067','D002',STR_TO_DATE('16-11-2024','%d-%m-%Y'),STR_TO_DATE('20-11-2024','%d-%m-%Y'),'Planned','Discharged'),
('A068','P068','D004',STR_TO_DATE('20-11-2024','%d-%m-%Y'),STR_TO_DATE('24-11-2024','%d-%m-%Y'),'Emergency','Discharged'),
('A069','P069','D006',STR_TO_DATE('25-11-2024','%d-%m-%Y'),STR_TO_DATE('29-11-2024','%d-%m-%Y'),'Referral','Discharged'),
('A070','P070','D008',STR_TO_DATE('01-12-2024','%d-%m-%Y'),STR_TO_DATE('04-12-2024','%d-%m-%Y'),'Planned','Discharged'),
('A071','P071','D011',STR_TO_DATE('05-12-2024','%d-%m-%Y'),STR_TO_DATE('10-12-2024','%d-%m-%Y'),'Emergency','Discharged'),
('A072','P072','D001',STR_TO_DATE('10-12-2024','%d-%m-%Y'),STR_TO_DATE('15-12-2024','%d-%m-%Y'),'Referral','Discharged'),
('A073','P073','D003',STR_TO_DATE('14-12-2024','%d-%m-%Y'),STR_TO_DATE('19-12-2024','%d-%m-%Y'),'Emergency','Discharged'),
('A074','P074','D007',STR_TO_DATE('19-12-2024','%d-%m-%Y'),STR_TO_DATE('23-12-2024','%d-%m-%Y'),'Planned','Discharged'),
('A075','P075','D009',STR_TO_DATE('24-12-2024','%d-%m-%Y'),STR_TO_DATE('29-12-2024','%d-%m-%Y'),'Emergency','Discharged'),
('A076','P001','D001',STR_TO_DATE('04-01-2025','%d-%m-%Y'),STR_TO_DATE('08-01-2025','%d-%m-%Y'),'Planned','Discharged'),
('A077','P002','D003',STR_TO_DATE('08-01-2025','%d-%m-%Y'),STR_TO_DATE('13-01-2025','%d-%m-%Y'),'Emergency','Discharged'),
('A078','P003','D007',STR_TO_DATE('14-01-2025','%d-%m-%Y'),STR_TO_DATE('17-01-2025','%d-%m-%Y'),'Referral','Discharged'),
('A079','P005','D012',STR_TO_DATE('20-01-2025','%d-%m-%Y'),STR_TO_DATE('25-01-2025','%d-%m-%Y'),'Emergency','Discharged'),
('A080','P008','D013',STR_TO_DATE('24-01-2025','%d-%m-%Y'),STR_TO_DATE('29-01-2025','%d-%m-%Y'),'Planned','Discharged'),
('A081','P010','D015',STR_TO_DATE('02-02-2025','%d-%m-%Y'),STR_TO_DATE('08-02-2025','%d-%m-%Y'),'Emergency','Discharged'),
('A082','P012','D004',STR_TO_DATE('06-02-2025','%d-%m-%Y'),STR_TO_DATE('10-02-2025','%d-%m-%Y'),'Referral','Discharged'),
('A083','P015','D011',STR_TO_DATE('11-02-2025','%d-%m-%Y'),STR_TO_DATE('15-02-2025','%d-%m-%Y'),'Planned','Discharged'),
('A084','P018','D007',STR_TO_DATE('16-02-2025','%d-%m-%Y'),STR_TO_DATE('20-02-2025','%d-%m-%Y'),'Emergency','Discharged'),
('A085','P020','D012',STR_TO_DATE('21-02-2025','%d-%m-%Y'),STR_TO_DATE('26-02-2025','%d-%m-%Y'),'Referral','Discharged'),
('A086','P021','D005',STR_TO_DATE('01-03-2025','%d-%m-%Y'),STR_TO_DATE('07-03-2025','%d-%m-%Y'),'Emergency','Discharged'),
('A087','P024','D015',STR_TO_DATE('05-03-2025','%d-%m-%Y'),STR_TO_DATE('10-03-2025','%d-%m-%Y'),'Planned','Discharged'),
('A088','P027','D006',STR_TO_DATE('10-03-2025','%d-%m-%Y'),STR_TO_DATE('14-03-2025','%d-%m-%Y'),'Emergency','Discharged'),
('A089','P030','D001',STR_TO_DATE('15-03-2025','%d-%m-%Y'),STR_TO_DATE('20-03-2025','%d-%m-%Y'),'Referral','Discharged'),
('A090','P033','D009',STR_TO_DATE('20-03-2025','%d-%m-%Y'),STR_TO_DATE('25-03-2025','%d-%m-%Y'),'Emergency','Discharged'),
('A091','P036','D013',STR_TO_DATE('24-03-2025','%d-%m-%Y'),STR_TO_DATE('29-03-2025','%d-%m-%Y'),'Planned','Discharged'),
('A092','P039','D002',STR_TO_DATE('02-04-2025','%d-%m-%Y'),STR_TO_DATE('06-04-2025','%d-%m-%Y'),'Referral','Discharged'),
('A093','P042','D008',STR_TO_DATE('07-04-2025','%d-%m-%Y'),STR_TO_DATE('11-04-2025','%d-%m-%Y'),'Emergency','Discharged'),
('A094','P045','D003',STR_TO_DATE('12-04-2025','%d-%m-%Y'),STR_TO_DATE('17-04-2025','%d-%m-%Y'),'Planned','Discharged'),
('A095','P048','D012',STR_TO_DATE('18-04-2025','%d-%m-%Y'),STR_TO_DATE('22-04-2025','%d-%m-%Y'),'Emergency','Discharged'),
('A096','P050','D013',STR_TO_DATE('22-04-2025','%d-%m-%Y'),STR_TO_DATE('27-04-2025','%d-%m-%Y'),'Referral','Discharged'),
('A097','P052','D015',STR_TO_DATE('28-04-2025','%d-%m-%Y'),STR_TO_DATE('04-05-2025','%d-%m-%Y'),'Emergency','Discharged'),
('A098','P054','D004',STR_TO_DATE('03-05-2025','%d-%m-%Y'),STR_TO_DATE('07-05-2025','%d-%m-%Y'),'Planned','Discharged'),
('A099','P056','D008',STR_TO_DATE('08-05-2025','%d-%m-%Y'),STR_TO_DATE('12-05-2025','%d-%m-%Y'),'Referral','Discharged'),
('A100','P058','D001',STR_TO_DATE('12-05-2025','%d-%m-%Y'),STR_TO_DATE('17-05-2025','%d-%m-%Y'),'Emergency','Discharged'),
('A101','P060','D007',STR_TO_DATE('18-05-2025','%d-%m-%Y'),STR_TO_DATE('22-05-2025','%d-%m-%Y'),'Planned','Discharged'),
('A102','P062','D005',STR_TO_DATE('23-05-2025','%d-%m-%Y'),STR_TO_DATE('28-05-2025','%d-%m-%Y'),'Emergency','Discharged'),
('A103','P064','D013',STR_TO_DATE('28-05-2025','%d-%m-%Y'),STR_TO_DATE('02-06-2025','%d-%m-%Y'),'Referral','Discharged'),
('A104','P066','D015',STR_TO_DATE('03-06-2025','%d-%m-%Y'),STR_TO_DATE('09-06-2025','%d-%m-%Y'),'Emergency','Discharged'),
('A105','P068','D004',STR_TO_DATE('08-06-2025','%d-%m-%Y'),STR_TO_DATE('12-06-2025','%d-%m-%Y'),'Planned','Discharged'),
('A106','P070','D008',STR_TO_DATE('13-06-2025','%d-%m-%Y'),STR_TO_DATE('17-06-2025','%d-%m-%Y'),'Referral','Discharged'),
('A107','P072','D001',STR_TO_DATE('18-06-2025','%d-%m-%Y'),STR_TO_DATE('23-06-2025','%d-%m-%Y'),'Emergency','Discharged'),
('A108','P074','D003',STR_TO_DATE('23-06-2025','%d-%m-%Y'),STR_TO_DATE('28-06-2025','%d-%m-%Y'),'Planned','Discharged'),
('A109','P076','D009',STR_TO_DATE('28-06-2025','%d-%m-%Y'),STR_TO_DATE('03-07-2025','%d-%m-%Y'),'Emergency','Discharged'),
('A110','P077','D010',STR_TO_DATE('02-07-2025','%d-%m-%Y'),STR_TO_DATE('06-07-2025','%d-%m-%Y'),'Referral','Discharged'),
('A111','P078','D011',STR_TO_DATE('07-07-2025','%d-%m-%Y'),STR_TO_DATE('11-07-2025','%d-%m-%Y'),'Planned','Discharged'),
('A112','P079','D006',STR_TO_DATE('12-07-2025','%d-%m-%Y'),STR_TO_DATE('17-07-2025','%d-%m-%Y'),'Emergency','Discharged'),
('A113','P080','D002',STR_TO_DATE('17-07-2025','%d-%m-%Y'),STR_TO_DATE('21-07-2025','%d-%m-%Y'),'Referral','Discharged'),
('A114','P081','D014',STR_TO_DATE('22-07-2025','%d-%m-%Y'),STR_TO_DATE('25-07-2025','%d-%m-%Y'),'Planned','Discharged'),
('A115','P082','D005',STR_TO_DATE('26-07-2025','%d-%m-%Y'),STR_TO_DATE('31-07-2025','%d-%m-%Y'),'Emergency','Discharged'),
('A116','P083','D013',STR_TO_DATE('01-08-2025','%d-%m-%Y'),STR_TO_DATE('06-08-2025','%d-%m-%Y'),'Referral','Discharged'),
('A117','P084','D015',STR_TO_DATE('06-08-2025','%d-%m-%Y'),STR_TO_DATE('12-08-2025','%d-%m-%Y'),'Emergency','Discharged'),
('A118','P085','D007',STR_TO_DATE('11-08-2025','%d-%m-%Y'),STR_TO_DATE('15-08-2025','%d-%m-%Y'),'Planned','Discharged'),
('A119','P086','D009',STR_TO_DATE('16-08-2025','%d-%m-%Y'),STR_TO_DATE('21-08-2025','%d-%m-%Y'),'Emergency','Discharged'),
('A120','P087','D012',STR_TO_DATE('21-08-2025','%d-%m-%Y'),STR_TO_DATE('26-08-2025','%d-%m-%Y'),'Referral','Discharged'),
('A121','P088','D004',STR_TO_DATE('26-08-2025','%d-%m-%Y'),STR_TO_DATE('30-08-2025','%d-%m-%Y'),'Planned','Discharged'),
('A122','P089','D006',STR_TO_DATE('01-09-2025','%d-%m-%Y'),STR_TO_DATE('05-09-2025','%d-%m-%Y'),'Emergency','Discharged'),
('A123','P090','D008',STR_TO_DATE('05-09-2025','%d-%m-%Y'),STR_TO_DATE('09-09-2025','%d-%m-%Y'),'Referral','Discharged'),
('A124','P091','D011',STR_TO_DATE('10-09-2025','%d-%m-%Y'),STR_TO_DATE('15-09-2025','%d-%m-%Y'),'Emergency','Discharged'),
('A125','P092','D001',STR_TO_DATE('14-09-2025','%d-%m-%Y'),STR_TO_DATE('19-09-2025','%d-%m-%Y'),'Planned','Discharged'),
('A126','P093','D003',STR_TO_DATE('19-09-2025','%d-%m-%Y'),STR_TO_DATE('24-09-2025','%d-%m-%Y'),'Emergency','Discharged'),
('A127','P094','D007',STR_TO_DATE('24-09-2025','%d-%m-%Y'),STR_TO_DATE('28-09-2025','%d-%m-%Y'),'Referral','Discharged'),
('A128','P095','D009',STR_TO_DATE('01-10-2025','%d-%m-%Y'),STR_TO_DATE('06-10-2025','%d-%m-%Y'),'Emergency','Discharged'),
('A129','P096','D012',STR_TO_DATE('05-10-2025','%d-%m-%Y'),STR_TO_DATE('10-10-2025','%d-%m-%Y'),'Planned','Discharged'),
('A130','P097','D005',STR_TO_DATE('10-10-2025','%d-%m-%Y'),STR_TO_DATE('16-10-2025','%d-%m-%Y'),'Emergency','Discharged'),
('A131','P098','D013',STR_TO_DATE('15-10-2025','%d-%m-%Y'),STR_TO_DATE('20-10-2025','%d-%m-%Y'),'Referral','Discharged'),
('A132','P099','D015',STR_TO_DATE('20-10-2025','%d-%m-%Y'),STR_TO_DATE('26-10-2025','%d-%m-%Y'),'Emergency','Discharged'),
('A133','P100','D010',STR_TO_DATE('25-10-2025','%d-%m-%Y'),STR_TO_DATE('29-10-2025','%d-%m-%Y'),'Planned','Discharged'),
('A134','P001','D001',STR_TO_DATE('30-10-2025','%d-%m-%Y'),STR_TO_DATE('04-11-2025','%d-%m-%Y'),'Emergency','Discharged'),
('A135','P005','D012',STR_TO_DATE('03-11-2025','%d-%m-%Y'),STR_TO_DATE('08-11-2025','%d-%m-%Y'),'Referral','Discharged'),
('A136','P010','D015',STR_TO_DATE('08-11-2025','%d-%m-%Y'),STR_TO_DATE('14-11-2025','%d-%m-%Y'),'Emergency','Discharged'),
('A137','P015','D011',STR_TO_DATE('12-11-2025','%d-%m-%Y'),STR_TO_DATE('16-11-2025','%d-%m-%Y'),'Planned','Discharged'),
('A138','P020','D012',STR_TO_DATE('17-11-2025','%d-%m-%Y'),STR_TO_DATE('22-11-2025','%d-%m-%Y'),'Emergency','Discharged'),
('A139','P025','D002',STR_TO_DATE('22-11-2025','%d-%m-%Y'),STR_TO_DATE('26-11-2025','%d-%m-%Y'),'Referral','Discharged'),
('A140','P030','D001',STR_TO_DATE('27-11-2025','%d-%m-%Y'),STR_TO_DATE('02-12-2025','%d-%m-%Y'),'Emergency','Discharged'),
('A141','P035','D005',STR_TO_DATE('01-12-2025','%d-%m-%Y'),STR_TO_DATE('06-12-2025','%d-%m-%Y'),'Planned','Discharged'),
('A142','P040','D004',STR_TO_DATE('05-12-2025','%d-%m-%Y'),STR_TO_DATE('09-12-2025','%d-%m-%Y'),'Emergency','Discharged'),
('A143','P045','D003',STR_TO_DATE('10-12-2025','%d-%m-%Y'),STR_TO_DATE('15-12-2025','%d-%m-%Y'),'Referral','Discharged'),
('A144','P050','D013',STR_TO_DATE('15-12-2025','%d-%m-%Y'),STR_TO_DATE('20-12-2025','%d-%m-%Y'),'Emergency','Discharged'),
('A145','P055','D006',STR_TO_DATE('20-12-2025','%d-%m-%Y'),STR_TO_DATE('24-12-2025','%d-%m-%Y'),'Planned','Discharged'),
('A146','P060','D007',STR_TO_DATE('24-12-2025','%d-%m-%Y'),STR_TO_DATE('29-12-2025','%d-%m-%Y'),'Emergency','Discharged'),
('A147','P065','D010',STR_TO_DATE('27-12-2025','%d-%m-%Y'),STR_TO_DATE('31-12-2025','%d-%m-%Y'),'Referral','Discharged'),
('A148','P070','D008',STR_TO_DATE('29-12-2025','%d-%m-%Y'),STR_TO_DATE('03-01-2026','%d-%m-%Y'),'Emergency','Discharged'),
('A149','P075','D009',STR_TO_DATE('30-12-2025','%d-%m-%Y'),STR_TO_DATE('04-01-2026','%d-%m-%Y'),'Planned','Discharged'),
('A150','P080','D011',STR_TO_DATE('31-12-2025','%d-%m-%Y'),STR_TO_DATE('05-01-2026','%d-%m-%Y'),'Emergency','Discharged'),
('A151','P081','D014',STR_TO_DATE('05-02-2024','%d-%m-%Y'),STR_TO_DATE('08-02-2024','%d-%m-%Y'),'Planned','Discharged'),
('A152','P082','D005',STR_TO_DATE('15-03-2024','%d-%m-%Y'),STR_TO_DATE('20-03-2024','%d-%m-%Y'),'Emergency','Discharged'),
('A153','P083','D013',STR_TO_DATE('12-04-2024','%d-%m-%Y'),STR_TO_DATE('17-04-2024','%d-%m-%Y'),'Referral','Discharged'),
('A154','P084','D015',STR_TO_DATE('18-05-2024','%d-%m-%Y'),STR_TO_DATE('24-05-2024','%d-%m-%Y'),'Emergency','Discharged'),
('A155','P085','D007',STR_TO_DATE('22-06-2024','%d-%m-%Y'),STR_TO_DATE('26-06-2024','%d-%m-%Y'),'Planned','Discharged'),
('A156','P086','D009',STR_TO_DATE('18-07-2024','%d-%m-%Y'),STR_TO_DATE('23-07-2024','%d-%m-%Y'),'Emergency','Discharged'),
('A157','P087','D012',STR_TO_DATE('14-08-2024','%d-%m-%Y'),STR_TO_DATE('18-08-2024','%d-%m-%Y'),'Referral','Discharged'),
('A158','P088','D004',STR_TO_DATE('08-09-2024','%d-%m-%Y'),STR_TO_DATE('13-09-2024','%d-%m-%Y'),'Emergency','Discharged'),
('A159','P089','D006',STR_TO_DATE('13-10-2024','%d-%m-%Y'),STR_TO_DATE('17-10-2024','%d-%m-%Y'),'Planned','Discharged'),
('A160','P090','D008',STR_TO_DATE('18-11-2024','%d-%m-%Y'),STR_TO_DATE('22-11-2024','%d-%m-%Y'),'Emergency','Discharged'),
('A161','P091','D011',STR_TO_DATE('08-12-2024','%d-%m-%Y'),STR_TO_DATE('13-12-2024','%d-%m-%Y'),'Referral','Discharged'),
('A162','P092','D001',STR_TO_DATE('15-01-2025','%d-%m-%Y'),STR_TO_DATE('20-01-2025','%d-%m-%Y'),'Emergency','Discharged'),
('A163','P093','D003',STR_TO_DATE('18-02-2025','%d-%m-%Y'),STR_TO_DATE('23-02-2025','%d-%m-%Y'),'Planned','Discharged'),
('A164','P094','D007',STR_TO_DATE('22-03-2025','%d-%m-%Y'),STR_TO_DATE('27-03-2025','%d-%m-%Y'),'Emergency','Discharged'),
('A165','P095','D009',STR_TO_DATE('25-04-2025','%d-%m-%Y'),STR_TO_DATE('30-04-2025','%d-%m-%Y'),'Referral','Discharged'),
('A166','P096','D012',STR_TO_DATE('20-05-2025','%d-%m-%Y'),STR_TO_DATE('25-05-2025','%d-%m-%Y'),'Emergency','Discharged'),
('A167','P097','D005',STR_TO_DATE('15-06-2025','%d-%m-%Y'),STR_TO_DATE('20-06-2025','%d-%m-%Y'),'Planned','Discharged'),
('A168','P098','D013',STR_TO_DATE('18-07-2025','%d-%m-%Y'),STR_TO_DATE('23-07-2025','%d-%m-%Y'),'Emergency','Discharged'),
('A169','P099','D015',STR_TO_DATE('20-08-2025','%d-%m-%Y'),STR_TO_DATE('26-08-2025','%d-%m-%Y'),'Referral','Discharged'),
('A170','P100','D010',STR_TO_DATE('22-09-2025','%d-%m-%Y'),STR_TO_DATE('26-09-2025','%d-%m-%Y'),'Emergency','Discharged'),
('A171','P001','D002',STR_TO_DATE('10-02-2025','%d-%m-%Y'),STR_TO_DATE('14-02-2025','%d-%m-%Y'),'Referral','Discharged'),
('A172','P002','D004',STR_TO_DATE('15-04-2025','%d-%m-%Y'),STR_TO_DATE('20-04-2025','%d-%m-%Y'),'Emergency','Discharged'),
('A173','P003','D008',STR_TO_DATE('12-06-2025','%d-%m-%Y'),STR_TO_DATE('16-06-2025','%d-%m-%Y'),'Planned','Discharged'),
('A174','P004','D006',STR_TO_DATE('10-08-2025','%d-%m-%Y'),STR_TO_DATE('15-08-2025','%d-%m-%Y'),'Emergency','Discharged'),
('A175','P005','D012',STR_TO_DATE('12-10-2025','%d-%m-%Y'),STR_TO_DATE('17-10-2025','%d-%m-%Y'),'Planned','Discharged'),
('A176','P010','D015',STR_TO_DATE('05-12-2025','%d-%m-%Y'),STR_TO_DATE('11-12-2025','%d-%m-%Y'),'Emergency','Discharged'),
('A177','P015','D011',STR_TO_DATE('12-12-2025','%d-%m-%Y'),STR_TO_DATE('16-12-2025','%d-%m-%Y'),'Referral','Discharged'),
('A178','P020','D012',STR_TO_DATE('18-12-2025','%d-%m-%Y'),STR_TO_DATE('23-12-2025','%d-%m-%Y'),'Emergency','Discharged'),
('A179','P025','D002',STR_TO_DATE('20-12-2025','%d-%m-%Y'),STR_TO_DATE('24-12-2025','%d-%m-%Y'),'Planned','Discharged'),
('A180','P030','D001',STR_TO_DATE('22-12-2025','%d-%m-%Y'),STR_TO_DATE('28-12-2025','%d-%m-%Y'),'Emergency','Discharged'),
('A181','P035','D005',STR_TO_DATE('23-12-2025','%d-%m-%Y'),STR_TO_DATE('27-12-2025','%d-%m-%Y'),'Referral','Discharged'),
('A182','P040','D004',STR_TO_DATE('24-12-2025','%d-%m-%Y'),STR_TO_DATE('29-12-2025','%d-%m-%Y'),'Emergency','Discharged'),
('A183','P045','D003',STR_TO_DATE('25-12-2025','%d-%m-%Y'),STR_TO_DATE('30-12-2025','%d-%m-%Y'),'Planned','Discharged'),
('A184','P050','D013',STR_TO_DATE('26-12-2025','%d-%m-%Y'),STR_TO_DATE('31-12-2025','%d-%m-%Y'),'Emergency','Discharged'),
('A185','P055','D006',STR_TO_DATE('27-12-2025','%d-%m-%Y'),STR_TO_DATE('30-12-2025','%d-%m-%Y'),'Referral','Discharged'),
('A186','P060','D007',STR_TO_DATE('28-12-2025','%d-%m-%Y'),STR_TO_DATE('02-01-2026','%d-%m-%Y'),'Emergency','Discharged'),
('A187','P065','D010',STR_TO_DATE('29-12-2025','%d-%m-%Y'),STR_TO_DATE('03-01-2026','%d-%m-%Y'),'Planned','Discharged'),
('A188','P070','D008',STR_TO_DATE('30-12-2025','%d-%m-%Y'),STR_TO_DATE('04-01-2026','%d-%m-%Y'),'Emergency','Discharged'),
('A189','P075','D009',STR_TO_DATE('31-12-2025','%d-%m-%Y'),STR_TO_DATE('05-01-2026','%d-%m-%Y'),'Referral','Discharged'),
('A190','P080','D011',STR_TO_DATE('31-12-2025','%d-%m-%Y'),STR_TO_DATE('06-01-2026','%d-%m-%Y'),'Emergency','Discharged'),
('A191','P011','D002',STR_TO_DATE('25-01-2025','%d-%m-%Y'),STR_TO_DATE('29-01-2025','%d-%m-%Y'),'Planned','Discharged'),
('A192','P022','D013',STR_TO_DATE('25-02-2025','%d-%m-%Y'),STR_TO_DATE('02-03-2025','%d-%m-%Y'),'Emergency','Discharged'),
('A193','P033','D009',STR_TO_DATE('08-04-2025','%d-%m-%Y'),STR_TO_DATE('13-04-2025','%d-%m-%Y'),'Referral','Discharged'),
('A194','P044','D001',STR_TO_DATE('05-06-2025','%d-%m-%Y'),STR_TO_DATE('10-06-2025','%d-%m-%Y'),'Emergency','Discharged'),
('A195','P055','D006',STR_TO_DATE('05-08-2025','%d-%m-%Y'),STR_TO_DATE('09-08-2025','%d-%m-%Y'),'Planned','Discharged'),
('A196','P066','D015',STR_TO_DATE('08-09-2025','%d-%m-%Y'),STR_TO_DATE('14-09-2025','%d-%m-%Y'),'Emergency','Discharged'),
('A197','P077','D010',STR_TO_DATE('08-10-2025','%d-%m-%Y'),STR_TO_DATE('12-10-2025','%d-%m-%Y'),'Referral','Discharged'),
('A198','P088','D004',STR_TO_DATE('05-11-2025','%d-%m-%Y'),STR_TO_DATE('10-11-2025','%d-%m-%Y'),'Emergency','Discharged'),
('A199','P099','D015',STR_TO_DATE('08-12-2025','%d-%m-%Y'),STR_TO_DATE('13-12-2025','%d-%m-%Y'),'Planned','Discharged'),
('A200','P100','D010',STR_TO_DATE('15-12-2025','%d-%m-%Y'),STR_TO_DATE('20-12-2025','%d-%m-%Y'),'Emergency','Discharged');

select count(*) from admissions;

INSERT INTO Billing
(
    bill_id,
    admission_id,
    consultation_fee,
    room_charges,
    medicine_charges,
    procedure_charges,
    total_bill,
    payment_status,
    payment_mode
)
VALUES
('B001','A001',2500,12000,4500,8000,27000,'Paid','UPI'),
('B002','A002',2000,10000,3500,5000,20500,'Paid','Credit Card'),
('B003','A003',1500,8000,2800,3000,15300,'Paid','Cash'),
('B004','A004',3000,15000,5200,12000,35200,'Paid','Insurance'),
('B005','A005',1800,9000,3200,4500,18500,'Paid','UPI'),
('B006','A006',2500,14000,4800,15000,36300,'Pending','Insurance'),
('B007','A007',1200,5000,1800,2500,10500,'Paid','Debit Card'),
('B008','A008',2800,16000,5500,14000,38300,'Paid','Insurance'),
('B009','A009',1800,7000,2400,3500,14700,'Paid','UPI'),
('B010','A010',3200,18000,6200,22000,49400,'Paid','Insurance'),
('B011','A011',2000,10000,3500,4500,20000,'Paid','UPI'),
('B012','A012',1800,11000,4200,6000,23000,'Pending','Cash'),
('B013','A013',3000,14000,5000,10000,32000,'Paid','Insurance'),
('B014','A014',1500,7000,2200,3000,13700,'Paid','Debit Card'),
('B015','A015',2200,9000,3000,5500,19700,'Paid','UPI'),
('B016','A016',2800,13000,4600,9000,29400,'Paid','Insurance'),
('B017','A017',2500,15000,5200,13000,35700,'Paid','Credit Card'),
('B018','A018',1600,8000,2600,3500,15700,'Paid','UPI'),
('B019','A019',3000,15000,5800,18000,41800,'Pending','Insurance'),
('B020','A020',2000,9000,3300,5000,19300,'Paid','UPI'),
('B021','A021',2800,16000,5200,12000,36000,'Paid','Insurance'),
('B022','A022',3000,12000,4100,8500,27600,'Paid','Credit Card'),
('B023','A023',1800,7000,2500,3500,14800,'Paid','UPI'),
('B024','A024',3200,18000,6500,25000,52700,'Paid','Insurance'),
('B025','A025',2200,10000,3600,6000,21800,'Pending','Insurance'),
('B026','A026',1800,9000,2900,4500,18200,'Paid','UPI'),
('B027','A027',2400,11000,4200,7000,24600,'Paid','Cash'),
('B028','A028',1500,7000,2100,3000,13600,'Paid','Debit Card'),
('B029','A029',2200,13000,4800,9500,29500,'Paid','UPI'),
('B030','A030',3000,15000,5400,14000,37400,'Paid','Insurance'),
('B031','A031',2800,17000,6200,16000,42000,'Paid','Insurance'),
('B032','A032',1800,9000,3100,4500,18400,'Paid','UPI'),
('B033','A033',3000,12000,4500,9000,28500,'Pending','Insurance'),
('B034','A034',2500,14000,5000,11000,32500,'Paid','Credit Card'),
('B035','A035',2200,10000,3500,6000,21700,'Paid','UPI'),
('B036','A036',2800,15000,5500,13000,36300,'Paid','Insurance'),
('B037','A037',1800,7000,2400,3500,14700,'Paid','Cash'),
('B038','A038',3200,17000,6200,18000,44400,'Paid','Insurance'),
('B039','A039',2000,9000,3000,4500,18500,'Pending','UPI'),
('B040','A040',2500,12000,4200,7500,26200,'Paid','Insurance'),
('B041','A041',2400,11000,4000,6500,23900,'Paid','UPI'),
('B042','A042',1500,7000,2200,3000,13700,'Paid','Debit Card'),
('B043','A043',2200,13000,4800,10000,30000,'Paid','Insurance'),
('B044','A044',3000,15000,5500,14000,37500,'Pending','Insurance'),
('B045','A045',2800,16000,6000,15000,39800,'Paid','Credit Card'),
('B046','A046',1800,8000,2800,4000,16600,'Paid','UPI'),
('B047','A047',3000,15000,5200,12000,35200,'Paid','Insurance'),
('B048','A048',2200,10000,3600,6500,22300,'Paid','UPI'),
('B049','A049',2500,14000,5000,10000,31500,'Paid','Insurance'),
('B050','A050',2000,9000,3200,4500,18700,'Paid','Cash'),
('B051','A051',1800,7000,2500,3500,14800,'Paid','UPI'),
('B052','A052',3200,18000,6500,20000,47700,'Pending','Insurance'),
('B053','A053',2000,9000,3000,4500,18500,'Paid','Debit Card'),
('B054','A054',2500,12000,4300,8000,26800,'Paid','UPI'),
('B055','A055',2200,10000,3600,6000,21800,'Paid','Insurance'),
('B056','A056',1500,7000,2100,3000,13600,'Paid','UPI'),
('B057','A057',2800,14000,5000,12000,33800,'Paid','Insurance'),
('B058','A058',3000,15000,5500,15000,38500,'Pending','Insurance'),
('B059','A059',2500,13000,4700,9000,29200,'Paid','Credit Card'),
('B060','A060',1800,8000,2800,4000,16600,'Paid','UPI'),
('B061','A061',3000,16000,6000,17000,42000,'Paid','Insurance'),
('B062','A062',2500,12000,4200,8500,27200,'Paid','UPI'),
('B063','A063',2800,14000,5200,11000,33000,'Pending','Insurance'),
('B064','A064',2000,10000,3500,5500,21000,'Paid','UPI'),
('B065','A065',1800,8000,2700,3500,16000,'Paid','Debit Card'),
('B066','A066',3200,18000,6500,22000,49700,'Paid','Insurance'),
('B067','A067',2000,9000,3100,4500,18600,'Paid','UPI'),
('B068','A068',2500,12000,4300,8000,26800,'Paid','Credit Card'),
('B069','A069',2200,10000,3600,6000,21800,'Pending','Insurance'),
('B070','A070',1500,7000,2200,3000,13700,'Paid','Cash'),
('B071','A071',2200,11000,4000,6500,23700,'Paid','UPI'),
('B072','A072',2800,15000,5400,12000,35200,'Paid','Insurance'),
('B073','A073',3000,16000,6000,16000,41000,'Paid','Insurance'),
('B074','A074',1800,8000,2800,4000,16600,'Paid','UPI'),
('B075','A075',3000,15000,5500,13000,36500,'Pending','Insurance'),
('B076','A076',2500,12000,4200,7000,25700,'Paid','UPI'),
('B077','A077',2200,14000,5000,10000,31200,'Paid','Insurance'),
('B078','A078',1600,8000,2500,3500,15600,'Paid','Cash'),
('B079','A079',1800,10000,3300,5000,20100,'Paid','UPI'),
('B080','A080',2800,15000,5500,13000,36300,'Paid','Insurance'),
('B081','A081',3200,18000,6500,22000,49700,'Paid','Insurance'),
('B082','A082',2500,12000,4300,8000,27000,'Pending','Insurance'),
('B083','A083',1800,9000,3000,4500,18300,'Paid','UPI'),
('B084','A084',2000,10000,3500,6000,21500,'Paid','Credit Card'),
('B085','A085',2800,14000,5200,11000,33000,'Paid','Insurance'),
('B086','A086',3000,16000,6000,15000,40000,'Paid','Insurance'),
('B087','A087',2200,10000,3600,6500,22300,'Paid','UPI'),
('B088','A088',1500,7000,2200,3000,13700,'Pending','Cash'),
('B089','A089',2500,13000,4700,9000,29400,'Paid','Insurance'),
('B090','A090',3000,15000,5500,14000,37500,'Paid','UPI'),
('B091','A091',2800,15000,5200,12000,35000,'Paid','Insurance'),
('B092','A092',2000,9000,3000,4500,18500,'Paid','UPI'),
('B093','A093',2500,11000,4000,7500,25000,'Pending','Insurance'),
('B094','A094',2200,14000,5000,10000,31200,'Paid','Credit Card'),
('B095','A095',3000,15000,5500,13000,36500,'Paid','Insurance'),
('B096','A096',2800,16000,6000,15000,39800,'Paid','Insurance'),
('B097','A097',3200,18000,6500,22000,49700,'Pending','Insurance'),
('B098','A098',1800,9000,3000,4500,18300,'Paid','UPI'),
('B099','A099',1500,7000,2200,3000,13700,'Paid','Debit Card'),
('B100','A100',2500,13000,4700,9000,29200,'Paid','Insurance'),
('B101','A101',2000,10000,3500,5500,21000,'Paid','UPI'),
('B102','A102',2800,15000,5200,11000,34000,'Pending','Insurance'),
('B103','A103',3000,16000,6000,15000,40000,'Paid','Insurance'),
('B104','A104',3200,18000,6500,22000,49700,'Paid','Credit Card'),
('B105','A105',1800,9000,3000,4500,18300,'Paid','UPI'),
('B106','A106',1500,7000,2200,3000,13700,'Paid','Cash'),
('B107','A107',2500,13000,4700,9000,29200,'Paid','Insurance'),
('B108','A108',2200,12000,4200,7500,25900,'Paid','UPI'),
('B109','A109',3000,16000,5800,15000,39800,'Pending','Insurance'),
('B110','A110',2000,9000,3100,4500,18600,'Paid','Debit Card'),
('B111','A111',1800,8000,2800,4000,16600,'Paid','UPI'),
('B112','A112',2500,14000,5000,10000,31500,'Paid','Insurance'),
('B113','A113',2000,10000,3500,5500,21000,'Pending','Insurance'),
('B114','A114',1500,6000,2000,2500,12000,'Paid','Cash'),
('B115','A115',2800,15000,5200,12000,35000,'Paid','Insurance'),
('B116','A116',3000,16000,6000,15000,40000,'Paid','UPI'),
('B117','A117',3200,18000,6500,22000,49700,'Pending','Insurance'),
('B118','A118',1800,9000,3000,4500,18300,'Paid','UPI'),
('B119','A119',2500,13000,4700,9000,29400,'Paid','Insurance'),
('B120','A120',2200,11000,4000,6500,23700,'Paid','Credit Card'),
('B121','A121',1800,9000,3000,4500,18300,'Paid','UPI'),
('B122','A122',2500,14000,5000,10000,31500,'Pending','Insurance'),
('B123','A123',2200,11000,3800,6000,23000,'Paid','UPI'),
('B124','A124',2800,15000,5500,13000,36300,'Paid','Insurance'),
('B125','A125',3000,16000,6000,15000,40000,'Paid','Insurance'),
('B126','A126',3200,18000,6500,22000,49700,'Pending','Insurance'),
('B127','A127',2000,10000,3500,5500,21000,'Paid','UPI'),
('B128','A128',2500,13000,4700,9000,29400,'Paid','Credit Card'),
('B129','A129',1800,8000,2800,4000,16600,'Paid','Cash'),
('B130','A130',2800,15000,5200,12000,35000,'Paid','Insurance'),
('B131','A131',3000,16000,6000,15000,40000,'Pending','Insurance'),
('B132','A132',3200,18000,6500,22000,49700,'Paid','Insurance'),
('B133','A133',1800,9000,3000,4500,18300,'Paid','UPI'),
('B134','A134',2500,14000,5000,10000,31500,'Paid','Credit Card'),
('B135','A135',2800,15000,5500,13000,36300,'Pending','Insurance'),
('B136','A136',3200,18000,6500,22000,49700,'Paid','Insurance'),
('B137','A137',2000,10000,3500,5500,21000,'Paid','UPI'),
('B138','A138',2500,13000,4700,9000,29400,'Paid','Insurance'),
('B139','A139',1800,8000,2800,4000,16600,'Paid','Cash'),
('B140','A140',3000,16000,6000,15000,40000,'Pending','Insurance'),
('B141','A141',2800,15000,5200,12000,35000,'Paid','UPI'),
('B142','A142',2200,11000,4000,6500,23700,'Paid','Insurance'),
('B143','A143',2500,14000,5000,10000,31500,'Paid','Credit Card'),
('B144','A144',3200,18000,6500,22000,49700,'Pending','Insurance'),
('B145','A145',1800,9000,3000,4500,18300,'Paid','UPI'),
('B146','A146',2000,10000,3500,5500,21000,'Paid','Cash'),
('B147','A147',1500,7000,2200,3000,13700,'Paid','UPI'),
('B148','A148',2500,13000,4700,9000,29400,'Pending','Insurance'),
('B149','A149',2800,15000,5200,12000,35000,'Paid','Insurance'),
('B150','A150',3000,16000,6000,15000,40000,'Paid','UPI'),
('B151','A151',1500,7000,2200,3000,13700,'Paid','UPI'),
('B152','A152',2800,15000,5200,12000,35000,'Paid','Insurance'),
('B153','A153',3000,16000,6000,15000,40000,'Pending','Insurance'),
('B154','A154',3200,18000,6500,22000,49700,'Paid','Credit Card'),
('B155','A155',1800,9000,3000,4500,18300,'Paid','UPI'),
('B156','A156',2500,13000,4700,9000,29400,'Paid','Insurance'),
('B157','A157',2200,11000,4000,6500,23700,'Paid','Cash'),
('B158','A158',2800,15000,5500,13000,36300,'Pending','Insurance'),
('B159','A159',2000,10000,3500,5500,21000,'Paid','UPI'),
('B160','A160',2500,14000,5000,10000,31500,'Paid','Insurance'),
('B161','A161',2800,15000,5200,12000,35000,'Paid','UPI'),
('B162','A162',3000,16000,6000,15000,40000,'Pending','Insurance'),
('B163','A163',3200,18000,6500,22000,49700,'Paid','Insurance'),
('B164','A164',2500,14000,4700,9000,30200,'Paid','Credit Card'),
('B165','A165',2800,15000,5200,12000,35000,'Paid','Insurance'),
('B166','A166',3000,16000,6000,15000,40000,'Pending','Insurance'),
('B167','A167',2000,10000,3500,5500,21000,'Paid','UPI'),
('B168','A168',3200,18000,6500,22000,49700,'Paid','Insurance'),
('B169','A169',2500,13000,4700,9000,29400,'Paid','UPI'),
('B170','A170',2800,15000,5500,13000,36300,'Pending','Insurance'),
('B171','A171',2000,9000,3000,4500,18500,'Paid','UPI'),
('B172','A172',2500,14000,5000,10000,31500,'Paid','Insurance'),
('B173','A173',1800,8000,2800,4000,16600,'Pending','Cash'),
('B174','A174',2800,15000,5200,12000,35000,'Paid','Insurance'),
('B175','A175',3000,16000,6000,15000,40000,'Paid','UPI'),
('B176','A176',3200,18000,6500,22000,49700,'Pending','Insurance'),
('B177','A177',2200,11000,4000,6500,23700,'Paid','UPI'),
('B178','A178',2800,15000,5500,13000,36300,'Paid','Insurance'),
('B179','A179',2000,10000,3500,5500,21000,'Paid','Credit Card'),
('B180','A180',3000,16000,6000,15000,40000,'Pending','Insurance'),
('B181','A181',2800,15000,5200,12000,35000,'Paid','Insurance'),
('B182','A182',2500,14000,4700,9000,30200,'Paid','UPI'),
('B183','A183',3000,16000,6000,15000,40000,'Paid','Insurance'),
('B184','A184',3200,18000,6500,22000,49700,'Pending','Insurance'),
('B185','A185',2200,11000,4000,6500,23700,'Paid','Cash'),
('B186','A186',2500,14000,5000,10000,31500,'Paid','UPI'),
('B187','A187',1800,9000,3000,4500,18300,'Paid','Insurance'),
('B188','A188',2800,15000,5500,13000,36300,'Pending','Insurance'),
('B189','A189',3000,16000,6000,15000,40000,'Paid','UPI'),
('B190','A190',3200,18000,6500,22000,49700,'Paid','Insurance'),
('B191','A191',2000,10000,3500,5500,21000,'Paid','UPI'),
('B192','A192',2800,15000,5200,12000,35000,'Pending','Insurance'),
('B193','A193',3000,16000,6000,15000,40000,'Paid','Insurance'),
('B194','A194',3200,18000,6500,22000,49700,'Paid','Credit Card'),
('B195','A195',2200,11000,4000,6500,23700,'Paid','UPI'),
('B196','A196',3000,16000,6000,15000,40000,'Pending','Insurance'),
('B197','A197',1800,9000,3000,4500,18300,'Paid','Cash'),
('B198','A198',2500,14000,5000,10000,31500,'Paid','Insurance'),
('B199','A199',3200,18000,6500,22000,49700,'Pending','Insurance'),
('B200','A200',3000,16000,6000,15000,40000,'Paid','UPI');


Select * from billing
limit 10;


#18 Find the total bill amount for each patient.

Select p.patient_id, round(sum(b.total_bill),0) as Total_Bill
from patients p
join admissions a 
on p.patient_id = a.patient_id
join billing b 
on a.admission_id = b.admission_id
group by p.Patient_id
order by Total_Bill desc;

#19 Find the total revenue generated by each doctor.

select d.Doctor_id as Doctor_ID, d.doctor_name as Doctor_Name, round(sum(b.Total_bill),0) As Total_Revenue
from doctors d
join admissions a 
on d.doctor_id = a.doctor_id
join billing b
on a.admission_id = b.admission_id
group by D.doctor_id ,D.Doctor_name
order by Total_Revenue desc;

#20 Find the average bill amount for each doctor.

select d.Doctor_id as Doctor_ID, d.doctor_name as Doctor_Name, round(avg(b.Total_bill),0) As Avg_Bill_amt
from doctors d
join admissions a 
on d.doctor_id = a.doctor_id
join billing b
on a.admission_id = b.admission_id
group by D.doctor_id ,D.Doctor_name
order by Avg_Bill_amt desc;

#21 Find the total number of admissions handled by each doctor.

Select d.Doctor_id, D.doctor_name, count(a.admission_id) as Total_Admissions_Handled
from doctors d
join admissions a
on d.doctor_id = a.doctor_id
group by d.Doctor_id, D.doctor_name
order by Total_Admissions_Handled desc;


#22 Find the total revenue generated by each department.

Select d.Department, round(sum(b.total_bill),0) as Revenue_Generated
from doctors d
join admissions a
on d.doctor_id = a.doctor_id
join billing b
on b.admission_id = a.admission_id 
group by d.Department 
ORDER BY Revenue_Generated Desc;

#23 Find the number of patients in each department.

Select d.Department, count(distinct(p.Patient_id)) as Total_Patients
from patients p
join admissions a
on p.patient_id = a.patient_id
join doctors d
on a.doctor_id = d.doctor_id
group by d.Department
order by Total_Patients desc;


#24 Find the average age of patients treated in each department.

Select d.Department, avg(p.age) as Patients_Avg_Age
from patients p
join admissions a
on p.patient_id = a.patient_id
join doctors d
on a.doctor_id = d.doctor_id
group by d.Department
order by Patients_Avg_Age desc;

#25 Find the department with the highest total number of admissions.

select d.Department, count(a.patient_id) as Total_Patients
from doctors d
join Admissions a
on d.doctor_id =a.doctor_id
group by d.department
order by Total_Patients Desc
Limit 1;

#26 Find all patients who have never been admitted to the hospital.

select p.Patient_ID
from patients p
left join admissions a
on p.patient_id = a.patient_id
where a.Patient_id IS NULL;


#27 Find all doctors who have never handled any admission.

select d.Doctor_ID
from doctors d
left join admissions a
on d.doctor_id = a.Doctor_id
where a.doctor_id IS NULL;

#28 Find all admissions that do not have a matching billing record.

select *
from Billing b
right join admissions a 
on a.admission_id = b.admission_id 
WHERE b.Admission_ID IS NULL;


select * from billing;

#29 Find all patients whose admissions do not have a matching billing record.

select a.patient_id
from admissions a 
left join billing b
on a.admission_id =b.admission_id
where b.admission_id is null
group by a.patient_id;
 
#30 Find pairs of doctors who work in the same department.

select D1.Doctor_name as Doctor_1, D2.Doctor_name as Doctor_2,D1.Department
from doctors d1
join doctors d2
on d1.department = d2.department
and  d1.doctor_id< d2.Doctor_id;


#31 Find pairs of doctors where one doctor has more experience than the other doctor.

select D1.Doctor_name as Doctor_1, 
		D2.Doctor_name as Doctor_2, 
        D1.Experience_Years as Doctor1_Expeience,
        D2.Experience_Years as Doctor2_Expeience
from doctors d1
join doctors d2
on d1.doctor_id < d2.Doctor_id
where d1.Experience_Years > d2.Experience_Years;


#32 Generate every possible combination of doctors and departments.

SELECT
    d.Doctor_Name,
    dept.Department
FROM Doctors d
CROSS JOIN (
    SELECT DISTINCT Department
    FROM Doctors
) dept;

#33 Generate every possible combination of patients and doctors.

select D.Doctor_name, p.Patient_name
from Doctors D
Cross join Patients P
ORDER BY Doctor_name ASC;

#34 Generate every possible combination of 
#admission types and payment modes using the Admissions and Billing tables.

select a.Admission_type , B.Payment_mode
from admissions a
cross join billing b;

#35 Find the total number of admissions and total billing amount for each doctor.

select d.Doctor_name, D.Doctor_id, count(a.admission_id) as Total_admissions, 
round(sum(b.Total_Bill),0) as Total_billing
from admissions a 
join billing b
on a. admission_id = b.admission_id
join doctors d
on  d.doctor_id = a. doctor_id
group by d.doctor_id , D.doctor_name
order by Total_Admissions desc, Total_billing desc ;

#36 Find the total revenue generated by each department for patients with Private Insurance.

select D.Department, round(sum(b.total_bill),0) as Total_Revenue , P.Insurance_Type as 'Insurance_Type'
from Doctors d
join admissions a
on d.doctor_id = a.doctor_id
join billing b
on a. admission_id = b.admission_id
join patients p 
on a.patient_id = p.Patient_id
where Insurance_Type = 'Private Insurance'
group by d.department;

#37 Find the average billing amount for each admission type.

select A.Admission_Type , round(avg(b.Total_Bill),0) as Average_Billing_Aamount
from Admissions a 
join billing b 
on a.admission_id= b.admission_id
group by a.Admission_type;

#38 Find the total number of patients and average age for each insurance type.

select Insurance_Type,count(patient_name) as Total_Patients, round(avg(age),0) as Average_Age
from Patients 
Group by Insurance_type;

#39 Find the doctors whose total revenue is higher than the average total revenue of all doctors.

#part 1- in CTE TO find total revenue of all doctors

With Doctor_Revenue as (select d.doctor_id, d.Doctor_name, sum(b.Total_Bill) as Total_Billing
from doctors d
join admissions a
on d.doctor_id = a.doctor_id
join billing b
on b.admission_id = a.admission_id
group by D.doctor_id, D.Doctor_name
)
SELECT Doctor_ID, Doctor_Name, Total_Billing 
FROM doctor_Revenue 
where Total_Billing > ( select Avg(total_billing) from doctor_Revenue);

#40 Find the departments whose total revenue is higher than the average department revenue.

with Dept_Revenue as ( 
select d.Department, sum(b.Total_Bill) as Total_Dept_Revenue
from Doctors d
join admissions a 
on d.doctor_id = a.doctor_id
join billing b
on b.admission_id = a.admission_id
group by D.department)
select *
from Dept_Revenue
where Total_Dept_Revenue > (select avg(Total_Dept_Revenue) from Dept_Revenue);

#41 Find all patients who have at least one admission.

select p.Patient_id, P.Patient_name
from patients p
join admissions a
on p.Patient_id = a.patient_id;

#42 Find all doctors who have handled at least one admission.

select d.doctor_name,  d.doctor_id
from Doctors d
where exists ( select 1  from Admissions a where  d.doctor_id = a.doctor_id);

#43 Find all patients who have never been admitted.

select p.Patient_id, P.Patient_name
from patients p
where not exists ( select 1 from admissions a where p.patient_id = a.patient_id);

#44 Find all unique Patient IDs that exist in either the Patients table or the Admissions table.

select patient_id 
from patients
union
select distinct(patient_id)
from admissions;


#45 Find all Patient IDs from the Patients and Admissions tables, keeping duplicates.

select patient_id 
from patients
union all
select patient_id
from admissions;

#46 Find the total billing amount for each admission type and classify 
#it as High if the total is above 1,000,000, otherwise Normal.

select a.admission_type, sum(b.Total_Bill) as Billing_Amount,
case when sum(b.Total_bill) > 1000000 then 'High' else 'Normal' 
end  as Billing_Classification
from billing b
join admissions a
on b.admission_id = a.Admission_id
group by a.admission_type;

#47 Find each doctor's total number of admissions and classify 
#the doctor as Busy if admissions are more than 15, otherwise Normal.

select d.doctor_id, d.Doctor_name, count(a.admission_id),
	case 	
		when count(a.admission_id) > 15 then 'Busy' else 'normal' 
			END AS 'Doctors_Busyness'
from doctors d
join admissions a 
on d.doctor_id = a.doctor_id
group by d.doctor_id, d.Doctor_name;

#48 Find the total number of admissions for each month.

select Year(Admission_date) as Year_of_Admission ,
monthname(admission_date) as Month_of_admission, count(admission_id)
from admissions 
group by Year_of_Admission, Month_of_admission;

#49 Find the average number of days patients stay in the hospital for each admission type.

select admission_type, avg(datediff(Discharge_date, admission_date)) as Average_Stays_days
from admissions 
group by Admission_type;

#50 Find the department with the highest average patient stay duration.

select d.department, avg(datediff(a.discharge_date,a.Admission_date)) as Average_stay_days
from doctors d
join admissions a
on d.doctor_id = a.doctor_id
group by d.department
order by Average_stay_days desc
limit 1;

#51 Find the number of admissions made on weekdays and weekends.

select 
case 
	when dayofweek(admission_date) IN (1,7) then 'Weekend' 
		else 'Weekday'
        End AS 'Day_type',
        count(admission_id) as Total_Admissions
        
	from admissions
    group by case 
	when dayofweek(admission_date) IN (1,7) then 'Weekend' 
		else 'Weekday'
        End ;

#52 Find the number of admissions made in each quarter (Q1, Q2, Q3, Q4).

select Year(admission_date), quarter(admission_date), count(admission_id) as Total_admits
from admissions
group by year(admission_date), quarter(admission_date); 

#53 Find the total revenue generated in each month, 
#along with the cumulative (running) revenue from the beginning of the year.

select Year(a.Admission_date) AS Years,
MONTHname(a.Admission_date) AS Months, ROUND(SUM(b.Total_Bill),0) as Monthly_Revenue
, round(sum(sum(b.total_bill))over( partition by year(a.admission_date) order by month(admission_date)),0) as
YTD_Revenue
from admissions a 
join billing b
on a.admission_id = b.admission_id
Group by Year(a.Admission_date) , MONTHname(a.Admission_date) ;

#54 Find the total revenue for each month and the previous month's revenue.

with monthly_revenue as (
select Year(a.admission_date) as 'Years', month(a.admission_date) as Month_Number, 
monthname(a.admission_date) as Name_of_Month, sum(b.Total_bill) as Total_Monthly_Revenue
from admissions a 
join billing b
on a.admission_id = b.admission_id
group by 
	year(a.admission_date) , 
	month(a.admission_date) ,
	monthname(a.admission_date) 
    )
    
    Select Years, 
			Month_Number, 
            Name_of_Month,
			Total_Monthly_Revenue,
			lag(Total_Monthly_Revenue) over( partition by years order by month_number) AS 
            Previous_Month_Revenue
            from Monthly_Revenue 
		order by Years, Month_number, Name_of_month;
        
        
#55 Calculate the month-over-month (MoM) revenue growth percentage for each month.

With Monthly_Revenue AS (
	 Select Year(a.admission_date) as 'Years',
			month(a.admission_date) as Month_Number, 
			monthname(a.admission_date) as Name_of_Month, 
            sum(b.Total_bill) as Total_Monthly_Revenue
    from admissions a 
    join billing b
    on a.admission_id = b.admission_id
    group by 
		year(a.admission_date),
        Month(a.admission_date),
        Monthname(a.admission_date)),
        
	Previous_Month AS (
		Select Years, Month_Number, Name_of_Month,
				Total_Monthly_Revenue,
                lag(Total_Monthly_Revenue) over (
                partition by Years order by Month_Number ) as Previous_Month_Revenue
                from Monthly_Revenue)
	SELECT 
		Years, Month_number, Name_of_month, 
        Total_monthly_Revenue,
            round((Total_monthly_Revenue-Previous_month_Revenue)*100/
            Previous_Month_Revenue,0) as MOM_Growth_Percentage
			from Previous_Month;

#56 Calculate the Year-over-Year (YOY) revenue growth percentage for
 # each month by comparing revenue with the same month of the previous year.


	
#57 Find the top 3 doctors based on total revenue generated.

select d.doctor_id, d.doctor_name,sum(b.total_bill) as Total_Revenue
from admissions a
join billing b
on a.admission_id= b.admission_id
join doctors d
on d.doctor_id = a.doctor_id
group by d.doctor_id ,d.doctor_name
order by Total_Revenue desc
limit 3;

#58 Find all patients whose total billing is higher than the average total billing per patient.

With Patient_Billing AS (
select p.patient_id, p.Patient_name, sum(b.Total_bill) as Total_billing
from admissions a 
join billing b
on a.admission_id= b.admission_id
join Patients p
on p.patient_id = a.patient_id
group by 
	p.patient_id, p.Patient_name),
    
    Avg_Billing AS (
    select *,  avg(Total_Billing) over() as Avg_Bill
    from Patient_Billing)
    
    select * from Avg_Billing
    where Total_Billing > avg_bill;
    
#59 Find each department’s total admissions, and show how many of those admissions were completed.

select D.Department, count(a.admission_id) as Total_Admissions 
from admissions a 
join billing b
on a.admission_id = b.admission_id
join doctors d
on d.doctor_id = a.doctor_id 
where a.admission_status = 'Discharged'
group by d.department;

#60 Find each department's total admissions and total revenue generated.

select d.department , count(a.admission_id) as Total_Admission , Sum(b.Total_Bill) as Total_Revenue
From  admissions a
join billing b
on a.admission_id= b.admission_id
join doctors d
on d.doctor_id = a.doctor_id
Group by 
	D.Department;

#61 Find all admissions where the discharge date is missing.

select p.Patient_id , a.admission_id
from admissions a
join patients p
on p.patient_id = a.patient_id
where a.Discharge_date is NULL;

#62 Find the highest-revenue doctor in each department.

With ranked as (
select D.Department, D.Doctor_id, D.Doctor_Name, sum(b.Total_bill),
	dense_rank() over( partition by d.Department order by sum(b.total_bill) desc) as rnk
from admissions a
join billing b
on a.admission_id = b.admission_id
join Doctors d
on d.doctor_id = a.doctor_id
group by D.Department, D.Doctor_id, D.Doctor_Name)
select * from ranked
where rnk = 1;

#63 Calculate the 3-month rolling average revenue for each month.

select year(a.discharge_date) as Years, Month(a.discharge_date) as Month_Number,
monthname(a.Discharge_date) as Name_of_Month, avg(B.TOTAL_BILL) AS Avg_Revenue,
avg(avg(B.TOTAL_BILL)) over( partition by year(a.discharge_date) order by month(a.discharge_date)
rows between 2 preceding  and current row ) as 3_month_rolling_Average
From admissions a 
join billing b
on a.admission_id = b.admission_id
group by year(a.discharge_date) , Month(a.discharge_date) ,
monthname(a.Discharge_date) ;
	
#64 Find the month with the highest revenue in each year.

with ranked as (
	select Year(a.discharge_date) as Years, Monthname(a.discharge_date) as Month_Name,
    sum(b.Total_bill) as Highest_Revenue,
    dense_rank() over( partition by Year(a.discharge_date) 
    ORDER BY sum(b.Total_bill) desc ) as rnk
    from admissions a 
    join billing b
    on a.admission_id = b.admission_id
    group by 
    Year(a.discharge_date) , Monthname(a.discharge_date) )
    select * from ranked
    where rnk =1;
    

#65 Find the average monthly revenue for each year.

with monthly_Revenue as (
select 
	Year(a.discharge_Date) as Years, Month(a.discharge_date) as Month_Number,
	Monthname(a.discharge_date) as Name_of_Month, sum(b.Total_bill) as Total_Revenue
from admissions a
join billing b
on a.admission_id = b.admission_id
group by 
     Year(a.discharge_Date) , Month(a.discharge_date) ,
Monthname(a.discharge_date) )

select Years, avg(Total_Revenue) as Avg_Monthly_Revenue
from Monthly_Revenue
group by Years;

#66 Find the first admission date and the most recent admission date for each patient.

Select p.patient_id,
p.patient_name,
min(a.admission_date) as first_admission_date, max(a.admission_date)
as Most_Recent_admission_date
from admissions a
join patients p
on a.patient_id = p.patient_id
group by p.patient_id,
p.patient_name;

#67 Find patients who had more than one admission.

Select p.patient_id,
p.patient_name , count(a.admission_id)
from admissions a
join patients p
on a.patient_id = p.patient_id
group by p.patient_id,
p.patient_name
having count(a.admission_id)>1;

#68 Find the percentage of total patients who have never been admitted.

select 
count(case
when a.patient_id is null then 1 end )*100 /count(distinct p.patient_id) AS  Patient_never_Admitted
from patients p
left join admissions a 
on p.patient_id = a.patient_id;


#69 Find the doctor with the highest average patient age.

WITH Patient_avg_Age AS (
select d.Doctor_id, d.Doctor_name, avg(p.age) as Average_Age,
dense_rank() over( order by avg(p.age) desc) as rnk
from Admissions a
join Doctors d
on a.doctor_id = d.doctor_id
join Patients p
on p.Patient_id = a.Patient_id
group by
d.doctor_id, d.doctor_name)

select Doctor_id, Doctor_name, Average_age
from Patient_avg_Age
where rnk=1;

#70 Find all billing records where total_bill does not equal the sum of consultation, 
#room, medicine, and procedure charges.

Select b.Bill_id, b.Consultation_Fee+b.Room_charges+ b.Medicine_charges+b.Procedure_charges
as Total_summed_cost
from billing b
where b.Consultation_Fee+b.Room_charges+ b.Medicine_charges+b.Procedure_charges
<> b.Total_bill;

#71 Find the total billing amount for each patient. If a patient's total_bill is NULL, treat it as 0.

select p.Patient_id, p.Patient_name, (coalesce(sum(b.Total_bill),0)) as Total_Billing
from patients p
left join admissions a
on p.Patient_id = a.Patient_id
left join billing b
on b.admission_id = a.admission_id
group by p.patient_id, p.Patient_name;

#72 Find Patient_ID, Patient_Name and total medicine charges for patients 
#whose total medicine charges across all admissions are greater than ₹50,000.

With Total_Bill_info as (
select p.Patient_id, p.Patient_name, coalesce(sum(b.Medicine_charges),0) as Medicine_charge 
from patients p
join admissions a 
on p.patient_id = a.patient_id
join billing b
on a.admission_id = b.admission_id
group by p.Patient_id, p.Patient_name)

select Patient_id, Patient_name, Medicine_Charge
from Total_Bill_Info
where Medicine_charge > 50000;

#73 For each doctor, find the total admissions, Emergency admissions, 
#and Routine admissions handled by the doctor.

Select d.Doctor_Id, 
		d.Doctor_Name, 
        count(a.admission_id) as Total_Admissions,
count( case when a.Admission_type = 'Emergency' then 1 end ) as  Emergency_Admissions,
count( case when a.admission_Type = 'Planned' then 1  end ) as Routine_Admission
from Doctors d
join admissions a
on d.doctor_id = a.doctor_id
group by d.Doctor_Id, d.Doctor_Name;

#74 For each department, calculate the total admissions, number of Discharged admissions, 
#and number of Emergency admissions.

Select d.department, count(a.admission_id) as Total_Admissions , 
count( case when a.Admission_Status = 'Discharged' then 1 end ) as Total_Discharged_Admissions,
count( case when a.Admission_Type = 'Emergency' then 1 end ) as Total_Emergency_Admissions
FROM Doctors d
join Admissions a  
on d.doctor_id = a.doctor_id
group by d.department;

#75 For each department, 
#calculate the total revenue, Emergency-admission revenue, and Planned-admission revenue.

select d.department, sum(b.total_bill), 
sum(case when a.admission_type = 'Emergency' then b.total_bill ELSE 0 end ) as Emergency_Admission_Revenue,
sum(case when a.admission_type = 'Planned' then b.total_bill ELSE 0 end ) as Planned_Admission_Revenue
from doctors d
join admissions a
on d.Doctor_id = a.doctor_id
join billing b
on b.Admission_id = a.admission_id
group by d.department;

#76 Find patients whose total billing amount is higher than the average 
#billing amount of patients from the same city.

With Patient_Billing AS (
select p.Patient_Name, p.Patient_ID, p.City, sum(b.Total_Bill) as Total_Billing 
from admissions a
join billing b
on a.admission_id =b.admission_id 
join Patients p
on p.patient_id = a.patient_id
group by p.Patient_Name, p.Patient_ID, p.City)
,
 City_Average as (
 SELECT
        City,
        AVG(Total_Billing) AS Avg_City_Billing
    FROM Patient_Billing
    GROUP BY City
)

select 
	pb.patient_name, pb.Patient_id,
    pb.City, pb.Total_billing,
    ca.Avg_City_billing
from Patient_Billing pb
join City_Average ca
on pb.city= ca.city
where pb.Total_billing> ca.Avg_City_Billing;

#77 For each patient, rank their admissions by admission date and assign 1 to their most recent admission.

With Latest_Admission AS (
	select p.Patient_id, p.Patient_Name, a.admission_date, 
			row_number() over( partition by p.Patient_ID order by a.Admission_Date desc) as rnk 
from patients p
join admissions a 
on p.Patient_id= a.Patient_id
GROUP BY p.Patient_id, p.Patient_Name, a.admission_date)

Select Patient_id, Patient_Name, Admission_Date
from Latest_Admission 
where rnk =1;

#78 For each doctor, rank their admissions from oldest to newest and assign 1 to their first-ever admission.

With Latest_Admission AS (
	select D.Doctor_id, D.Doctor_Name, a.admission_date, 
			row_number() over( partition by D.Doctor_id order by a.Admission_Date asc) as rnk 
from doctors d
join admissions a 
on d.Doctor_id= a.Doctor_id
GROUP BY D.Doctor_id, D.Doctor_Name, a.admission_date)

Select Doctor_id, Doctor_Name, admission_date
from Latest_Admission 
where rnk =1;

#79 Rank doctors by their total revenue within each department, 
#giving the same rank to doctors with equal revenue.

With Doctors_Rank AS (
	SELECT d.Doctor_id, d.Doctor_Name, D.department , sum(b.Total_Bill) as Total_Revenue,
	dense_rank() over(  partition by D.Department order by sum(b.Total_Bill) desc) as Rnk
FROM admissions a
JOIN billing b
ON a.admission_id =b.admission_id
join Doctors d
on d.Doctor_id = a.Doctor_id
group by d.Doctor_id, d.Doctor_Name, D.department)

Select Doctor_Id, Doctor_Name, Department, Total_Revenue, Rnk
from  Doctors_Rank;

#80 Find the highest-revenue doctor from each department, including all doctors if there is a tie.

With Doctors_Rank AS (
	SELECT d.Doctor_id, d.Doctor_Name, D.department , sum(b.Total_Bill) as Total_Revenue,
	dense_rank() over(  partition by D.Department order by sum(b.Total_Bill) desc) as Rnk
FROM admissions a
JOIN billing b
ON a.admission_id =b.admission_id
join Doctors d
on d.Doctor_id = a.Doctor_id
group by d.Doctor_id, d.Doctor_Name, D.department)

Select Doctor_Id, Doctor_Name, Department, Total_Revenue, Rnk
from  Doctors_Rank
where rnk =1;

#81 For each admission, show the admission date and the next admission date for the same patient.

with ranked as (
	select p.Patient_id, P.Patient_name, a.admission_date,
lead(a.admission_Date) over( Partition by P.patient_id order by a.admission_date asc) as Next_Admission_Date
from Doctors d
join admissions a
on d.doctor_id = a.doctor_id
join Patients p
on p.patient_id = a.Patient_id
)

Select Patient_ID, Patient_Name, Admission_Date, Next_Admission_Date
from ranked;

#82 For each doctor, show their current admission date 
#and the previous admission date handled by the same doctor.

select d.doctor_id, d.doctor_name, a.admission_date,
lag(a.admission_date) over(partition by d.doctor_id order by a.admission_date asc) as Previous_Admission_date
from doctors d 
join admissions a
on d.doctor_id = a.doctor_id;

#83 For each patient, find their total number of admissions and 
#show 0 for patients who have never been admitted.

Select p.Patient_id, p.Patient_Name, count(a.admission_id) as Total_Admissions
from patients p
left join admissions a 
on p.Patient_id = a.patient_id
group by p.Patient_id, p.Patient_Name;

#84 For each doctor, show their name and experience. 
#If Experience_Years is NULL, display 0 instead.

Select doctor_id, Doctor_name, coalesce(Experience_Years,0)
from Doctors d;

#85 For each patient, calculate their total billing amount and average billing amount per admission, 
#using NULLIF() to prevent division-by-zero errors.

select P.patient_id, p.patient_name, sum(b.Total_Bill) as Total_Billing_Amount,  
SUM(B.total_bill)/nullif(count(a.Admission_ID),0) as Average_Billing_Amount
from admissions a
join billing b
on  a.admission_id = b.admission_id
join patients p
on p.patient_id = a.patient_id
group by P.patient_id, p.patient_name;

#86 Find patients whose name starts with the letter 'A' and display their Patient_ID, Patient_Name, and City.

select * from patients 
where Patient_Name Like 'a%';

#87 Find doctors whose experience is greater than the 
#average experience of all doctors in their own department.

With Dept_Avg_Exp as (
select d.department ,avg(d.Experience_Years) as Department_Average_Experience
from Doctors d
group by d.Department)

select D.Doctor_id, d.Doctor_Name,
d.experience_years , da.Department_Average_Experience
from doctors d
join Dept_Avg_Exp da
on d.Department = da.Department
where experience_years > Department_Average_Experience;

#88 Find patients whose latest admission was an Emergency admission.

select p.patient_id, p.Patient_name,a.admission_id,  a.admission_type, a.Admission_Date
from patients p
join admissions a
on p.patient_id = a.patient_id
where a.Admission_Date = (select max(a2.admission_date) from admissions a2
							where a2.Patient_ID = a.Patient_ID)
				and a.Admission_Type = 'Emergency';
                
#89 Find patients who have had an Emergency admission but have NEVER had a Planned admission.

select p.patient_id , p.patient_name
from patients p
where exists ( select 1 from admissions a 
where a.Patient_ID= p.patient_id
and a.admission_type = 'Emergency')

and not exists ( select 1 from admissions a where a.Patient_ID = p.patient_id 
				and a.Admission_Type = 'Planned');


#90 Find doctors who have handled at least 5 admissions, 
#but fewer than 30% of their admissions were Emergency admissions.

With Doctors_Total_Cases As (
select d.doctor_id, d.doctor_name, count(a.Admission_ID) as Total_cases_handled ,
count( case when a.admission_type = 'Emergency' then 1 end ) as Emergency_Cases_handled
from doctors d
join admissions a
on  d.doctor_id = a.doctor_id
group by d.doctor_id, d.doctor_name)
,
Emergency_admission AS (
select *, Emergency_cases_handled*100.0/total_cases_handled as Emergency_percentage 
from Doctors_Total_Cases)

select Doctor_id, Doctor_name, Total_Cases_handled, Emergency_cases_handled, 
Emergency_percentage 
from Emergency_Admission
where Total_cases_handled>=5
and Emergency_Percentage < 30 ;


#91 Find the second admission of every patient — not the first or latest.

with Admission_History AS (
SELECT p.patient_id, p.patient_name, a.admission_date, a.admission_id , 
row_number() over( partition by p.Patient_ID order by a.Admission_Date asc ) as rnk
FROM admissions a 
JOIN patients p
ON  a.patient_id = p.Patient_id)

select patient_id, patient_name, admission_id, admission_date 
from admission_history
where rnk =2;

#92 Find each doctor's name along with a comma-separated list of all different patients they have treated.

select d.Doctor_ID, d.Doctor_Name, group_concat(distinct p.Patient_Name separator ',') as Patient_Treated
from admissions a 
join doctors d
on a.doctor_id = d.doctor_id
join patients p
on p.patient_id = a.patient_id
group by d.Doctor_ID, d.Doctor_Name
order by d.doctor_name asc;

#93 Find all patients whose full name contains exactly two words.
select patient_id, patient_name
from patients
where length(patient_name)-length(replace(patient_name, ' ', '')) =1 ; 

#94 Find all admissions and calculate an expected discharge date by adding 3 days to the admission date.

select P.Patient_id, p.Patient_name, a.Admission_Date, date_add(a.admission_date,interval 3 day) as 
Expected_Discharge_date
from admissions a
join patients p
on a.patient_id = p.patient_id
group by P.Patient_id, p.Patient_name, a.Admission_Date
order by p.Patient_Name asc;

#95 Find the percentage of each department's admissions that were Emergency admissions.

with Emergency_admission AS (
select d.Department, count( case when a.admission_type = 'Emergency' then 1 end) as Emergency_Admission, 
count(a.admission_id) as Total_Admissions
from admissions a
join doctors d
on a.doctor_id = d.doctor_id
group by d.Department )

SELECT DEPARTMENT , TOTAL_ADMISSIONS, Emergency_Admission, round(Emergency_admission*100.00/total_admissions,2) as 
Emergency_admission_Percentage
from Emergency_admission;

#96 Create a view named Department_Revenue that stores each department's total revenue.

CREATE VIEW Department_wise_Revenue AS
SELECT d.Department,
       SUM(b.total_bill) AS Total_Revenue
FROM doctors d
JOIN admissions a
    ON d.doctor_id = a.doctor_id
JOIN billing b
    ON a.admission_id = b.admission_id
GROUP BY d.Department;
select * from Department_wise_Revenue;

#97 Find the median age of patients.

With ranked AS ( 
select age, row_number() over ( order by age) as rnk,
count(*) over() as total_rows
from patients
WHERE AGE IS NOT NULL)
 
 SELECT round(avg(age),2) AS Median_age 
 FROM RANKED
 WHERE RNK IN
 ( floor((Total_rows+1)/2) ,  ceil(( total_rows+1)/2));
 
#98 Using the Doctors, Admissions, and Billing tables, calculate department-wise total revenue and include an 
#additional Grand Total Revenue row at the bottom.

Explain
SELECT d.Department, round(sum(b.Total_bill),0) as Total_Revenue
FROM admissions a
JOIN billing b
ON a.admission_id = b.admission_id
JOIN Doctors d
ON a.doctor_id = d.doctor_id
group by d.department with rollup 
order by Total_Revenue asc;

####EXPLAIN is used to view the execution plan of a SQL query and understand how MySQL accesses the data, including 
#whether indexes are being used and how many rows may be examined.

#99 find patients whose total billing amount is greater than the average total billing amount of all patients.

With Patient_billing AS (
Select P.Patient_ID, p.Patient_Name, sum(b.Total_Bill) as Total_Bill,
sum(b.Total_Bill)/count(a.admission_id) as Average_Bill
from admissions a
join billing b
on a.admission_id = b.admission_id
join patients p
on a.patient_id = p.Patient_id
group by  P.Patient_ID, p.Patient_Name )

SELECT Patient_ID, Patient_Name , Total_Bill, Average_Bill
from Patient_Billing
where Total_Bill > Average_Bill;



With Patient_billing AS (
Select P.Patient_ID, p.Patient_Name, sum(b.Total_Bill) as Total_Bill
from admissions a
join billing b
on a.admission_id = b.admission_id
join patients p
on a.patient_id = p.Patient_id
group by  P.Patient_ID, p.Patient_Name )

SELECT Patient_ID, Patient_Name , Total_Bill
from Patient_Billing
where Total_Bill > ( select avg(total_bill) from Billing);

#99.1 Find doctors whose total revenue is greater than the average total revenue of all doctors.

With Doctor_Revenue AS (
select d.Doctor_ID, d.Doctor_Name, sum(b.total_bill) as Total_Revenue
from admissions a
join doctors d
on  a.Doctor_id = d.doctor_id
join billing b
on a.admission_id= b.admission_id
group by d.doctor_id, d.doctor_name)

select Doctor_id, Doctor_name , Total_Revenue
from Doctor_Revenue 
where Total_Revenue > ( select avg(Total_Bill) from Billing);

#100 Write a query to find the highest-revenue doctor in each department, 
#including ties if two doctors have the same highest revenue.

With Highest_Revenue_by_Doctor AS(
SELECT d.doctor_id, d.doctor_name, d.Department, sum(b.Total_Bill) as Total_Revenue,
Dense_Rank() over ( partition by d.Department order by sum(b.Total_bill) desc) as rnk
from ADMISSIONS a
JOIN billing b
ON a.admission_id= b.admission_id
JOIN doctors d
ON a.doctor_id = d.doctor_id
GROUP BY d.department, d.doctor_id, d.doctor_name)

select Doctor_id, Doctor_name, Department, Total_Revenue
from Highest_Revenue_by_Doctor
where rnk =1;




