select 
	c.customer,
    round(sum(net_sales)/1000000,2) as net_sales_in_millions
from
	net_sales n
join 
	dim_customer c 
on
	n.customer_code=c.customer_code
where
	fiscal_year=2021
group by
	c.customer
order by 
	net_sales_in_millions desc
limit 5