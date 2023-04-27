# Indian Airline Analysis
/*
# 1) Which  Airline has maximum Price
Select  Airline,max(Price) as max_price from airlines
group by Airline
order by max_price desc
*/
/*
# 2) which date Airlines have maximum price
Select  Airline,Date_of_Journey,max(Price) as max_price from airlines
group by Airline , Date_of_Journey
order by max_price desc

*/
/*
# 3)  Count the total flights and their total_price according to source ,destinations, and date_of_journey
Select Airline, Source,Date_of_Journey, Destination,count(Source and Destination) as total_flights, sum(price) as total_price from airlines
group by Airline , source, Destination, Date_of_Journey
order by total_flights desc , total_price desc
*/

/*
# 4) Count the total flights according to date_of _journey
select  Airline, Date_of_Journey,count(Airline) as total_flights from airlines
group by Date_of_Journey
order by total_flights desc

*/

/*
# 5) count the  Maximum  stops According to Airlines
Select Airline , count(Total_Stops)as total_stops  from airlines 
group by Airline
*/
/*
# 6) count the  Minimum  stops According to Airlines
Select Airline , count(Total_Stops)as total_stops  from airlines 
group by Airline
order by total_stops  asc
limit 5
*/
/*
#  7) Calculating Maximum prices According to the Source and destinations and on which dates
 select Source, Destination, Date_of_Journey, Airline, Max(Price)as Max_price from airlines
 group by Source, Destination, Date_of_Journey,Airline
 order by Max_price  desc
*/ 
/* 
# 8) Calculating Minimum prices According to the Source and destinations and on which dates
 select Source, Destination, Date_of_Journey, Airline, Min(Price)as Max_price from airlines
 group by Source, Destination, Date_of_Journey,Airline
 order by Max_price  asc
 limit 5
 */
/* 
 #9) which Airlines has max duration time and its airline name
 select Airline,Duration,   max(Duration)as max_Duration  from  airlines
 group by Duration ,Airline
 order by max_Duration,Airline  desc
 limit 5
 */
 
 /*
 #10) count the maximum  stops according to Airlines
 select Airline,Duration,   count(Total_Stops)as max_Stops  from  airlines
 group by Total_Stops ,Airline
 order by max_Stops desc
 limit 5
 */
 /*
 #11) count the minimum stops according to Airlines
 select Airline,Duration,   count(Total_Stops)as max_Stops  from  airlines
 group by Total_Stops ,Airline
 order by max_Stops asc
 limit 5
 */
