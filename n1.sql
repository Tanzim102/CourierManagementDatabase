drop table receiver;
drop table courier;
drop table customer;
drop table freight;
drop table office;
create table office
(
     off_id integer not null,
     off_name varchar(20),
     off_phone varchar(11) unique,
     off_address varchar(30),
     district varchar(20),
     primary key(off_id)
);
