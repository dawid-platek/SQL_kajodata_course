select * from product_groups pg where group_id between 1 and 7
union all
select * from product_groups pg where group_id between 3 and 10

select
	category
	,1 as product_id
	,2 as product_price
from product_groups pg 
union all
select
	'aaa' as category
	,product_id
	,product_price
from products p 