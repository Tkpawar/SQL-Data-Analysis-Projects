Create Table invoice (
invoice_id int ,
customer_id int,
invoice_date text,
billing_address text,
billing_city text,
billing_state text,
billing_country	text,
billing_postal_code text,
total double,
primary key (invoice_id),
foreign key (customer_id) references customer (customer_id)); 

