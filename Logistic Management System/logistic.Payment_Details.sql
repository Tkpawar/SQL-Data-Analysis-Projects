Create table Payment_Details (
PAYMENT_ID VARCHAR(40) unique,
AMOUNT Int,
PAYMENT_STATUS VARCHAR (10) ,
PAYMENT_DATE TEXT,
PAYMENT_MODE VARCHAR (25) ,
Shipment_SH_ID Int (6),
Shipment_Client_C_ID INT (4) ,
primary key (PAYMENT_ID),
foreign key (Shipment_SH_ID) references shipment_details(SH_ID),
foreign key (Shipment_Client_C_ID) references customer(C_ID)
);





