set serveroutput on

declare
     f utl_file.file_type;
  
line varchar(1000);
     off_id office.off_id%type;
     off_name office.off_name%type;
     off_phone office.off_phone%type;
     off_address office.off_address%type;
     district office.district%type;

begin
     f :=utl_file.fopen('DATABASE','office.csv','r');

if utl_file.is_open(f)
then
     utl_file.get_line(f,line,1000);
     loop
         begin
         utl_file.get_line(f,line,1000);
         if line is null
          then exit;
         end if;
   
          off_id:=regexp_substr(line,'[^,]+',1,1);
          off_name:=regexp_substr(line,'[^,]+',1,2);
          off_phone:=regexp_substr(line,'[^,]+',1,3);
          off_address:=regexp_substr(line,'[^,]+',1,4);
          district:=regexp_substr(line,'[^,]+',1,5);
     
        insert into office values (off_id,off_name,off_phone,off_address,district);
        commit;
    
  dbms_output.put_line(line);
         exception when no_data_found then exit;
         end;
     end loop;
     end if;
 utl_file.fclose(f);
 end;
 /