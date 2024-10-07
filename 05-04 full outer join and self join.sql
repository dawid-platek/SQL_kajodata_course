/* full outer join */
select * from order_returns order by order_id desc

insert into order_returns (order_id, next_order_free)
values (9999, 0)

select
	o.order_id as original_order
	,or2.order_id as returned_order
from orders o
full outer join order_returns or2 on o.order_id = or2.order_id
where or2.order_id is not null
order by 2 desc

select
	o.order_id as original_order
	,or2.order_id as returned_order
from orders o
full outer join order_returns or2 on o.order_id = or2.order_id
order by 2 asc


/* self join */
select
*
from customers c1
join customers c2 on c1.customer_id = c2.customer_id

create table employee (
employee_id integer
,manager_id integer
)

insert into employee (employee_id, manager_id)
values
(1, null),
(2, 1),
(3, 1),
(4, 2)

select * from employee

select
e1.employee_id as boss
,e2.employee_id as employee
from employee e1
join employee e2 on e1.employee_id = e2.manager_id

