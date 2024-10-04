select * from product_groups pg where group_id between 1 and 7
union
select * from product_groups pg where group_id between 3 and 10