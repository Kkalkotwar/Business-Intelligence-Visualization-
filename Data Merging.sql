

with hotel as ( 
select * from hotel_revenue_historical_2018
union
select * from hotel_revenue_historical_2019
union
select * from hotel_revenue_historical_2020)

select * from hotel 
left join hotel_meal_cost on hotel_meal_cost.meal = hotel.meal 
left join market_segment on market_segment.market_segment = hotel.market_segment;




