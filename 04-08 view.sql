create view vw_orders_after_2022 as
select * from orders
where order_date >= date('2022-01-01')

select * from vw_orders_after_2022 voa 

create or replace view vw_orders_after_2022 as
select 
	order_id
	,order_date
from orders
where order_date >= date('2022-01-01')

drop view if exists vw_orders_after_2022 