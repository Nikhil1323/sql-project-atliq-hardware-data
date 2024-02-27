select 
	ns.date,ns.fiscal_year,
    ns.customer_code,
    ns.market,
    ns.product_code,
    ns.product,
    ns.variant,
    ns.sold_quantity,
    gp.gross_price as  gross_price_per_item,
    ns.sold_quantity*gp.gross_price as gross_price_total
from
	net_sales ns
join 
	fact_gross_price gp
on
	ns.product_code=gp.product_code and
    ns.fiscal_year=gp.fiscal_year