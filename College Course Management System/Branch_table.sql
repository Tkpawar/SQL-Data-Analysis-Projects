Create Table Branch (
B_Id Int Not null,
Branch_Name varchar(50),
primary key (B_Id));

Insert Into Branch (B_Id,Branch_Name)
values (1, "Information Technology"),
       (2, "Mech"),
       (3, "Electronics"),
       (4, "Electrical"),
       (5, "Computer");
