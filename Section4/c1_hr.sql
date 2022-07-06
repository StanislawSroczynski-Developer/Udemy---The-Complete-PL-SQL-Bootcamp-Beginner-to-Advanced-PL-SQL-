DESC employees
declare
    v_type1 employees.job_id%type;
    v_type2 v_type1%TYPE;
    v_type3 employees.job_id%type;
begin
    v_type1 := 'IT_PROG';
    v_type2 := 'SA_MAN';
    v_type3 := NULL;
    DBMS_OUTPUT.PUT_LINE(v_type1);
    DBMS_OUTPUT.PUT_LINE(v_type2);
    DBMS_OUTPUT.PUT_LINE(v_type3 || ' HELLO');
end;