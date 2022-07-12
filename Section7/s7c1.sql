declare
 --r_emp employees%rowtype;
 type t_emp is record (first_name varchar2(50),
                       last_name employees.last_name%type,
                       salary employees.salary%type,
                       hire_date date);
 R_EMP T_EMP;
begin
  select first_name, last_name, salary, hire_date into r_emp from employees where employee_id = '101';
/*  r_emp.first_name := 'Alex';
  r_emp.salary := 2000;
  r_emp.hire_date := '01-07-20';
  */
 dbms_output.put_line(r_emp.first_name || ' ' || r_emp.last_name || 'earns ' || r_emp.salary || ' and hired at : ' || r_emp.hire_date);
end;