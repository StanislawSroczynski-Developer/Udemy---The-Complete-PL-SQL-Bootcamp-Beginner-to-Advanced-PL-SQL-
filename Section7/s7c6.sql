declare
  type e_list is table of employees.first_name%type index by pls_integer;
  emps e_list;
begin
  for x in 100 .. 110 loop
    select first_name into emps(x) from employees 
       where employee_id = x ;
  end loop;
  for i in emps.first()..emps.last() loop
    dbms_output.put_line(emps(i));
  end loop;
end;
/
declare
  type e_list is table of employees.first_name%type index by employees.email%type;
  emps e_list;
  idx employees.email%type;
  v_email employees.email%type;
  v_first_name employees.first_name%type;
begin
    for x in 100 .. 110 loop
    select first_name,email into v_first_name,v_email from employees
       where employee_id = x;
    emps(v_email) := v_first_name;
  end loop;
  idx := emps.first;
  while idx is not null  loop
    dbms_output.put_line('The email of '|| emps(idx) ||' is : '|| idx);
    idx := emps.next(idx);
  end loop;
end;
/
create table employees_salary_history as select * from employees where 1=2;
alter table employees_salary_history add insert_date date;
select * from employees_salary_history;
/
declare
  type e_list is table of employees_salary_history%rowtype index by pls_integer;
  emps e_list;
  idx pls_integer;
begin
    for x in 100 .. 110 loop
    select e.*,'01-JUN-20' into emps(x) from employees e
       where employee_id = x;
  end loop;
  idx := emps.first;
  while idx is not null loop
    emps(idx).salary := emps(idx).salary + emps(idx).salary*0.2;
    insert into employees_salary_history values emps(idx);
    dbms_output.put_line('The employee '|| emps(idx).first_name 
                         ||' is inserted to the history table');
    idx := emps.next(idx);
  end loop;
end;
/
drop table employees_salary_history;