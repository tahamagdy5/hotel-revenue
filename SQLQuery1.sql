with Hotels as 
(
select * from dbo.['2018$']
union
select * from dbo.['2019$']
union
select * from dbo.['2020$'] 
)
select Hotels.arrival_date_year,Hotels.hotel ,
sum((Hotels.stays_in_week_nights+Hotels.stays_in_weekend_nights)* adr)as 'Revenue ' ,
meal_cost$.Cost
from Hotels 
left join meal_cost$
on Hotels.meal=meal_cost$.meal
left join market_segment$ 
on Hotels.market_segment=market_segment$.market_segment
group by Hotels.arrival_date_year ,Hotels.hotel,meal_cost$.Cost