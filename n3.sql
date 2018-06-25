set serveroutput on
declare
     f utl_file.file_type;
     cursor c is select * from office;
     begin
f :=utl_file.fopen('DATABASE','office_updated.csv','w');
     utl_file.put(f,'off_id'||','||'off_name'||','||'off_phone'||','||'off_address'||','||'district');
     utl_file.new_line(f);
      for c_record in c
     loop 
      utl_file.put(f,c_record.off_id||','||c_record.off_name||','||c_record.off_phone||','||c_record.off_address||','||c_record.district);
      utl_file.new_line(f);
     end loop;
utl_file.fclose(f);
end;
/