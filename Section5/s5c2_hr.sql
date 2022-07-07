set serveroutput on;
declare
    v_job_code varchar2(10) := 'IT_PROG';
    v_salary_increase number;
    v_department varchar2(10) := 'IT';
begin
    /*
    v_salary_increase := case v_job_code
        when 'SA_MAN' then 0.2
        when 'SA_REP' then 0.3
        else 0
        end;
    */
    v_salary_increase := case
        when v_job_code = 'SA_MAN' then 0.2
        when v_department = 'IT' AND v_job_code = 'IT_PROG' then 0.4
        when v_job_code in ('SA_REP', 'IT_PROG') then 0.3
        else 0
        end;
        
    dbms_output.put_line('Your salary increase is : '|| v_salary_increase);
end;