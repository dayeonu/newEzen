create table member(
    name varchar2(10),
    userid varchar2(10)
    );
    
select * from member;

update member set name ='김철수'
where no 



--컬럼 내 데이타 전부 삭제
delete from member;

insert into member values('홍길동','hgd');

commit;