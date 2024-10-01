select 
o.customer_id as customer
,o.order_id   as original_order
,or2.order_id as returned_order
,or2.next_order_free
from order_returns or2 
right join orders o on o.order_id = or2.order_id