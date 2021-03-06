create table member(
    name varchar2(10) not null,
    userid varchar2(10),
    pwd varchar2(10) not null,
    email varchar(20),
    phone char(13),
    admin number(1) DEFAULT 0,
    primary key(userid)
    );
    
create table employee(
    name varchar2(20),
    address varchar2(100),
    ssn varchar2(15)
    );  
    
select * from employee;

drop table employee;

delete employee where name='null';

insert into employee(name, address, ssn)
values ('duke','seoul','970224-1039234');
insert into employee(name, address, ssn)
values ('porono','busan','001222-1038782');
insert into employee(name, address, ssn)
values ('candy','daejeon','981221-1829192');

commit;

alter table employee MODIFY(name varchar2(20));

create table member(
    name varchar2(10) not null,
    userid varchar2(10),
    pwd varchar2(10) not null,
    email varchar(20),
    phone char(13),
    admin number(1) DEFAULT 0,
    primary key(userid)
    );
    
alter table member MODIFY(name varchar2(20));

desc member;

insert into member(name, userid, pwd, email, phone, admin)
values ('?̼ҹ?','somi','1234','gmd@naver.com','010-111-2222',0);
insert into member(name, userid, pwd, email, phone, admin)
values ('?ϻ???','sang12','1234','ha12@naver.com','010-5629-8888',1);
insert into member(name, userid, pwd, email, phone, admin)
values ('??????','light','1234','youn1004@naver.com','010-9999-8282',0);

insert into member(name, userid, pwd)
values ('ȫ?浿','hong','1234');

commit;

select * from member;

update member set phone ='011-765-4321'
where userid='somi';            


desc member;

insert into member(name, userid, pwd, email, phone, admin)
values ('?̼ҹ?','somi','1234','gmd@naver.com','010-111-2222',0);
insert into member(name, userid, pwd, email, phone, admin)
values ('?ϻ???','sang12','1234','ha12@naver.com','010-5629-8888',1);
insert into member(name, userid, pwd, email, phone, admin)
values ('??????','light','1234','youn1004@naver.com','010-9999-8282',0);

insert into member(name, userid, pwd)
values ('ȫ?浿','hong','1234');

commit;

delete employee where userid='null';

select * from member;

update member set phone ='011-765-4321'
where userid='somi';