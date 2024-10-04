select
	group_id 
	,round(sum(product_price),2) 	as total_price
	,round(avg(product_price),2) 	as average_price
	,round(min(product_price),2)  	as min_price
	,round(max(product_price),2)  	as max_price
from
	products p 
where group_id <> 15
group by 1
having min(product_price) > 10


select 
	delivery_state
	,max(order_date) as last_order
	,min(order_date) as first_order 
from
	orders o 
where shipping_mode = 'First Class'
group by 1
having max(order_date) < date('2021-01-01')