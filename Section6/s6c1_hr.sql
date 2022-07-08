set serveroutput on;
declare
 v_name varchar2(50);
 v_salary employees.salary%type;
 begin
  select first_name || ' ' || last_name, salary into v_name, v_salary from employees where employee_id = 100;
  dbms_output.put_line('The salary of ' || v_name || 'is: ' || v_salary);
 end;