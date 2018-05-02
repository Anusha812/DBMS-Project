create database scholarkit;
drop table s_user cascade;
drop table profile cascade;
drop table scholarship cascade;
drop table applied_for cascade;
drop table provides cascade;
drop table eligible cascade;
drop table skills cascade;
drop table internship cascade;
drop table employer cascade;
create table s_user   
(
name varchar(20),
usr_id  varchar(40),
category varchar(10),
city varchar(20),
age int ,
gender varchar(1),
primary key(usr_id));
alter table s_user
ADD constraint urschk
check(age>16 and age<65);

create table profile  
(
usr_id varchar(40),
edu_inst varchar(20),
degree varchar(20),
gpa    float,
branch varchar(20),
foreign key(usr_id) references s_user on update cascade);

create table employer   
(
emp_name varchar(20),
location varchar(20),
primary key(emp_name));

create table internship  
(
itr_name varchar(20),
emp_name varchar(20),
stipend int,
branch varchar(20),
city varchar(20),
scope varchar(20),
gpa float,
foreign key(emp_name) references employer on update cascade,
 primary key(itr_name));


create table scholarship  
(
sclr_name varchar(40),
amount int,
provider varchar(40),
category varchar(40),
branch varchar(20),
primary key(sclr_name));


create table applied_for    
(
usr_id varchar(40),
apl_dat date,
itr_name varchar(20),
emp_name varchar(20),
foreign key(usr_id) references s_user on update cascade,
foreign key(itr_name) references internship on update cascade,
foreign key(emp_name) references employer on update cascade);



create table skills  
(
usr_id varchar(40),
academic varchar(40),
cocurricular varchar(40),
social_service varchar(40),
foreign key(usr_id) references s_user on update cascade);




insert into s_user values('Aditya K','adityak@gmail.com','SC','Bangalore',19,'M'),
                         ('Aditya R','adityakr@gmail.com','GEN','Bangalore',22,'M'),
                         ('Amogh V','amov@gmail.com','GEN','Pune',33,'M'),
                         ('Amanya','ammun@gmail.com','GEN','Bangalore',19,'F'),
                         ('Amritha','amritha@gmail.com','ST','Bangalore',27,'F'),
                         ('Amanya','amanya@gmail.com','SC','Bangalore',19,'F'),
                         ('Anish','anish@gmail.com','GEN','Baroda',22,'M'),
                         ('Amanya','ammanya@gmail.com','GEN','Pune',18,'M'),
                         ('Ankith','ankith@gmail.com','SC','Mumbai',19,'M'),
                         ('Anasya','anasya@gmail.com','SC','Bangalore',19,'F'),
                         ('Anjana','anjana@gmail.com','GEN','Bangalore',20,'F'),
                         ('Aparna','aparna@gmail.com','GEN','Hyderabad',20,'F'),
                         ('Bani','bani@gmail.com','GEN','Kolkata',20,'F'),
                         ('Bharath','bharath@gmail.com','SC','Mangalore',21,'M'),
                         ('Bhushan','bhushan@gmail.com','SC','Bangalore',19,'M'),
                         ('Byrappan','byrappan@gmail.com','SC','Dharwad',21,'M'),
                         ('Chandan','chandan@gmail.com','GEN','Chennai',18,'M'),
                         ('Chinki','chinki@gmail.com','ST','Vellore',17,'F'),
                         ('Danish','danish@gmail.com','GEN','Mumbai',25,'M'),
                         ('Dhruvi','dhruvi@gmail.com','GEN','Kolkatta',21,'F'),
                         ('Farah','Farah@gmail.com','GEN','Kashmir',21,'F'),
                         ('Gauri','gauri@gmail.com','SC','Ahemedabad',17,'F'),
                         ('Harish','harish@gmail.com','GEN','Gandhinagar',21,'M'),
                         ('Imam','imam@gmail.com','SC','Hyderabad',27,'F'),
                         ('Jolly','Jolly@gmail.com','GEN','Bangalore',21,'M'),
                         ('Kranthi','kranthi@gmail.com','SC','Chennai',19,'F'),
                         ('Lauvi','Lauv@gmail.com','GEN','Allahabad',22,'F'),
                         ('Manisha','mani@gmail.com','GEN','Munnar',22,'F'),
                         ('Oman','Oman@gmail.com','GEN','Bangalore',27,'M'),
                         ('Priya','Priya@gmail.com','SC','Bangalore',19,'F'),
                         ('Rashi','rashi@gmail.com','GEN','CHennai',20,'F'),
                         ('Sharath','sharath@gmail.com','SC','Bangalore',19,'M'),
                         ('Sanketh','sanketh@gmail.com','GEN','Vadodara',21,'M'),
                         ('Tanmay','tanmay@gmail.com','ST','Bangalore',23,'M'),
                         ('Taruni','taruni@gmail.com','GEN','Ahemedabad',19,'F'),
                         ('Varsha','varsha@gmail.com','GEN','Bangalore',20,'F'),
                         ('Vedanth','vedanth@gmail.com','GEN','Pune',20,'M'),
                         ('Yash','yash@gmail.com','GEN','Mumbai',21,'M');



insert into profile values('adityak@gmail.com','PESU','B.Tech',9.5,'EE'),
                         ('adityakr@gmail.com','RVCE','B.Tech',8.3,'ME'),
                         ('amov@gmail.com','UVJE','B.Tech',7.7,'EC'),
                         ('ammun@gmail.com','BIT','B.Tech',9.4,'CS'),
                         ('amritha@gmail.com','DSCE','B.Tech',9.8,'ME'),
                         ('ammun@gmail.com','MSRIT','B.Tech',8.7,'BT'),
                         ('anish@gmail.com','JNU','B.Tech',10.0,'CS'),
                         ('ammanya@gmail.com','UIHN','B.Tech',9.8,'BT'),
                         ('ankith@gmail.com','IITB','B.Tech',9.0,'ME'),
                         ('anasya@gmail.com','PESU','B.Tech',7.7,'EE'),
                         ('anjana@gmail.com','MSRIT','B.Tech',6.8,'EC'),
                         ('aparna@gmail.com','IITH','B.Tech',8.1,'BT'),
                         ('bani@gmail.com','IUH','B.Tech',7.9,'ME'),
                         ('bharath@gmail.com','NITK','B.Tech',9.5,'CS'),
                         ('bhushan@gmail.com','RVCE','B.Tech',8.6,'CS'),
                         ('byrappan@gmail.com','IITDW','B.Tech',8.9,'BT'),
                         ('chandan@gmail.com','IITM','B.Tech',9.8,'EE'),
                         ('chinki@gmail.com','VIT','B.Tech',8.4,'EC'),
                         ('danish@gmail.com','IITB','B.Tech',8.7,'EC'),
                         ('dhruvi@gmail.com','UHK','B.Tech',8.2,'ME'),
                         ('Farah@gmail.com','IITS','B.Tech',9.3,'ME'),
                         ('gauri@gmail.com','IITG','B.Tech',7.9,'ME'),
                         ('harish@gmail.com','IITG','B.Tech',8.9,'EC'),
                         ('imam@gmail.com','IITH','B.Tech',9.1,'ME'),
                         ('Jolly@gmail.com','RVCE','B.Tech',9.8,'EC'),
                         ('kranthi@gmail.com','SRM','B.Tech',9.6,'ME'),
                         ('Lauv@gmail.com','JNUC','B.Tech',8.6,'EC'),
                         ('mani@gmail.com','IITPK','B.Tech',7.6,'ME'),
                         ('Oman@gmail.com','PESU','B.Tech',8.7,'EC'),
                         ('Priya@gmail.com','PESU','B.Tech',8.7,'ME'),
                         ('rashi@gmail.com','SRM','B.Tech',9.1,'CS'),
                         ('sharath@gmail.com','AIT','B.Tech',6.5,'CS'),
                         ('sanketh@gmail.com','MNU','B.Tech',8.6,'CS'),
                         ('tanmay@gmail.com','RVCE','B.Tech',9.2,'CS'),
                         ('taruni@gmail.com','IITG','B.Tech',8.4,'CS'),
                         ('varsha@gmail.com','RVCE','B.Tech',8.3,'CS'),
                         ('vedanth@gmail.com','UHT','B.Tech',8.6,'EC'),
                         ('yash@gmail.com','AJGT','B.Tech',8.2,'EC');






insert into skills values('adityak@gmail.com','Transformer MEanish','Event management','CSR Volunteer'),
                         ('adityakr@gmail.com','Fluid dynamics','Painting','NGO Worker'),
                         ('amov@gmail.com','Web Development','Sketching',NULL),
                         ('ammun@gmail.com','Machine Learning','Dancing',NULL),
                         ('amritha@gmail.com','Thermodynamics','Coding','TFO volunteer'),
                         ('ammun@gmail.com','Genetics','Dancing','CSR Volunteer'),
                         ('anish@gmail.com','Algorithms','Literature','CSR Volunteer'),
                         ('ammanya@gmail.com','Genetics','Literature','TFO Volunteer'),
                         ('ankith@gmail.com','Aerodynamics','Event management','TFO Volunteer'),
                         ('anasya@gmail.com','Voltage','management','NGO Worker'),
                         ('anjana@gmail.com','Signal processing','Dramatics','NGO Worker'),
                         ('aparna@gmail.com','DNA','Dramatics','TFO Worker'),
                         ('bani@gmail.com','Aerodynamics','Painting',NULL),
                         ('bharath@gmail.com','DBMS','Sketching',NULL),
                         ('bhushan@gmail.com','DBMS','Dancing',NULL),
                         ('byrappan@gmail.com','Genetics','Coding','CSR Volunteer'),
                         ('chandan@gmail.com','Transformer','Dramatics',NULL),
                         ('chinki@gmail.com','Signals','Event management',NULL),
                         ('danish@gmail.com','Sensors','Dancing',NULL),
                         ('dhruvi@gmail.com','Thermodynamics','Dramatics','TFO Volunteer'),
                         ('Farah@gmail.com','Aerodynamics','Literature','NGO Worker'),
                         ('gauri@gmail.com','Fluid MEanics','Game Development','CSR Volunteer'),
                         ('harish@gmail.com','Sensors','Event management','CSR Volunteer'),
                         ('imam@gmail.com','Aerodynamics','Dramatics','CSR Volunteer'),
                         ('Jolly@gmail.com','Sensors','Literature','TFO Volunteer'),
                         ('kranthi@gmail.com','Fluid dynamics','management','NGO Worker'),
                         ('Lauv@gmail.com','Signals','Coding','CSR Volunteer'),
                         ('mani@gmail.com','Thermodynamics','Dramatics','CSR Volunteer'),
                         ('Oman@gmail.com','Signals','Dramatics',NULL),
                         ('Priya@gmail.com','Aerodynamics','Dramatics',NULL),
                         ('rashi@gmail.com','Web Development','Writing',NULL),
                         ('sharath@gmail.com','DBMS','Game Development','CSR Volunteer'),
                         ('sanketh@gmail.com','Algorithms','Web Development','TFO Volunteer'),
                         ('tanmay@gmail.com','Machine Learning','Dramatics','CSR Volunteer'),
                         ('taruni@gmail.com','DBMS','Sketching','CSR Volunteer'),
                         ('varsha@gmail.com','Algorithms','Literature','TFO Volunteer'),
                         ('vedanth@gmail.com','Signals','Literature','CSR Volunteer'),
                         ('yash@gmail.com','Sensors','Dramatics',NULL);

insert into employer values('Aditya Birla', 'Bangalore'),
				('ABC Group', 'Mumbai'),
				('Bata', 'Pune'),
				('Biocon', 'Bangalore'),
				('Cortona group', 'Delhi'),
				('Dominique Industries', 'Chennai'),
				('Ever-ready', 'Hyderabad'),
				('Fastrack', 'Gurgaon'),
				('Google', 'New York'),
				('Google India', 'Bangalore'),
				('IBM', 'Delhi'),
				('ICICI Bank', 'Mumbai'),
				('Intel', 'Bangalore'),
				('Jamnabhai College', 'Kolkata'),
				('Nova Group', 'Chennai'),
				('Mindtree', 'Geneva'),
				('Oracle', 'Bangalore'),
				('Palm', 'Mumbai'),
				('Toyota', 'Toronto'),
				('Volvo group', 'Hyderabad');

insert into scholarship values('Jyoti Scholarship', 6000, 'Private', 'SC', 'CS'), 
				('ABC Scholarship', 3000, 'Private', 'Go', 'CS'),
				('Metro Scolarship', 1500, 'Private', 'SC', 'CV'),
				('BSR', 2500, 'Biocon', 'Private', 'BIOTECH'),
				('TeachIndia Scholarship', 7000, 'Govt', 'ST', 'ME'),
				('SET Scholarship',10000, 'Private', 'Gen', 'EC'),
				('Dalai Scholarship', 9000, 'Govt', 'Gen', 'EE'),
				('UNISEF', 5500, 'Govt', 'Gen', 'ME'),
				('Dr Reddy Scholarship', 6000, 'Private', 'Gen', 'EC'),
				('GSRIP', 15000, 'Private', 'Gen', 'CS'),
				('Shakti Scholarship', 20000, 'Govt', 'ST', 'CS'),
				('Aashraya Scholarship', 15000, 'Private', 'Gen', 'CS'),
				('Women Scholarship', 4000, 'Govt', 'Gen', 'CS'),
				('Nehru Scholarship', 7500, 'Govt', 'ST', 'BIOTECH'),
				('Kalam scholarship', 5000, 'Govt', 'Gen', 'EC'),
				('HSCC Scholarship', 6000, 'Private', 'Gen', 'CS'),
				('AFNA Scholarship', 7000, 'Private', 'SC', 'CS'),
				('Sashakt Scholarship', 9000, 'Govt', 'Gen', 'EC'),		
				('NST', 2000, 'Toyota', 'Govt', 'ME'),
				('Ambedkar Scholarship', 1000, 'Govt', 'SC', 'ME');

insert into internship values('ABirla', 'Aditya Birla', 5000, 'CS', 'Bangalore','IN',9.0),
				('ABCC','ABC Group', 2000,'CS', 'Mumbai', 'IN',9.0),
				('BataKol','Bata', 500, 'CV', 'Pune', 'IN',8.0),
				('BSR', 'Biocon', 2500, 'BT', 'Bangalore', 'IN',8.0),
				('CortonaSS', 'Cortona group', 1000 , 'ME', 'Delhi', 'IN',8.0),
				('Dominico','Dominique Industries',7000, 'EC', 'Chennai', 'IN',8.0),
				('Everyready','Ever-ready', 3000,'EE', 'Hyderabad', 'IN',8.0),
				('Fastrack-Annual','Fastrack', 2500, 'ME', 'Gurgaon', 'IN',8.5),
				('GSoc','Google', 13000, 'EC', 'New York', 'GL',7.5),
				('GSRIP','Google', 15000, 'CS', 'Bangalore', 'IN',9.5),
				('IBM Annual','IBM', 8000, 'CS', 'Delhi', 'IN',9.0),
				('ICICIBS', 'ICICI Bank', 5000, 'CS', 'Mumbai', 'IN',8.0),
				('I-Spar', 'Intel', 7000, 'CS', 'Bangalore', 'IN',8.0),
				('JIPMER', 'Jamnabhai College', 4500, 'BT', 'Kolkata', 'IN',8.0),
				('Novascore','Nova Group', 8000, 'EC', 'Chennai', 'IN',8.0),
				('MTSclr', 'Mindtree', 9000, 'CS', 'Geneva', 'GL',8.0),
				('Oracle', 'Oracle', 3000, 'CS', 'Bangalore', 'IN',9.0),
				('POLO', 'Palm', 9500, 'EC', 'Mumbai', 'IN',8.6),		
				('TTL', 'Toyota', 2000, 'ME', 'Toronto', 'GL',8.9),
				('VSR','Volvo group', 1500, 'ME', 'Hyderabad', 'IN',7.5);

insert into applied_for values('byrappan@gmail.com','2018-02-12','BSR', 'Biocon'),
	                          ('byrappan@gmail.com','2018-02-13','JIPMER', 'Jamnabhai College'),
	                          ('amritha@gmail.com','2018-01-07','CortonaSS', 'Cortona group'),
	                          ('amritha@gmail.com','2018-01-08','TTL', 'Toyota'),
	                          ('amritha@gmail.com','2018-01-08','VSR','Volvo group'),
	                          ('chandan@gmail.com','2018-03-08','Everyready','Ever-ready'),
	                          ('anish@gmail.com','2018-02-11','ABCC','ABC Group'),
	                          ('anish@gmail.com','2018-03-11','MTSclr', 'Mindtree'),
	                          ('anish@gmail.com','2018-03-11','Oracle', 'Oracle'),
	                          ('sharath@gmail.com','2018-01-11','Oracle', 'Oracle'),
	                          ('sanketh@gmail.com','2018-01-11','Oracle', 'Oracle'),
	                          ('varsha@gmail.com','2018-01-11','Oracle', 'Oracle'),
	                          ('varsha@gmail.com','2018-01-11','ABCC','ABC Group'),
	                          ('varsha@gmail.com','2018-01-11','GSRIP','Google'),
	                          ('bharath@gmail.com','2018-01-11','GSRIP','Google'),
	                          ('taruni@gmail.com','2018-01-11','GSRIP','Google'),
	                          ('anish@gmail.com','2018-01-11','GSRIP','Google'),
	                          ('ammun@gmail.com','2018-01-11','GSRIP','Google')
	                           ;

-- to check if user is valid
select * from s_user where usr_id='bani@gmail.com' ;

-- to list internships for which user is eligible
select * from internship where branch = (select branch from profile where usr_id = 'anish@gmail.com') and gpa < (select gpa from profile where usr_id = 'anish@gmail.com');


--to list all interships in a your area
select itr_name from internship where city = (select city from profile where usr_id = 'bani@gmail.com');

--changing age for a certain user
update s_user
	set age = 21
	where usr_id = 'anish@gmail.com' ;

select * from internship where emp_name like '%IBM%' or itr_name like '%IBM%';

select * from scholarship where sclr_name like '%IBM%' ;


--to get applications for a company based on cut off marks
select name,gpa,category from (applied_for natural join s_user natural join profile) where emp_name='Oracle' and gpa>(select gpa from internship where emp_name='Oracle');
--summarize application count for each company
select emp_name,count(*) from applied_for group by emp_name;

select itr_name,count(*) from (select * from applied_for where emp_name='Oracle') as E group by E.itr_name;



















                         





