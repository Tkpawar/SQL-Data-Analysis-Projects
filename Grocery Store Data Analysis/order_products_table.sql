Create table order_product(
order_id int,
	product_id int,
	add_to_cart_order int,
	reordered int,
    primary key (order_id),
    foreign key (product_id) references  products (product_id));
    
