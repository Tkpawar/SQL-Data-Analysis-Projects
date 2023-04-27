## -- Analalysis on Grocerry _Stores--
 

# 1) which department has the maximum product  according to the products 
Select p.product_name, d.department,count(p.product_id)as total_products 
from products as p join department2 as d
on p.department_id= d.department_id
group by d.department
order by total_products desc
limit 5 



#  2) which department has the minimum product  
Select  d.department,product_name,count(p.product_id)as total_products 
from products as p join department2 as d
on p.department_id= d.department_id
group by d.department
order by total_products asc
limit 1


# 3) Which user has take maximum time same product
select os.user_id,p.product_name,op.product_id, count(p.product_name) as same_product_total from 
orders_small_version as os join order_product as op
on os.order_id= op.order_id
join products as p
on op.product_id= p.product_id
group by os.user_id, p.product_name
order by same_product_total desc
limit 5


# 4) which product has maximum oreder by the costumers
Select p.product_name,order_id ,count(p.product_id) as max_ordered_products from order_product as o join products as p
on o.product_id= p.product_id
group by p.product_id
order by max_ordered_products desc
limit 5



# 5) which product has min oreder by the costumers
Select p.product_name,order_id ,count(p.product_id) as min_ordered_products from order_product as o join products as p
on o.product_id= p.product_id
group by p.product_id
order by min_ordered_products 
limit 5


# 6) which product has maximum reoredered by the costumers
Select p.product_name,o.reordered,count(p.product_id) as max_reordered_products from order_product as o join products as p
on o.product_id= p.product_id
group by p.product_id,o.reordered
order by max_reordered_products desc
limit 5







# 7) At the same order_hour_day which products has been max order and and from which department
select p.product_name,d.department,os.order_hour_of_day, count(p.product_name) as total_product_ordered from order_product as o join  orders_small_version as os
on o.order_id = os.order_id
join products as p
on o.product_id= p.product_id
join department2 as d
on p.department_id= d.department_id
group by p.product_name,os.order_hour_of_day,d.department
order by  total_product_ordered desc
limit 5



# 8) At the same order_hour_day which products has been min order and and from which department
select p.product_name,d.department,os.order_hour_of_day, count(p.product_name) as total_product_ordered from order_product as o join  orders_small_version as os
on o.order_id = os.order_id
join products as p
on o.product_id= p.product_id
join department2 as d
on p.department_id= d.department_id
group by p.product_name,os.order_hour_of_day,d.department
order by  total_product_ordered 
limit 5



#9) which product has maximum add_to_cart_orderAnd also show that product from which dept 
Select p.product_name,d.department,o.add_to_cart_order,count(o.add_to_cart_order) as max_add_to_cart_order from order_product as o join products as p
on o.product_id= p.product_id
join department2 as d
on p.department_id= d.department_id
group by p.product_id,d.department
order by max_add_to_cart_order desc
limit 5
