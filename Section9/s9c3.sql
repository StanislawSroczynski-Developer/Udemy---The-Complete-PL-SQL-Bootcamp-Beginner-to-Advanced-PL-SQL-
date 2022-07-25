declare
 too_high_salary exception;
 v_salary_check pls_integer;
begin
 select salary into v_salary_check from employees where employee_id = 100;
 if v_salary_check > 20000 then
  raise too_high_salary;
 end if;
 dbms_output.put_line('The salary is in an acceptable range.');
exception
 when too_high_salary then
 dbms_output.put_line('The salary is too high. You need to decrease it.');
end;
