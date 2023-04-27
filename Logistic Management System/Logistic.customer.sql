Create table  Customer (
Cust_ID Int,
Cust_NAME VARCHAR (30),
Cust_EMAIL_ID VARCHAR (50),
Cust_CONT_NO VARCHAR (10),
Cust_ADDR VARCHAR (100),
Cust_TYPE VARCHAR (30), 
Membership_M_ID INT,
primary key (Cust_ID),
foreign key (Membership_M_ID) references membership(M_ID)
);

