insert into freight (fre_no,fre_phone,dep_time,arr_time) values (1,'0150000000','10:00','15:30');
insert into freight (fre_no,fre_phone,dep_time,arr_time) values (2,'0150000001','11:00','17:20');
insert into freight (fre_no,fre_phone,dep_time,arr_time) values (3,'0150000002','02:00','13:00');
insert into freight (fre_no,fre_phone,dep_time,arr_time) values (4,'0150000003','22:00','04:00');
insert into freight (fre_no,fre_phone,dep_time,arr_time) values (5,'0150000004','23:00','02:00');
insert into freight (fre_no,fre_phone,dep_time,arr_time) values (6,'0150000005','07:00','23:00');
insert into freight (fre_no,fre_phone,dep_time,arr_time) values (7,'0150000006','08:00','21:00');
insert into freight (fre_no,fre_phone,dep_time,arr_time) values (8,'0150000007','20:00','09:00');
insert into freight (fre_no,fre_phone,dep_time,arr_time) values (9,'0150000008','12:00','21:00');
insert into freight (fre_no,fre_phone,dep_time,arr_time) values (10,'0150000009','06:00','10:00');


insert into customer values (1,'Tamanna','01900000000','Bogura');
insert into customer values (2,'Ritu','01900000001','Bogura');
insert into customer values (3,'Shifat','01900000002','Dhaka');
insert into customer values (4,'Hena','01900000003','Rajshahi');
insert into customer values (5,'Tina','01900000004','Khulna');
insert into customer values (6,'Zannat','01900000005','Bogura');
insert into customer values (7,'Tanzim','01900000006','Rangpur');
insert into customer values (8,'Tanvin','01900000007','Dinajpur');
insert into customer values (9,'Naeim','01900000008','Natore');
insert into customer values (10,'Riya','01900000009','Shirajgong');


insert into courier (cou_id,sou_off_id,des_off_id,entry_time,fre_no,cus_id,rec_phone) values (1,1,8,to_date('09/05/2018','DD/MM/YYYY'),2,1,'01600000000');
insert into courier (cou_id,sou_off_id,des_off_id,entry_time,fre_no,cus_id,rec_phone) values (2,10,4,to_date('09/05/2018','DD/MM/YYYY'),2,1,'01600000001');
insert into courier (cou_id,sou_off_id,des_off_id,entry_time,fre_no,cus_id,rec_phone) values (3,3,7,to_date('02/06/2018','DD/MM/YYYY'),2,7,'01600000002');
insert into courier (cou_id,sou_off_id,des_off_id,entry_time,fre_no,cus_id,rec_phone) values (4,6,2,to_date('17/06/2018','DD/MM/YYYY'),4,5,'01600000003');
insert into courier (cou_id,sou_off_id,des_off_id,entry_time,fre_no,cus_id,rec_phone) values (5,6,1,to_date('03/05/2018','DD/MM/YYYY'),7,3,'01600000004');
insert into courier (cou_id,sou_off_id,des_off_id,entry_time,fre_no,cus_id,rec_phone) values (6,4,7,to_date('04/05/2018','DD/MM/YYYY'),5,2,'01600000005');
insert into courier (cou_id,sou_off_id,des_off_id,entry_time,fre_no,cus_id,rec_phone) values (7,8,5,to_date('21/06/2018','DD/MM/YYYY'),7,10,'01600000006');
insert into courier (cou_id,sou_off_id,des_off_id,entry_time,fre_no,cus_id,rec_phone) values (8,7,8,to_date('02/01/2018','DD/MM/YYYY'),8,9,'01600000007');
insert into courier (cou_id,sou_off_id,des_off_id,entry_time,fre_no,cus_id,rec_phone) values (9,5,10,to_date('02/06/2018','DD/MM/YYYY'),5,8,'01600000008');
insert into courier (cou_id,sou_off_id,des_off_id,entry_time,fre_no,cus_id,rec_phone) values (10,9,6,to_date('31/05/2018','DD/MM/YYYY'),6,6,'01600000009');
insert into courier (cou_id,sou_off_id,des_off_id,entry_time,fre_no,cus_id,rec_phone) values (11,6,1,to_date('03/06/2018','DD/MM/YYYY'),9,3,'01600000010');
insert into courier (cou_id,sou_off_id,des_off_id,entry_time,fre_no,cus_id,rec_phone) values (12,4,7,to_date('04/06/2018','DD/MM/YYYY'),5,2,'01600000011');
insert into courier (cou_id,sou_off_id,des_off_id,entry_time,fre_no,cus_id,rec_phone) values (13,10,9,to_date('03/06/2018','DD/MM/YYYY'),10,10,'01600000012');
insert into courier (cou_id,sou_off_id,des_off_id,entry_time,fre_no,cus_id,rec_phone) values (14,3,8,to_date('02/01/2018','DD/MM/YYYY'),8,9,'01600000013');
insert into courier (cou_id,sou_off_id,des_off_id,entry_time,fre_no,cus_id,rec_phone) values (15,9,10,to_date('19/06/2018','DD/MM/YYYY'),8,8,'01600000005');
insert into courier (cou_id,sou_off_id,des_off_id,entry_time,fre_no,cus_id,rec_phone) values (16,9,6,to_date('31/03/2018','DD/MM/YYYY'),1,6,'01600000007');
insert into courier (cou_id,sou_off_id,des_off_id,entry_time,fre_no,cus_id,rec_phone) values (17,1,9,to_date('03/02/2018','DD/MM/YYYY'),3,10,'01600000016');
insert into courier (cou_id,sou_off_id,des_off_id,entry_time,fre_no,cus_id,rec_phone) values (18,1,10,to_date('20/06/2018','DD/MM/YYYY'),8,9,'01600000017');
insert into courier (cou_id,sou_off_id,des_off_id,entry_time,fre_no,cus_id,rec_phone) values (19,5,8,to_date('02/05/2018','DD/MM/YYYY'),5,8,'01600000018');
insert into courier (cou_id,sou_off_id,des_off_id,entry_time,fre_no,cus_id,rec_phone) values (20,10,6,to_date('31/03/2018','DD/MM/YYYY'),9,6,'01600000019');
insert into courier (cou_id,sou_off_id,des_off_id,entry_time,fre_no,cus_id,rec_phone) values (21,9,6,to_date('01/03/2018','DD/MM/YYYY'),1,6,'01600000020');
insert into courier (cou_id,sou_off_id,des_off_id,entry_time,fre_no,cus_id,rec_phone) values (22,1,9,to_date('03/02/2018','DD/MM/YYYY'),3,10,'01600000021');
insert into courier (cou_id,sou_off_id,des_off_id,entry_time,fre_no,cus_id,rec_phone) values (23,1,10,to_date('02/11/2017','DD/MM/YYYY'),8,9,'01600000022');
insert into courier (cou_id,sou_off_id,des_off_id,entry_time,fre_no,cus_id,rec_phone) values (24,5,8,to_date('02/05/2018','DD/MM/YYYY'),5,8,'01600000023');
insert into courier (cou_id,sou_off_id,des_off_id,entry_time,fre_no,cus_id,rec_phone) values (25,10,6,to_date('31/03/2018','DD/MM/YYYY'),10,6,'01600000024');


insert into receiver (rec_id,rec_name,rec_phone) values (2,'Tina','01600000001');
insert into receiver (rec_id,rec_name,rec_phone) values (3,'Rafa','01600000002');
insert into receiver (rec_id,rec_name,rec_phone) values (23,'Suha','01600000540');
insert into receiver (rec_id,rec_name,rec_phone) values (10,'Shitu','01600000009');
insert into receiver (rec_id,rec_name,rec_phone) values (6,'Shifa','01600000005');
insert into receiver (rec_id,rec_name,rec_phone) values (4,'Sudat','01600000003');
insert into receiver (rec_id,rec_name,rec_phone) values (16,'Riya','01600000007');
insert into receiver (rec_id,rec_name,rec_phone) values (13,'Sudat','01600000012');
insert into receiver (rec_id,rec_name,rec_phone) values (9,'Suha','01600000540');
insert into receiver (rec_id,rec_name,rec_phone) values (1,'Shitu','01600000009');
insert into receiver (rec_id,rec_name,rec_phone) values (15,'Shifa','01600000005');
insert into receiver (rec_id,rec_name,rec_phone) values (14,'Sima','01600000013');
insert into receiver (rec_id,rec_name,rec_phone) values (5,'Shifa','01600000005');
insert into receiver (rec_id,rec_name,rec_phone) values (11,'Tonu','01600000033');


select * from office;
select * from freight;
select * from customer;
select * from receiver;
select * from courier;

