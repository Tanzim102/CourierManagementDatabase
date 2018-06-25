set serveroutput on

create or replace procedure update_time is
       cursor c_time is select * from courier where comments='wait';
      r_time c_time%ROWTYPE;
      difrence_in_Days integer;
   begin
     open c_time;
       loop
         fetch c_time into r_time;
       exit when c_time%NOTFOUND;
           DBMS_OUTPUT.put_line(r_time.entry_time);
           difrence_in_Days   := (sysdate - r_time.entry_time ) ;
    dbms_output.put_line('difrence_in_Days  : ' || difrence_in_Days);
         if(difrence_in_Days>=10)
         then
         update courier set comments='Time Over' where comments='wait' and entry_time=r_time.entry_time;
         update courier set status='Not delivered' where status='------' and entry_time=r_time.entry_time;
         end if;
           
       end loop;
     close c_time;
   end;






begin

update_time();
 
end;
show error;
/