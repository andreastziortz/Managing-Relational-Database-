
create procedure count_customers @geo_id int as
select count(cust_id ) as number_of_customers
from customer,geogr_dept
where  geogr_dept.geo_id=@geo_id and customer.geo_id=geogr_dept.geo_id 

exec  count_customers @geo_id=1;
select * from customer;

drop procedure count_customers;