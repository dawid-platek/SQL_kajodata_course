select
	shipping_mode 
	,count(order_id) 				as nr_of_orders
	,count(distinct customer_id) 	as nr_of_unique_customers
from orders o
where delivery_city = 'Los Angeles'
group by 1;

select distinct 
shipping_mode 
,delivery_state 
from orders