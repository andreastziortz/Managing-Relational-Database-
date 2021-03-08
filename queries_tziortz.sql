--1
select cust_id,cust_AFM,cust_name,cust_address,cust_phone
from customer

--2
select cust_id,paym_date,amount
from payment
where (paym_date >'2012-05-12' and paym_date <'2012-05-22')

--3
select order_date,orders.order_id,prod_id
from orders,set_of_products
where orders.order_id=set_of_products.order_id 

--4
update product set price=1.03*price
--5
select sum(amount) as total,avg(amount) as average,month(paym_date) as month_of_2012
from payment
where (year(paym_date)=2012)
group by month(paym_date)


--6
select customer.cust_AFM,customer.cust_name
from customer,orders,set_of_products,product
where month(order_date)=1 and year(order_date)=2013 and  customer.cust_id=orders.cust_id and orders.order_id=set_of_products.order_id and product.prod_id=set_of_products.prod_id 
group by customer.cust_AFM,customer.cust_name
having sum(price*quant_prod)>2500

--7
select customer.cust_id,category.cat_id,sum(price*quant_prod)
from customer,orders,set_of_products,product,category
where customer.cust_id=orders.cust_id and  orders.order_id=set_of_products.order_id and set_of_products.prod_id=product.prod_id  and  product.cat_id=category.cat_id
group by category.cat_id,customer.cust_id
--8
select avg(price*quant_prod) as avg_sales,geogr_dept.geo_id,category.cat_id
from geogr_dept,category,product,customer,set_of_products,orders
where (geogr_dept.geo_id=customer.geo_id and customer.cust_id=orders.cust_id and set_of_products.order_id = orders.order_id and product.prod_id=set_of_products.prod_id and product.cat_id=category.cat_id)
group by geogr_dept.geo_id,category.cat_id

--9

create view v1 as 
select sum(price*quant_prod) as total_sales
from set_of_products,product,orders
where orders.order_id=set_of_products.order_id and set_of_products.prod_id=product.prod_id and year(order_date)=2012  
/*drop view v1*/


select month(order_date) as month_of_2012,sum(price*quant_prod)/total_sales as sales_percent
from set_of_products,product,orders,v1
where orders.order_id=set_of_products.order_id and set_of_products.prod_id=product.prod_id and year(order_date)=2012  
group by month(order_date),total_sales

--10

create view v1 as 
select sum(price*quant_prod) as total_sales
from set_of_products,product,orders
where orders.order_id=set_of_products.order_id and set_of_products.prod_id=product.prod_id and year(order_date)=2012  
/*drop view v1*/

create view v2 as
select month(order_date) as month_of,avg(price*quant_prod) as month_avg
from set_of_products,product,orders
where orders.order_id=set_of_products.order_id and set_of_products.prod_id=product.prod_id 
group by month(order_date)

create view v3 as
select customer.cust_id,avg(price*quant_prod) as avg_per_customer,month(order_date) as month_of
from set_of_products,orders,product,customer
where orders.order_id=set_of_products.order_id and set_of_products.prod_id=product.prod_id and customer.cust_id=orders.cust_id 
group by customer.cust_id,month(order_date)


/*drop view v3*/

select v2.month_of_2012,count(cust_id) as num_of_customers
from v2,v3
where v3.avg_per_customer>v2.month_avg  
group by v2.month_of_2012
--11
create view v2 as
select month(order_date) as month_of_2012,avg(price*quant_prod) as month_avg
from set_of_products,product,orders
where orders.order_id=set_of_products.order_id and set_of_products.prod_id=product.prod_id and year(order_date)=2012  
group by month(order_date)
/*drop view v2*/


create view v4 as 
select month(order_date) as month_of_2011,avg(price*quant_prod) as month_avg
from set_of_products,product,orders
where orders.order_id=set_of_products.order_id and set_of_products.prod_id=product.prod_id and year(order_date)=2011
group by month(order_date)
/*drop view v4*/

create view v5 as
select (v2.month_avg/v4.month_avg) * 100 as compare2012_to_2011, v2.month_of_2012 as month_of_years
from v2,v4
where v2.month_of_2012=v4.month_of_2011
group by v2.month_of_2012,(v2.month_avg/v4.month_avg) * 100
/*drop view v5*/
select * 
from v5

--12
create view v2 as
select month(order_date) as month_of_2012,avg(price*quant_prod) as month_avg
from set_of_products,product,orders
where orders.order_id=set_of_products.order_id and set_of_products.prod_id=product.prod_id and year(order_date)=2012  
group by month(order_date)
select * from v2
/*drop view v2*/
create view v8 as
select month(order_date) as month_of_2012,avg(price*quant_prod) as month_avg
from set_of_products,product,orders
where orders.order_id=set_of_products.order_id and set_of_products.prod_id=product.prod_id and year(order_date)=2012
group by month(order_date)
/*select* from v8*/
/*drop view v8*/

select v2.month_of_2012,v2.month_avg,v8.month_of_2012,v8.month_avg
from v2,v8
where v8.month_of_2012 in (select v8.month_of_2012
								from v8
								where v2.month_of_2012>v8.month_of_2012)
order by v2.month_of_2012 asc									
--13
create view v9 as
select supplier.geo_id as type_of_geo_id,product.prod_id as prod
from supplier,has,product
where supplier.passw=has.passw and has.prod_id= product.prod_id
group by product.prod_id,supplier.geo_id
/*drop view v9*/

select prod
from v9
group by prod
having count(type_of_geo_id)=1


--14
create view v10 as
select set_of_products.order_id as order_code,count(distinct(set_of_products.prod_id)) as num_of_prods,count(distinct(supplier.passw)) as num_of_suppliers
from set_of_products,orders,supplier,has,product
where orders.order_id=set_of_products.order_id and set_of_products.prod_id=product.prod_id and  supplier.passw=has.passw and has.prod_id= product.prod_id
group by set_of_products.order_id
having count(distinct(set_of_products.prod_id))>=2

/*drop view v10
*/

select order_code
from v10
where num_of_suppliers=1 and num_of_prods>=3
group by order_code





