select 
	product,
    round(sum(net_sales)/1000000,2) as net_sales_in_millions
from
	net_sales 
where
	fiscal_year=2021
group by
	product
order by 
	net_sales_in_millions desc
limit 5