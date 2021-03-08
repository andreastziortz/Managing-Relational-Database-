create table geogr_dept(geo_id int not null primary key,name varchar(25),popul int);

create table customer(cust_id int not null primary key,cust_name varchar(35),cust_AFM varchar(8),cust_phone varchar(10),cust_address varchar(15),geo_id int,foreign key(geo_id) references geogr_dept(geo_id));

create table orders(order_id int not null primary key,order_date datetime,dispatch_order datetime,cust_id int,foreign key(cust_id) references customer(cust_id));

create table supplier(passw int not null primary key,AFM varchar(12),label_supplier varchar(25),supplier_address varchar(15),phone int,email varchar(15),geo_id int,foreign key(geo_id) references  geogr_dept(geo_id));

create table category(cat_id int not null primary key,cat_descr varchar(255));

create table product(prod_id int not null,name varchar(25),descr varchar(255),price decimal(10,2),quant decimal(7,2),cat_id int,primary key (prod_id),foreign key (cat_id) references category(cat_id));

create table has(prod_id int ,passw int,primary key(prod_id,passw),foreign key(prod_id) references product(prod_id),foreign key(passw) references supplier(passw));

create table record(rec_id int,supplier_id int,prod_id int,rec_date datetime,quant_rec decimal(10,2),primary key(rec_id),foreign key(prod_id) references product(prod_id),foreign key(supplier_id) references supplier(passw));

create table set_of_products(order_id int not null,prod_id int not null,quant_prod decimal(10,2),primary key(prod_id,order_id),foreign key(prod_id) references product(prod_id),foreign key(order_id) references orders(order_id));

create table frequent(cust_id int not null primary key,debt decimal(7,2),credit_limit decimal(7,2),foreign key(cust_id) references customer(cust_id));

create table payment(cust_id int not null,paym_date datetime,amount decimal(7,2),primary key(cust_id,paym_date),foreign key(cust_id) references frequent(cust_id));

