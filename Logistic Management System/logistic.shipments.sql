create table  Shipment_Details(
SH_ID VARCHAR (6),
SH_CONTENT VARCHAR (40),
SH_DOMAIN VARCHAR (15),
SH_TYPE VARCHAR (15),
SH_WEIGHT VARCHAR (10),
SH_CHARGES INT (10),
shipment_details_ADDR VARCHAR (100) ,
DS_ADDR VARCHAR (100),
Customer_Cust_ID INT (4),
primary key (SH_ID),
foreign key (Customer_Cust_ID) references customer(C_ID)
);

