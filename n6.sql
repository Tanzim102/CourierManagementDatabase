set serveroutput on
declare
cursor c_name is 
select * from courier where cus_id=10;
c_record c_name%rowtype;

begin
open c_name;
loop
fetch c_name into c_record;
exit when c_name %notfound;
dbms_output.put_line('Courier Number: '||c_record.cou_id|| ' and Customer ID : '||c_record.cus_id);
end loop;
close c_name;
 
declare
type namearray is varray(1000000) of freight.total_service%type;
  
noo namearray :=namearray();
neww number(2);
counter number(3);
begin
for counter in 1..10
loop
 
noo.extend;
 
 select max(total_service) into neww from freight;
 
end loop;
 dbms_output.put_line('max service'||neww);

 declare
cursor c_name2 is 
select fre_no from freight where total_service=neww;
c_record c_name2%rowtype;

begin
open c_name2;
loop
fetch c_name2 into c_record;
exit when c_name2 %notfound;
dbms_output.put_line('Freight Number: '||c_record.fre_no);
end loop;
close c_name2;
end;
end;
end;
/