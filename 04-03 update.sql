select * from managers m 

update managers 
set manager_email = concat(lower(firstname),'.',lower(lastname),'@supersales.com')
where manager_email is null

select * from managers m 