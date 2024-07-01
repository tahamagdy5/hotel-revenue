select arrival_date_month,sum(agent) as'total agents',sum(stays_in_week_nights+stays_in_weekend_nights) as'total nights' , market_segment
from dbo.['2018$']
group by arrival_date_month ,market_segment
order by [total agents] desc  
