set serveroutput on;
declare
    v_number number := 5;
    v_name varchar2(30) := 'Carol';
begin
    if (v_number < 10 or v_name = 'Carol') then
        dbms_output.put_line('Hi');
        dbms_output.put_line('I am smaller than 10');
    elsif v_number <20 then
        dbms_output.put_line('I am smaller than 20');    
    elsif v_number < 30 then
        dbms_output.put_line('I am smaller than 30');    
    else
        if v_number is null then
            dbms_output.put_line('the number is null');
        else
        dbms_output.put_line('I am equal or greater than 30');
        end if;
    end if;
end;
