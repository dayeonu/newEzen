create table member_tbl_02(
custno number(6) not null,
custname varchar2(20),
phone varchar2(13),
address varchar2(60),
joindate date,
grade char(1),
city char(2),
primary key(custno)
);

select * from user_sequences;

delete from member_tbl_02;

desc member_tbl_02;

insert into member_tbl_02(custno, custname, phone, address, joindate, grade, city)
values('100001','김행복','01011112222','서울 동대문구 휘경1동','20151202','A','01');

insert into member_tbl_02(custno, custname, phone, address, joindate, grade, city)
values('100002','이축복','01011113333','서울 동대문구 휘경2동','20151206','B','01');

insert into member_tbl_02(custno, custname, phone, address, joindate, grade, city)
values('100003','장믿음','01011114444','울릉군 울릉읍 독도1리','20151001','B','30');

insert into member_tbl_02(custno, custname, phone, address, joindate, grade, city)
values('100004','최사랑','01011115555','울릉군 울릉읍 독도2리','20151113','A','30');

insert into member_tbl_02(custno, custname, phone, address, joindate, grade, city)
values('100005','진평화','01011116666','제주도 제주시 외나무골 ','20151225','B','60');

insert into member_tbl_02(custno, custname, phone, address, joindate, grade, city)
values('100006','차공단','01011117777','제주도 제주시 감나무골','20151211','C','60');


select * from member_tbl_02;

create table money_tbl_02(
custno number(6) not null,
salenol number(8) not null,
pcost number(8),
amount number(4),
price number(8),
pcode varchar2(4),
sdate date,
primary key (custno, salenol) -- 복합키 경우에 따라서 사용
);

select * from money_tbl_02;

insert into money_tbl_02(CUSTNO, salenol, pcost, amount, price, pcode, sdate)
values('100001','20160001','500','5','2500','A001','20160101');
insert into money_tbl_02(CUSTNO, salenol, pcost, amount, price, pcode, sdate)
values('100001','20160002','1000','4','4000','A002','20160101');
insert into money_tbl_02(CUSTNO, salenol, pcost, amount, price, pcode, sdate)
values('100001','20160003','500','3','1500','A008','20160101');
insert into money_tbl_02(CUSTNO, salenol, pcost, amount, price, pcode, sdate)
values('100002','20160004','2000','1','2000','A004','20160102');
insert into money_tbl_02(CUSTNO, salenol, pcost, amount, price, pcode, sdate)
values('100002','20160005','500','1','500','A001','20160103');
insert into money_tbl_02(CUSTNO, salenol, pcost, amount, price, pcode, sdate)
values('100003','20160006','1500','2','3000','A003','20160103');
insert into money_tbl_02(CUSTNO, salenol, pcost, amount, price, pcode, sdate)
values('100004','20160007','500','2','1000','A001','20160104');
insert into money_tbl_02(CUSTNO, salenol, pcost, amount, price, pcode, sdate)
values('100004','20160007','500','2','1000','A001','20160104');
insert into money_tbl_02(CUSTNO, salenol, pcost, amount, price, pcode, sdate)
values('100004','20160008','300','1','300','A005','20160104');
insert into money_tbl_02(CUSTNO, salenol, pcost, amount, price, pcode, sdate)
values('100004','20160009','600','1','600','A006','20160104');
insert into money_tbl_02 values('100004','20160010','3000','1','3000','A007','20160106');

update money_tbl_02 set custno = '100001';

-- 생성 후 CRUD 권한부여
grant insert, update, delete, select on member_tbl_02 to system;

-- 회원정보 테이블에 대한 시퀀스 추가
create sequence member_seq
start with 10001 
increment by 1 
minvalue 10001 
cache 10;

grant alter, select on member_seq to system; -- 시퀸스 권한 추가 



COMMIT;