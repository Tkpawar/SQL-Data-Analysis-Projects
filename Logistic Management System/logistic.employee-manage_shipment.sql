create   table Employee_Manages_Shipment ( 
Employee_E_ID INT (5),
Shipment_SH_ID Int (6) ,
Status_SH_ID Int (6),
foreign key (Employee_E_ID) references employee_details(E_ID),
foreign key (Shipment_SH_ID) references shipment_details(SH_ID),
foreign key (Status_SH_ID) references shipment_details(SH_ID)
);
