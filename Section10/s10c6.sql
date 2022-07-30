create or replace function get_emp (emp_num employees.employee_id%type)
                                    return employees%rowtype is
                                    emp employees%rowtype;
begin
  select * into emp from employees where employee_id = emp_num;
  return emp;
exception
  when no_data_found then
  dbms_output.put_line('There is no employee with the id of : ' || emp_num);
  return null;
  when others then
  dbms_output.put_line('Something unexpected happened!..');
  return null;
end;