Create Table orders_small_version(
order_id int,
	user_id int,
	eval_set text,
	order_number int,
	order_dow int,
	order_hour_of_day int,
	days_since_prior_order int,
    primary key (user_id),
    foreign key (order_id) references order_product(order_id));
    
