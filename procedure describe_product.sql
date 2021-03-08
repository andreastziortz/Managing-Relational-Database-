
create procedure describe_product @prod_id int,@date1 datetime,@date2 datetime as

select descr,record.quant_rec,record.rec_date,record.rec_id
from product,record
where product.prod_id=@prod_id and record.rec_date between @date1 and @date2 and product.prod_id=record.prod_id;

exec describe_product @prod_id=15,@date1="2011-05-01",@date2="2011-05-30"



exec describe_product @prod_id=14,@date1="2011-05-01",@date2="2011-05-31"

drop procedure describe_product