declare
 type e_list is table of varchar2(50);
 emps e_list;
begin
 emps := e_list('Alex', 'Bruce', 'John');
 for i in 1..emps.count() loop
  dbms_output.put_line(emps(i)); 
 end loop;
end;