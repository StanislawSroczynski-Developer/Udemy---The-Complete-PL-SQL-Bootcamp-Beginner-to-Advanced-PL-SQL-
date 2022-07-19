declare
 cursor c_emps is select first_name, last_name from employees;
  v_emp c_emps%rowtype;

begin
 open c_emps;
  fetch c_emps into v_emp.first_name, v_emp.last_name;
  dbms_output.put_line(v_emp.first_name || ' ' || v_emp.last_name);
 close c_emps;
end;