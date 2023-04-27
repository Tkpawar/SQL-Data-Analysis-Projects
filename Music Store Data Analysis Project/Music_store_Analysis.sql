# -------- Analysis on Music_Store Data------

# 1) Finding the  total Album  for each Artist category and also find that artist name
select  a.artist_id,ar.name,count(a.album_id) as total_albums from album as a join artist ar
on a.artist_id= ar.artist_id
group by a.artist_id
order by total_albums desc


# 2)Find how many customer purchase the same track and also find the unit price of that track 
  # and find that customer belong to which country 
  # Invoiceline - track(trackid), invoice-customer
  
Select t.name,c.country,c.first_name, count(c.customer_id) as total_customers from invoice_line as il join track as t
on il.track_id= t.track_id
join invoice as i
on il.invoice_id = i.invoice_id
join customer as c
on i.customer_id = c.customer_id
group by t.track_id,c.country,c.customer_id
order by total_customers desc
limit 5



# 3)Which country purchase the same track maximum time
Select t.name,c.country, count(c.country) as total_track from invoice_line as il join track as t
on il.track_id= t.track_id
join invoice as i
on il.invoice_id = i.invoice_id
join customer as c
on i.customer_id = c.customer_id
group by t.track_id,c.country
order by total_track desc
limit 5



# 4)Which country purchase the same track minimum time
Select t.name,c.country,il.unit_price, count(c.country) as total_track from invoice_line as il join track as t
on il.track_id= t.track_id
join invoice as i
on il.invoice_id = i.invoice_id
join customer as c
on i.customer_id = c.customer_id
group by t.track_id,c.country
order by total_track asc
limit 5


#5) Find the total prices for that track those who buy same track maximum time and find that customer name
Select t.name,c.country,c.first_name,il.unit_price, sum(i.total) as total_prices from invoice_line as il join track as t
on il.track_id= t.track_id
join invoice as i
on il.invoice_id = i.invoice_id
join customer as c
on i.customer_id = c.customer_id
group by t.track_id,c.customer_id
order by total_prices desc
limit 5



#5) Find the total prices for that track those who buy same track minimum time
Select t.name,c.country,c.first_name,il.unit_price, sum(i.total) as total_prices from invoice_line as il join track as t
on il.track_id= t.track_id
join invoice as i
on il.invoice_id = i.invoice_id
join customer as c
on i.customer_id = c.customer_id
group by t.track_id,c.customer_id
order by total_prices asc
limit 5



#6) Find the total prices for that track those who buy same track  on the same date maximum time and find that customer name
Select t.name,c.first_name,i.invoice_date,il.unit_price, sum(i.total) as total_prices from invoice_line as il join track as t
on il.track_id= t.track_id
join invoice as i
on il.invoice_id = i.invoice_id
join customer as c
on i.customer_id = c.customer_id
group by t.track_id,i.invoice_date,c.first_name
order by total_prices desc
limit 5


# 7) Find the total prices for that track those who buy same track  on the same date minimum time and find that customer name
Select t.name,c.first_name,i.invoice_date,il.unit_price, sum(i.total) as total_prices from invoice_line as il join track as t
on il.track_id= t.track_id
join invoice as i
on il.invoice_id = i.invoice_id
join customer as c
on i.customer_id = c.customer_id
group by t.track_id,i.invoice_date,c.first_name
order by total_prices desc
limit 5

# 8) find the total customers who buy the track on same date 
Select il.track_id,i.invoice_date,count(i.customer_id)as total_customers from invoice_line as il join invoice as i
on il.invoice_id = i.invoice_id
group by il.track_id,i.invoice_date
order by total_customers desc
limit 5


# 9) which genre is most used by the same track
Select t.track_id,t.name,count(g.genre_id)as total_genre from track as t join genre as g
on t.genre_id= g.genre_id
group by t.name
order by  total_genre desc
limit 5


# 10) find total album is used in tracks
Select t.track_id,a.title,t.name,count(a.album_id)as total_albums from track as t join album as a
on t.album_id= a.album_id
group by t.name
order by  total_albums  desc
limit 5


# 11) which playlist is mostly sell according to the title track
Select t.name,pl.name,il.unit_price, sum(i.total) as total_prices from invoice_line as il join track as t
on il.track_id= t.track_id
left join playlist_track as p
on t.track_id=p.track_id
join playlist as pl
on p.playlist_id= pl.playlist_id
join invoice as i
on il.invoice_id = i.invoice_id

join customer as c
on i.customer_id = c.customer_id
group by t.track_id,p.playlist_id
order by total_prices desc
limit 5



# 12) which media_type is mostly sell according to the title track and which customer purchase it and on which date
Select t.name,m.name,i.invoice_date,m.name,il.unit_price, sum(i.total) as total_prices from invoice_line as il join track as t
on il.track_id= t.track_id
join media_type as m
on t.media_type_id = m.media_type_id
join invoice as i
on il.invoice_id = i.invoice_id
join customer as c
on i.customer_id = c.customer_id
group by t.track_id,m.name,i.invoice_date,c.first_name
order by total_prices desc
limit 5

