# find the customer who paid max amount and whose customer_type is Internal Goods

Select  distinct c.C_ID,c.C_NAME,c.C_TYPE ,max(p.AMOUNT)  As max_amount, p.Payment_Status from customer c, payment_details p
where C_TYPE = "Internal Goods" and  Payment_Status ="PAID"

order by c.C_ID


# Find the customer who paid max amount and whose customer type is Internal Goods and his payment_Mode is Card_Payment

Select  distinct c.C_ID,c.C_NAME,c.C_TYPE ,max(p.AMOUNT) as max_amount,p.Payment_Date, 
count(c.C_NAME)as count_name,p.Payment_Mode, p.Payment_Status from customer c Inner join  payment_details p
on
c.C_ID= p.C_ID

where C_TYPE = "Internal Goods" and  Payment_Mode ="COD"
group by Payment_Status

order by c.C_ID


select  c.C_NAME,c.C_ID, p.AMOUNT, max(p.Amount) from payment_details as p, customer as c  
group by c.C_NAME

order by p.Amount desc 
LIMIT 2  


# find top 5 customer who paid max amount 
select  c.C_NAME , p.SH_ID, p.Payment_Mode,p.Payment_Status, p.C_ID,max(p.Amount) as max_amount from payment_details p inner join customer as c
on 
c.C_ID =p.C_ID 
group by p.C_ID
order by Amount desc
limit 5




# find top 5 customer who paid min amount 
select  c.C_NAME , p.SH_ID, p.Payment_Mode,p.Payment_Status, p.C_ID,min(p.Amount) as max_amount from payment_details p inner join customer as c
on 
c.C_ID =p.C_ID 
group by p.C_ID
order by Amount 
limit 5




# find total customer who paid the amount and their paymentmode shold be card payment
select   p.Payment_Mode,p.Payment_Status, count(p.Payment_Status) as total_paid  
from payment_details p inner join customer as c
on 
c.C_ID =p.C_ID 
where p.Payment_Status = "Paid"
group by p.Payment_Mode


# find the customer who paid max amount and whose customer_type is Internal Goods

Select  distinct c.C_ID,c.C_NAME,c.C_TYPE ,max(p.AMOUNT)  As max_amount, p.Payment_Status from customer c, payment_details p
where C_TYPE = "Internal Goods" and  Payment_Status ="PAID"

order by c.C_ID

# Find the customer who paid max amount and whose customer type is Internal Goods and his payment_Mode is Card_Payment

Select  distinct c.C_ID,c.C_NAME,c.C_TYPE ,max(p.AMOUNT) as max_amount,p.Payment_Date, 
count(c.C_NAME)as count_name,p.Payment_Mode  , p.Payment_Status from customer c, payment_details p

where C_TYPE = "Internal Goods" and  Payment_Mode ="COD"
group by Payment_Status

order by c.C_ID


select  c.C_NAME,c.C_ID, p.AMOUNT, max(p.Amount) from payment_details as p, customer as c  
group by c.C_NAME

order by p.Amount desc 
LIMIT 2  


# find top 5 customer who paid max amount 
select  c.C_NAME , p.SH_ID, p.Payment_Mode,p.Payment_Status, p.C_ID,max(p.Amount) as max_amount from payment_details p inner join customer as c
on 
c.C_ID =p.C_ID 
group by p.C_ID
order by Amount desc
limit 5




# find top 5 customer who paid min amount 
select  c.C_NAME , p.SH_ID, p.Payment_Mode,p.Payment_Status, p.C_ID,min(p.Amount) as max_amount from payment_details p inner join customer as c
on 
c.C_ID =p.C_ID 
group by p.C_ID
order by Amount 
limit 5


# find total customer who dont paid the amount and  show their paymentmode and their date
select   p.Payment_Date,p.Payment_Mode,p.Payment_Status, count(p.Payment_Status)  as total_notpaid, count(c.C_ID)  as totalid   
from payment_details p inner join customer as c
on 
c.C_ID =p.C_ID 
where p.Payment_Status = "NOT PAID"
group by p.Payment_Date
# blank dates r shwoing to not paid payment--



# find total customer who dont paid the amount and  show their paymentmode and their date and Amount also they paid
select  c.C_NAME,p.Payment_Date, sum(p.Amount),p.Payment_Mode,p.Payment_Status, count(p.Payment_Status)  as total_notpaid, count(c.C_ID)  as totalid   
from payment_details p inner join customer as c
on 
c.C_ID =p.C_ID 
where p.Payment_Status = "Not PAID"
group by p.AMOUNT


# find the customer whose paymnets stauts is not paid and they and show they Total unpaid Amount sattus
select  c.C_NAME,p.Payment_Date, sum(p.Amount),p.Payment_Mode,p.Payment_Status, count(p.Payment_Status)  as total_notpaid, count(c.C_ID)  as totalid   
from payment_details p inner join customer as c
on 
c.C_ID =p.C_ID 
where p.Payment_Status = "Not PAID"
group by p.Payment_Status


# find the customer who paid max Amount and on whuch date they paid max amount
select  c.C_NAME,p.Payment_Date, max(p.Amount),p.Payment_Mode,p.Payment_Status, count(p.Payment_Status)  as total_notpaid, count(c.C_ID)  as totalid   
from payment_details p inner join customer as c
on 
c.C_ID =p.C_ID 
where p.Payment_Status = "PAID"
group by p.AMOUNT
 order by p.AMOUNT desc
 limit 5


 # find the customer who paid the amount upto 99604
 select c.C_ID,p.Payment_Status,c.C_Name,max(p.AMOUNT) as maxamount , count(c.C_ID) as countid    from payment_details as p inner join customer as c
 on c.C_ID = p.C_ID
 where Payment_Status = "Paid" and p.AMOUNT = "99604"
 group by p.Payment_Status, p.AMOUNT
 limit 5

 

 # find the customer who paid the amount and its status is notpaid
 select c.C_NAME,c.C_ID,p.Payment_Status,c.C_Name,max(p.AMOUNT) as maxamount , count(c.C_ID) as countid    from payment_details as p inner join customer as c
 on c.C_ID = p.C_ID
 where Payment_Status = "Not Paid" 
 group by p.Payment_Status
 order by AMOUNT desc


# Find the total shipment domain for each catrory of shipments content--
select SH_CONTENT, SH_DOMAIN,count(SH_DOMAIN) from shipment_details
group by SH_CONTENT,SH_DOMAIN
order by count(SH_DOMAIN) desc



# Find the  total customer and also shownits satitus paid  or not according to the sh content , domain 
select  c.C_ID,c.C_NAME,s.SH_CONTENT,p.Amount,p.Payment_Status, count(p.Payment_Status),s.SH_DOMAIN,count(s.SH_DOMAIN) from shipment_details as s inner join customer as c
on s.C_ID= c.C_ID
inner join payment_details as p
on
s.C_ID= P.C_ID
where Payment_Status = "Paid"
group by c.C_ID



# Find total not paid payment status according shcontent and also show its date
select  p.Payment_Date,s.SH_CONTENT,p.Payment_Status,count(SH_CONTENT)as count_sh_content from shipment_details as s inner join customer as c
on s.C_ID= c.C_ID
inner join payment_details as p
on
s.C_ID= P.C_ID
where Payment_Status = "NOT PAID" #or Payment_Status ="Paid"
group by SH_CONTENT
order by count_sh_content desc


# Find total  paid payment status according shcontent and also show its date
select  c.C_NAME,p.Payment_Date, st.Current_Status,p.AMOUNT,s.SH_CONTENT,p.Payment_Status,p.Payment_Mode,count(SH_CONTENT)as count_sh_content, 
sum(p.Amount)as totalamount from shipment_details as s inner join customer as c
on s.C_ID= c.C_ID
inner join payment_details as p
on
s.C_ID= P.C_ID
inner join status as st
on s.SH_ID = st.SH_ID
where Payment_Status = "NOT PAID"  
group by  Payment_Status, SH_CONTENT 


 






 
 




 







 
 


