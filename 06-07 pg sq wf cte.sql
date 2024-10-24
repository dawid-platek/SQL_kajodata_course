/* subquery */
select 
o.delivery_state 
,o.shipping_mode 
,(select count(order_id) as total_orders from orders) 		as total_orders
,ds.nr_of_orders_ds											as nr_of_orders_ds
,count(o.order_id) 											as nr_of_orders 
,round((count(o.order_id) / ds.nr_of_orders_ds::numeric) * 100,1) 	as ds_ratio_percent
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

/* cte */
with
needed_states as
	(
	select delivery_state
	from orders
	group by 1
	having count(distinct customer_id) > 100
	),
all_orders as
	(
	select count(order_id) as total_orders 
	from orders
	),
ds_orders as
	(
	select  
		delivery_state 
		,count(order_id) as orders_ds
	from orders
	group by 1
	),
ds_sm_orders as
	(
	select 
		delivery_state 
		,shipping_mode 
		,count(o.order_id)	as orders_ds_sm
	from orders o
	group by 1, 2
	)
select 
	dss.delivery_state
	,dss.shipping_mode
	,ao.total_orders
	,dso.orders_ds
	,dss.orders_ds_sm
	,round((dss.orders_ds_sm / dso.orders_ds::numeric) * 100, 1) as ds_ratio_percent
from ds_sm_orders 		dss
join ds_orders 			dso	on	dss.delivery_state = dso.delivery_state
join needed_states		ns 	on 	ns.delivery_state = dss.delivery_state
cross join all_orders 	ao
order by 1, 2

/* windows functions 1 */
select 
	cost_forecast_id
	,cost_forecast
	,cost_year
	,ship
	/* no partition */
	,row_number() over 
		(order by cost_forecast desc) 							as row_number_ranking 
	,rank() over 
		(order by cost_forecast desc) 							as rank_ranking 
	,dense_rank() over 
		(order by cost_forecast desc)    						as dense_rank_ranking 	
	/* partition by year*/
	,row_number() over 
		(partition by cost_year order by cost_forecast desc) 	as row_number_ranking_y 
	,rank() over 
		(partition by cost_year order by cost_forecast desc) 	as rank_ranking_y
	,dense_rank() over 
		(partition by cost_year order by cost_forecast desc)    as dense_rank_ranking_y 
	/* partition by year and shipping*/
	,dense_rank() over 
		(partition by cost_year, ship order by cost_forecast desc)    as dense_rank_ranking_s
from cost_forecast

/* windows functions 2 */
select 
	order_id
	,order_date
	,delivery_city
	,delivery_state
	,count(order_id) over (partition by delivery_city) as city_orders
	,min(order_date) over (partition by delivery_state) as first_state_order
from orders o 
order by 1
