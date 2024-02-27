SELECT
 market,
 round(sum(net_sales)/1000000,2) as net_sales_in_millions
 FROM gdb0041.net_sales
 where fiscal_year=2021
 group by market
 order by net_sales_in_millions desc
 limit 5