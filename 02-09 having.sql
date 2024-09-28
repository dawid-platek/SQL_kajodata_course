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