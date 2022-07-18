create or replace type t_phone_number as object (p_type varchar2(10), p_number varchar2(50));
/
create or replace type v_phone_numbers as varray(3) of t_phone_number;
/
create table emps_with_phones (employee_id number,
                               first_name varchar2(50),
                               last_name varchar2(50),
                               phone_number v_phone_numbers);
/
select * from emps_with_phones;
/
insert into emps_with_phones values (10, 'Alex', 'Brown', v_phone_numbers(
                                                            t_phone_number('HOME', '111.111.1111'),
                                                            t_phone_number('WORK', '222.222.2222'),
                                                            t_phone_number('MOBILE', '333.333.3333')
                                                            ));
insert into emps_with_phones values (10, 'Alex', 'Brown', v_phone_numbers(
                                                            t_phone_number('HOME', '000.000.0000'),
                                                            t_phone_number('WORK', '444.444.4444')
                                                            ));
/
select e.first_name, e.last_name, p.p_type, p.p_number from emps_with_phones e,
                                                            table(e.phone_number) p;