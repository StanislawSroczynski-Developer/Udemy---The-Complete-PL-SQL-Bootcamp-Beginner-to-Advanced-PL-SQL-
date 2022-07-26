create table emps_high_paid as select * from employees where 1 = 2
/
declare
  function get_emp (emp_num employees.employee_id%type) return employees%rowtype is
    emp employees%rowtype;
begin
  select * into emp from employees where employee_id = emp_num;
  return emp;
end;
procedure insert_high_paid_emp (emp_id employees.employee_id%type) is
  emp employees%rowtype;
begin
  emp := get_emp(emp_id);
  insert into emps_high_paid values emp;
end;

begin
  for r_emp in (select * from employees) loop
    if r_emp.salary >15000 then
      insert_high_paid_emp(r_emp.employee_id);
    end if;
  end loop;
end;
/
select * from emps_high_paid;
/
select * from emps_high_paid;
/
begin
 insert_high_paid_emp;
end;






