set serveroutput on;
declare
 v_inner number :=1;
begin
<<outer_loop>>
 for v_outer in 1..10 loop
  dbms_output.put_line('My outer value is : ' || v_outer);
  v_inner := 1;
  <<inner_loop>>
   loop
    v_inner := v_inner +1;
    continue outer_loop when v_inner = 10;
    dbms_output.put_line(' My inner value is : ' || v_inner);
   end loop inner_loop;
 end loop outer_loop;
end;
