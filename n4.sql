create table freight
(
    fre_no integer not null,
	fre_phone varchar(11) unique,
	dep_time varchar(20),
	arr_time varchar(20),
	total_service number(4) default '0', 
	primary key(fre_no)
);



create table customer
(
     cus_id integer not null,
	 cus_name varchar(20),
	 cus_phone varchar(11),
	 cus_address varchar(30),
	 primary key(cus_id)
);



create table courier
(
     cou_id integer not null,
	 sou_off_id integer not null,
	 des_off_id integer not null,
	 entry_time date,
	 fre_no integer,
	 cus_id integer,
	 rec_phone varchar(11) not null,
	 status varchar(20) default '------',
	 comments varchar(20) default 'wait',
	 primary key(cou_id),
	 foreign key(sou_off_id) references office(off_id) on delete cascade,
	 foreign key(des_off_id) references office(off_id) on delete cascade,
	 foreign key(fre_no) references freight(fre_no) on delete cascade,
     foreign key(cus_id) references customer(cus_id) on delete cascade
);

create table receiver
(   
     rec_id integer not null,
     rec_name varchar(20),
     rec_phone varchar(11) not null,
     condition_row varchar(50),
     primary key(rec_id)
);



create or replace trigger t_one
before insert or update of condition_row on receiver
for each row
declare
 phone courier.rec_phone%type;
begin
     select rec_phone into phone from courier where cou_id=:new.rec_id;
         if(:new.rec_phone=phone)
             then
             :new.condition_row := 'Verified Phone Number';
             update courier set status='Delivered' where cou_id=:new.rec_id; 
             update courier set comments='Successful' where cou_id=:new.rec_id;
         else
             :new.condition_row := 'Still Not Verified';
         end if;
end;

create or replace trigger t_two
after insert or update of fre_no on courier
for each row

declare
     total freight.total_service%type; 

begin
     select total_service into total from freight where fre_no=:new.fre_no;
     total:=total+1;
     update freight set total_service=total where fre_no=:new.fre_no;
end;

 
show error trigger t_one;
show error trigger t_two;