declare
 v_name varchar2(6);
 v_department_name varchar2(101);
begin
 select first_name into v_name from employees where employee_id = 100;
 begin
 select department_id into v_department_name from employees where first_name = v_name;
 end;
 exception
  when too_many_rows then
  v_department_name := 'Error in department name';
 when no_data_found then
  dbms_output.put_line('There is no employee with the selected id ');
 when too_many_rows then
  dbms_output.put_line('There are more than one employee with the name ' || v_name);
  dbms_output.put_line('Try with a different employee');
 when others then
  dbms_output.put_line('An unexpected error happened. Connect with the programmer ');
  dbms_output.put_line(sqlcode || ' ---> ' || sqlerrm);
end;