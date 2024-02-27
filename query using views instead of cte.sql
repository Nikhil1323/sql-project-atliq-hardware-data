
select *,
	gross_price_total * (1 - pre_invoice_discount_pct) as net_invoice_sales
from sales_preinv_discount