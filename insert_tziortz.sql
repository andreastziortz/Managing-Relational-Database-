Insert into category ( cat_id,cat_descr ) Values (121 ,'This category embeds iron products');
Insert into category ( cat_id,cat_descr ) Values (122 , 'This category embeds plastic products');
Insert into category ( cat_id,cat_descr ) Values (123 , 'This category embeds copper products');
Insert into category ( cat_id,cat_descr ) Values (124 , 'This category embeds aluminium products');
Insert into category ( cat_id,cat_descr ) Values (125 , 'This category embeds gold products');
Insert into category ( cat_id,cat_descr ) Values (126 , 'This category embeds electronic products');
Insert into category ( cat_id,cat_descr ) Values (127 , 'This category embeds wooden products');
Insert into category ( cat_id,cat_descr ) Values (127 , 'This category embeds fabric products');
Insert into category ( cat_id,cat_descr ) Values (128 , 'This category embeds glass products');
Insert into category ( cat_id,cat_descr ) Values (129 , 'This category embeds organic  products');
Insert into category ( cat_id,cat_descr ) Values (130 , 'This category embeds lithium products');
Insert into category ( cat_id,cat_descr ) Values (131 , 'This category embeds paper products');

Insert into product ( prod_id,name,descr,price,quant,cat_id ) Values (10 ,'hammer','This is a tool for every day use.',35,150,121);
Insert into product ( prod_id,name,descr,price,quant,cat_id ) Values (11 ,'rubber','This is a tool for physical exercise',15,100,122);
Insert into product ( prod_id,name,descr,price,quant,cat_id ) Values (12 ,'battery','This is a tool for your tv computer',20,220,130);
Insert into product ( prod_id,name,descr,price,quant,cat_id ) Values (13 ,'rotisserie','This is a tool for your holidays house.',50,10, 124);
Insert into product ( prod_id,name,descr,price,quant,cat_id ) Values (14,'neckless','This is a jewelry',150,20,125);
Insert into product ( prod_id,name,descr,price,quant,cat_id ) Values (15 ,'vase','This is a home decorative item.',60,15,128);
Insert into product ( prod_id,name,descr,price,quant,cat_id ) Values (16 ,'door','This is a door fot he main entrance of the home',780,10,121);
Insert into product ( prod_id,name,descr,price,quant,cat_id ) Values (17 ,'trousers','This is a casual clothe.',40,30,127);
Insert into product ( prod_id,name,descr,price,quant,cat_id ) Values (18 ,'screen', 'This screen is hd',50,20,128);
Insert into product ( prod_id,name,descr,price,quant,cat_id ) Values (19 ,'chocolate', 'This is with fruits',20,40,129);
Insert into product ( prod_id,name,descr,price,quant,cat_id ) Values (20 ,'lamp','This is a smart lamp',30,20,126);
Insert into product ( prod_id,name,descr,price,quant,cat_id ) Values (21 , 'notebook','For your everyday notes',15,20,131);

Insert into geogr_dept(geo_id,name,popul) Values (1,'Attiki',5000000);
Insert into geogr_dept(geo_id,name,popul) Values (2,'Macedonia',1500000);
Insert into geogr_dept(geo_id,name,popul) Values (3,'Peloponissos',500000);
Insert into geogr_dept(geo_id,name,popul) Values (4,'Kriti',100000);
Insert into geogr_dept(geo_id,name,popul) Values (5,'Thessalia',400000);
Insert into geogr_dept(geo_id,name,popul) Values (6,'Thraki',200000);

Insert into supplier(passw,AFM,label_supplier,phone,email,geo_id,supplier_address) Values  (1000,'8110120','top_materials',6976836410,'top_mat@yahoo.gr',1,'Nikolaou 10, Kaisiariani, Athens');
Insert into supplier(passw,AFM,label_supplier,phone,email,geo_id,supplier_address) Values  (1001,'8110500','new_wave',6973526498,'new_wave@yahoo.gr',1,'Papastratou 70,Peristeri,Athens');
Insert into supplier(passw,AFM,label_supplier,phone,email,geo_id,supplier_address) Values  (1002,'8110720','Cosmo_garden',6978956432,'cosmo@yahoo.gr',6,'Mousonos,Trikala');
Insert into supplier(passw,AFM,label_supplier,phone,email,geo_id,supplier_address) Values  (1003,'8110580','karagianis',6978963532,'karagianis@gmail.com',3,'Plapouta 9,Nafplio');
Insert into supplier(passw,AFM,label_supplier,phone,email,geo_id,supplier_address) Values  (1004,'8110290','allagi_rouxon',6973427378,'allagi@yahoo.gr',2,'Tsimiski 56,Thessaloniki');
Insert into supplier(passw,AFM,label_supplier,phone,email,geo_id,supplier_address) Values  (1005,'8110679','poiotita',6978906410,'poiotita@yahoo.gr',4,'Andronikou 20,Kalamata');
Insert into supplier(passw,AFM,label_supplier,phone,email,geo_id,supplier_address) Values  (1006,'8143300','Innov_company',6974567877,'innovation@yahoo.gr',1,'Konstadinou 70,Aigaleo,Athens');
Insert into supplier(passw,AFM,label_supplier,phone,email,geo_id,supplier_address) Values  (1007,'8178020','River',6976896432,'river@yahoo.gr',6,'Mousonos,Trikala');
Insert into supplier(passw,AFM,label_supplier,phone,email,geo_id,supplier_address) Values  (1008,'8453804','Grand_Inc_school',6978963902,'grand@gmail.com',1,'Filolaou,Zografou,Athens');
Insert into supplier(passw,AFM,label_supplier,phone,email,geo_id,supplier_address) Values  (1009,'845113','faster',6970419378,'faster@yahoo.gr',5,'Miaouli16,Agrinio');

Insert into has(prod_id,passw) Values ('10','1007');
Insert into has(prod_id,passw) Values ('11','1008');
Insert into has(prod_id,passw) Values ('12','1001');
Insert into has(prod_id,passw) Values ('13','1002');
Insert into has(prod_id,passw) Values ('14','1000');
Insert into has(prod_id,passw) Values ('15','1005');
Insert into has(prod_id,passw) Values ('16','1003');
Insert into has(prod_id,passw) Values ('17','1004');
Insert into has(prod_id,passw) Values ('18','1006');
Insert into has(prod_id,passw) Values ('19','1007');
Insert into has(prod_id,passw) Values ('20','1006');
Insert into has(prod_id,passw) Values ('21','1008');
Insert into has(prod_id,passw) Values ('12','1006');
Insert into has(prod_id,passw) Values ('17','1008');
Insert into has(prod_id,passw) Values ('18','1006');

Insert into record(rec_id,supplier_id,prod_id,rec_date,quant_rec) Values(500,1000,14,'2011-04-01',1);
Insert into record(rec_id,supplier_id,prod_id,rec_date,quant_rec) Values(501,1000,14,'2011-05-08',1);
Insert into record(rec_id,supplier_id,prod_id,rec_date,quant_rec) Values(502,1005,15,'12052011',3);
Insert into record(rec_id,supplier_id,prod_id,rec_date,quant_rec) Values(503,1001,12,'20052011',1);
Insert into record(rec_id,supplier_id,prod_id,rec_date,quant_rec) Values(504,1003,16,'25082011',2);
Insert into record(rec_id,supplier_id,prod_id,rec_date,quant_rec) Values(505,1005,15,'07052011',3);
Insert into record(rec_id,supplier_id,prod_id,rec_date,quant_rec) Values(506,1006,20,'23062011',3);
Insert into record(rec_id,supplier_id,prod_id,rec_date,quant_rec) Values(507,1004,17,'14082011',2);
Insert into record(rec_id,supplier_id,prod_id,rec_date,quant_rec) Values(508,1007,19,'20092011',2);
Insert into record(rec_id,supplier_id,prod_id,rec_date,quant_rec) Values(509,1008,21,'18052011',1);

Insert into customer(cust_id,cust_name,cust_AFM,cust_phone,cust_address,geo_id) values (10000,'retail_silk','81670156','6974534643','Axarnon 10,Kupseli',1);
Insert into customer(cust_id,cust_name,cust_AFM,cust_phone,cust_address,geo_id) values (10010,'all_for_home','81670176','6974538967','Plataion 5,Kaisariani',1);
Insert into customer(cust_id,cust_name,cust_AFM,cust_phone,cust_address,geo_id) values (10020,'products_for_the_garden','81670196','6974234443','Konstantinou 9,Thessaloniki',2);
Insert into customer(cust_id,cust_name,cust_AFM,cust_phone,cust_address,geo_id) values (10030,'zara','81670216','6974531178','Piniou Agrinio,Larissa',5);
Insert into customer(cust_id,cust_name,cust_AFM,cust_phone,cust_address,geo_id) values (10040,'e_products','81670236','6987456723','Orxmenou 4,Sparti',3);
Insert into customer(cust_id,cust_name,cust_AFM,cust_phone,cust_address,geo_id) values (10050,'bijoux_shop','81670256','6988834643','Axaias 5,Ksanthi',6);
Insert into customer(cust_id,cust_name,cust_AFM,cust_phone,cust_address,geo_id) values (10060,'student_magasin','81670276','6986745235','Anoiksis 10,Pella',2);
Insert into customer(cust_id,cust_name,cust_AFM,cust_phone,cust_address,geo_id) values (10070,'pastry_shop','81670296','6974678909','Aliakmonos 2,Irakleio',4);
Insert into customer(cust_id,cust_name,cust_AFM,cust_phone,cust_address,geo_id) values (10080,'smart_doors','81670316','6974534643','Axarnon 10,Kupseli',1);
Insert into customer(cust_id,cust_name,cust_AFM,cust_phone,cust_address,geo_id) values (10090,'book_home','81670336','6974538967','Plataion 5,Kaisariani',1);
Insert into customer(cust_id,cust_name,cust_AFM,cust_phone,cust_address,geo_id) values (11000,'tools_for_worker','81670356','6974234443','Konstantinou 9,Thessaloniki',2);

Insert into frequent(cust_id,debt,credit_limit) Values(10070,1000.00,35000.00);
Insert into frequent(cust_id,debt,credit_limit) Values(10090,500.00,2000);
Insert into frequent(cust_id,debt,credit_limit) Values(10060,100.00,5.000);
Insert into frequent(cust_id,debt,credit_limit) Values(11000,6000.00,11000.00);

Insert into payment(cust_id,paym_date,amount) Values(10070,'2012-07-06',300.00);
Insert into payment(cust_id,paym_date,amount) Values(10070,'2012-07-26',150.00);
Insert into payment(cust_id,paym_date,amount) Values(10090,'2012-05-21',300.00);
Insert into payment(cust_id,paym_date,amount) Values(11000,'2011-09-02',500.00);
Insert into payment(cust_id,paym_date,amount) Values(11000,'2012-11-04',800.00);
Insert into payment(cust_id,paym_date,amount) Values(10070,'2012-11-06',150.00);


Insert into orders(order_id,order_date,dispatch_order,cust_id) Values (001,'2011-03-10','2011-03-13',10010);
Insert into orders(order_id,order_date,dispatch_order,cust_id) Values (002,'2011-05-10','2011-05-13',10040);
Insert into orders(order_id,order_date,dispatch_order,cust_id) Values (003,'2013-01-12','2013-01-17',10020);
Insert into orders(order_id,order_date,dispatch_order,cust_id) Values (004,'2011-02-14','2011-02-17',10060);
Insert into orders(order_id,order_date,dispatch_order,cust_id) Values (005,'2012-03-18','2012-03-20',10070);
Insert into orders(order_id,order_date,dispatch_order,cust_id) Values (006,'2012-03-10','2012-03-13',10020);
Insert into orders(order_id,order_date,dispatch_order,cust_id) Values (007,'2011-05-15','2012-05-18',10080);
Insert into orders(order_id,order_date,dispatch_order,cust_id) Values (008,'2012-02-10','2012-02-13',10090);
Insert into orders(order_id,order_date,dispatch_order,cust_id) Values (009,'2013-01-27','2013-01-30',10070);
Insert into orders(order_id,order_date,dispatch_order,cust_id) Values (010,'2011-02-20','2011-02-23',10030);
Insert into orders(order_id,order_date,dispatch_order,cust_id) Values (011,'2013-01-27','2013-01-29',10050);
Insert into orders(order_id,order_date,dispatch_order,cust_id) Values (012,'2011-07-05','2011-07-06',10060);
Insert into orders(order_id,order_date,dispatch_order,cust_id) Values (013,'2013-01-10','2013-01-13',10070);
Insert into orders(order_id,order_date,dispatch_order,cust_id) Values (014,'2012-09-08','2012-09-11',10000);
Insert into orders(order_id,order_date,dispatch_order,cust_id) Values (015,'2011-05-16','2011-05-19',10070);
Insert into orders(order_id,order_date,dispatch_order,cust_id) Values (016,'2012-06-01','2012-06-05',10080);


Insert into set_of_products(prod_id,order_id,quant_prod) Values (18,002,2.00);
Insert into set_of_products(prod_id,order_id,quant_prod) Values (19,013,4);
Insert into set_of_products(prod_id,order_id,quant_prod) Values (16,007,1);
Insert into set_of_products(prod_id,order_id,quant_prod) Values  (13,006,3);
Insert into set_of_products(prod_id,order_id,quant_prod) Values (13,003,5);
Insert into set_of_products(prod_id,order_id,quant_prod) Values (13,006,2);
Insert into set_of_products(prod_id,order_id,quant_prod) Values (13,003,5);
Insert into set_of_products(prod_id,order_id,quant_prod) Values (13,006,3);
Insert into set_of_products(prod_id,order_id,quant_prod) Values (21,012,1);
Insert into set_of_products(prod_id,order_id,quant_prod) Values (17,014,3);
Insert into set_of_products(prod_id,order_id,quant_prod) Values (18,002,2);
Insert into set_of_products(prod_id,order_id,quant_prod) Values (21,012,7);
Insert into set_of_products(prod_id,order_id,quant_prod) Values (19,015,8);
Insert into set_of_products(prod_id,order_id,quant_prod) Values (16,007,2);
Insert into set_of_products(prod_id,order_id,quant_prod) Values (21,008,5);
Insert into set_of_products(prod_id,order_id,quant_prod) Values (17,014,3);
Insert into set_of_products(prod_id,order_id,quant_prod) Values (14,011,20);
Insert into set_of_products(prod_id,order_id,quant_prod) Values (13,003,2);
Insert into set_of_products(prod_id,order_id,quant_prod) Values (19,015,10);
Insert into set_of_products(prod_id,order_id,quant_prod) Values (19,005,5);
Insert into set_of_products(prod_id,order_id,quant_prod) Values (13,006,3);
Insert into set_of_products(prod_id,order_id,quant_prod) Values (15,001,3);
Insert into set_of_products(prod_id,order_id,quant_prod) Values (19,009,9);
Insert into set_of_products(prod_id,order_id,quant_prod) Values (17,014,7);
Insert into set_of_products(prod_id,order_id,quant_prod) Values (11,012,5);
Insert into set_of_products(prod_id,order_id,quant_prod) Values (19,005,8);
Insert into set_of_products(prod_id,order_id,quant_prod) Values (17,014,3);
Insert into set_of_products(prod_id,order_id,quant_prod) Values (16,016,3);
Insert into set_of_products(prod_id,order_id,quant_prod) Values (17,010,5);
Insert into set_of_products(prod_id,order_id,quant_prod) Values (21,008,5);
Insert into set_of_products(prod_id,order_id,quant_prod) Values (19,009,7);
Insert into set_of_products(prod_id,order_id,quant_prod) Values (21,004,5);