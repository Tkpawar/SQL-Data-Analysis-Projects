
Create Table products(
product_id	int,
product_name text,
	aisle_id int,
	department_id int,
    primary key (product_id),
    foreign key (aisle_id) references aisle (aisle_id),
    foreign key (department_id) references department2 (department_id)

    );
    
    
    
    
    
    







/*
show variables like 'secure_file_priv'
'secure_file_priv', 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\'
*/