select 
o.delivery_state
,extract (year from o.order_date) as order_year
,count(distinct o.order_id) as nr_of_orders
from orders o
inner join order_returns or2 on o.order_id = or2.order_id
where next_order_free = 1
group by 1, 2
having count (distinct o.order_id) > 1
order by 3 desc
limit 1