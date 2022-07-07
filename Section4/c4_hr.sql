set serveroutput on;
begin <<outer>>
declare
    --v_outer varchar2(50) := 'Outer!';
    v_text varchar2(50) := 'Out-text!';
begin
    declare
    --v_inner varchar2(30) := 'Inner variable!';
    v_text varchar2(50) := 'In-text!';
    BEGIN
        --dbms_output.put_line('inside --> ' || v_outer);
        --dbms_output.put_line('inside_inner --> ' || v_inner);
        dbms_output.put_line('inside_inner --> ' || v_text);
        dbms_output.put_line('inside_outer --> ' || outer.v_text);
    END;
--dbms_output.put_line('inside_inner --> ' || v_inner);
--dbms_output.put_line(v_outer);
dbms_output.put_line('Outside --> ' || v_text);
end;
end outer;