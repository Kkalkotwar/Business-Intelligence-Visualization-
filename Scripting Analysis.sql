# select * from hotel_revenue_historical_2018 where company is NULL

# Creating one temperory table in which we will in capsulate the various tables.

# select * from hotel_revenue_historical_2018;
# use hotel;
with hotel as ( 
select * from hotel_revenue_historical_2018
union
select * from hotel_revenue_historical_2019
union
select * from hotel_revenue_historical_2020)

# Doing necessary operations on above tables

# 1. To quickly analyse that, Is the hotel revenue growing by year?
# Now we dont have the revenue column in our dataset, so lets try to do some operation 

select 
arrival_date_year, hotel,
round(sum((stays_in_weekend_nights + stays_in_week_nights)*adr),2) as revenue 
from hotel group by arrival_date_year, hotel order by revenue desc




 