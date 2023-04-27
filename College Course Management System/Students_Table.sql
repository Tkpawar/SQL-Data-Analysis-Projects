Create table Students (
St_Id Int unique,
Name varchar(50),
Age varchar(50),
Gender varchar(50),
City varchar(50),
Course_Name int,
Course_Start_Date Date ,
Course_End_Date Date,
Course_Duration int,
Teachers_Name int,
Branch_Name int,
primary key (St_Id),
Foreign key (Course_Name) references Course (Cr_Id),
Foreign key (Teachers_Name) references  Teachers (Tr_Id),
Foreign key (Branch_Name) references Branch (B_Id),
Foreign key (Course_Duration) references Course_Period (Cr_du_Id));


Insert into Students (St_Id, Name, Age, Gender, City, Course_Name,Course_Start_Date,
                     Course_End_Date,Course_Duration,Teachers_Name,Branch_Name)
values (1, "Raj","22","M","Nashik","2","2023-2-19","2023-4-28","2","2","3"),
       (2, "Nandini","23","F","Mumbai","3","2023-4-19","2023-7-03","3","3","4"),
       (3, "Sayali","24","F","Nagpur","4","2023-3-19","2023-6-8","4","4","5"),
       (4, "Priyanka","23","F","Akola","1","2023-4-19","2023-7-12","1","1","1"),
       (5, "Drushti","25","F","Sangli","2","2023-2-19","2023-4-28","2","2","3"),
       (6, "Ram","22","M","Pune","3","2023-4-19","2023-7-03","3","3","2"),
       (7, "Sham","23","M","Delhi","4","2023-3-19","2023-6-8","4","4","4"),
       (8, "Ramesh","23","M","Delhi","5","2023-2-19","2023-10-26","5","5","5"),
       (9, "Dipti","24","F","Pune","5","2023-2-19","2023-10-26","5","5","5"),
       (10, "Tushar","21","M","Nashik","4","2023-3-19","2023-6-8","2","2","2"),
       (11, "Sanket","22","M","Pune","4","2023-3-19","2023-6-8","4","4","1"),
       (12, "Pratik","25","M","Sangli","5","2023-2-19","2023-10-26","5","5","3"),
       (13, "Pravin","24","M","Akola","3","2023-4-19","2023-7-03","3","3","4"),
       (14, "Santosh","26","M","Akola","5","2023-2-19","2023-10-26","5","5","3"),
       (15, "Aniket","23","M","Nashik","3","2023-4-19","2023-7-03","3","3","2"),
       (16, "Tejas","21","M","Nagpur","2","2023-2-19","2023-4-28","2","2","5"),
       (17, "Rajnandini","23","F","Sangli","5","2023-2-19","2023-10-26","5","5","4"),
       (18, "Samruddhi","22","F","Nashik","3","2023-4-19","2023-7-03","3","3","5"),
       (19, "Raj","26","M","Sangli","2","2023-2-19","2023-4-28","2","2","1"),
       (20, "Vaishnavi","22","F","Delhi","4","2023-3-19","2023-6-8","4","4","2"),
       (21, "Anuradha","21","F","Mumbai","1","2023-4-19","2023-7-12","1","1","4"),
       (22, "Priya","23","F","Pune","4","2023-3-19","2023-6-8","4","4","3"),
       (23, "Diksha","24","F","Nagpur","4","2023-3-19","2023-6-8","4","4","5"),
       (24, "Lakshman","21","M","Akola","1","2023-4-19","2023-7-12","1","1","1"),
	   (25, "Lakhan","25","M","Nagpur","5","2023-2-19","2023-10-26","5","5","2");



