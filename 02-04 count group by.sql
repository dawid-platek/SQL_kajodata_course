select
	shipping_mode 
	,count(*) as nr_of_orders
from orders o 
where 
	delivery_city="Los Angeles"
group by 1