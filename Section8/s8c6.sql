/*create user my_user identified by 8991;
grant create session to my_user;
grant select any table to my_user;
grant update on hr.employees_copy to my_user;
grant update on hr.departments to my_user; */

declare
 cursor c_emps is select employee_id, first_name, last_name, department_name
  from employees_copy join departments using (department_id)
  where employee_id in (100, 101, 102) 
  for update of employees_copy.phone_number, departments.location_id wait 5;
begin
 for r_emps in c_emps loop
  update employees_copy set phone_number = 3
   where employee_id = r_emps.employee_id;
 end loop;
end;
/
select * from employees_copy;