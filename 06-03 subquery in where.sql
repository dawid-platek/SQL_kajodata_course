select 
o.delivery_state 
,o.shipping_mode 
,(select count(order_id) as total_orders from orders) 		as total_orders
,ds.nr_of_orders_ds											as nr_of_orders_ds
,count(o.order_id) 											as nr_of_orders 
,round((count(o.order_id) / ds.nr_of_orders_ds) * 100,1) 	as ds_ratio_percent
from orders o 
inner join 
	(
	select 
	delivery_state 
	,count(order_id) as nr_of_orders_ds
	from orders o 
	group by 1
	) ds on ds.delivery_state = o.delivery_state 
where 
	o.delivery_state in 
	(
		select
		delivery_state
		from orders o
		group by 1
		having count(distinct customer_id) > 100
	)
group by 1, 2, 3, 4
order by 1, 2


