declare
 type ty_emps is record (e_id number,
                         first_name employees.first_name%type,
                         last_name employees.last_name%type,
                         department_name departments.department_name%type);
                    
 r_emps ty_emps;
 type t_emps is ref cursor;
 rc_emps SYS_REFCURSOR;
 r_depts departments%rowtype;
 --type t_emps2 is ref cursor return rc_emps%rowtype;
 q varchar2(200);
begin
/* open rc_emps for select * from retired_employees;
 loop
  fetch rc_emps into r_emps;
  exit when rc_emps%notfound;
  dbms_output.put_line(r_emps.first_name || ' ' || r_emps.last_name);
 end loop;
 close rc_emps;
 */
 
 dbms_output.put_line('----------------------');
 q := 'select employee_id, first_name, last_name, department_name
                  from employees join departments using (department_id)';
 open rc_emps for q;
 loop
  fetch rc_emps into r_emps;
  exit when rc_emps%notfound;
  dbms_output.put_line(r_emps.first_name || ' ' || r_emps.last_name ||
                       ' is at the department of :' || r_emps.department_name);
 end loop;
 close rc_emps;
 
 dbms_output.put_line('----------------------');
 
 open rc_emps for select*from departments;
 loop
  fetch rc_emps into r_depts;
  exit when rc_emps%notfound;
  dbms_output.put_line(r_depts.department_id || ' ' || r_depts.department_name);
 end loop;
 close rc_emps;
end;