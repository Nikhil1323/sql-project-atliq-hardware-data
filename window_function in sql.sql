#Using window function to find out the percentage amount of the total amount for each expenses
select 
	*,
    amount*100/sum(amount) over() as pct
from expenses
order by category;

#finding percentage over the total amount per individual category
select 
	*,
	amount*100/sum(amount) over(partition by category) as pct
from 
	expenses
order by 
	category;


#To find the cumulative expenses
select
	*,
    sum(amount) over(partition by category order by date) as total_expense_till_date
from expenses
order by category, date