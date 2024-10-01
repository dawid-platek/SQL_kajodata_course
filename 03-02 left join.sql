select 
o.customer_id as customer
,o.order_id   as original_order
,or2.order_id as returned_order
,or2.next_order_free
from orders o
left join order_returns or2 on o.order_id = or2.order_id