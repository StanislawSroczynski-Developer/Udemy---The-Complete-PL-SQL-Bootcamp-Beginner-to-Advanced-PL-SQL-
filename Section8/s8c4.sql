declare
 cursor c_emps is select * from employees where department_id = 30;
 v_emps c_emps%rowtype;
begin
 open c_emps;
  loop
   fetch c_emps into v_emps;
   exit when c_emps%notfound;
   dbms_output.put_line(v_emps.employee_id || ' ' || v_emps.first_name || ' ' || v_emps.last_name);
  end loop;
 close c_emps;
end;
/
declare
 cursor c_emps is select * from employees where department_id = 30;
 v_emps c_emps%rowtype;
begin
 open c_emps;
  for i in 1..6 loop
   fetch c_emps into v_emps;
   dbms_output.put_line(v_emps.employee_id || ' ' || v_emps.first_name || ' ' || v_emps.last_name);
  end loop;
 close c_emps;
end;
/
begin
  for i in (select * from employees where department_id = 30) loop
   dbms_output.put_line(i.employee_id || ' ' || i.first_name || ' ' || i.last_name);
  end loop;
end;
/



