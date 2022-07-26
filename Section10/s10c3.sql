create or replace FUNCTION GET_AVG_SEL (p_dept_id departments.department_id%TYPE)
        RETURN NUMBER AS
v_avg_sal NUMBER;
BEGIN
  SELECT AVG(salary) INTO v_avg_sal FROM employees WHERE department_id = p_dept_id;
  RETURN v_avg_sal;
END GET_AVG_SEL;