insert into managers(
firstname, lastname
)
values
('Mark', 'Smith')
,('Jeanne', 'Doe')
,('James', 'Adams')

insert into managers_product_groups 
(
manager_id, group_id 
)
values
(1,1), (1,2), (1,3), (1,4), (1,5), (1,6), (1,7), (1,8),
(2,9), (2,10), (2,11), (2,12), (2,13), (2,14), (2,15), (2,16),
(3,1), (3,2)

select *
from managers_product_groups mpg 