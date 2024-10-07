create table managers(
manager_id integer
,manager_name text
)

insert into managers (
manager_id, manager_name
)
values
(1, 'Tonny Campbell')

select * from managers

update managers
set manager_name = 'Johnny Walker'
where manager_id = 1

delete from managers
where manager_id=1

drop table managers