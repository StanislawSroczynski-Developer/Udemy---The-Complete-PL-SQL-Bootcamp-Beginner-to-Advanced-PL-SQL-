begin
  dbms_output.put_line(emp_pkg.get_avg_sal(50));
  dbms_output.put_line(emp_pkg.v_salary_increase_rate);
end;