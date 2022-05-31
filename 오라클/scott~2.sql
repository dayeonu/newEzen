create table employee(
    name varchar2(20),
    address varchar2(100),
    ssn varchar2(15)
    );  
    
select * from employee;

insert into employee(name, address, ssn)
values ('duke','seoul','970224-1039234');
insert into employee(name, address, ssn)
values ('porono','busan','001222-1038782');
insert into employee(name, address, ssn)
values ('candy','daejeon','981221-1829192');

commit;

delete item where name is NULL;

create table item(
    name varchar2(20),
    price number(8),
    description varchar2(100)
    );

select * from item;
commit;
delete item where name ='NULL';
drop table item;

insert into item(name,price,description)
values ('냉장고','200000','나만의 시원한 이야기를 담는다.');