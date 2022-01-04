create table member (
	id varchar(10) not null,
	password varchar(10) not null,
	name varchar(10) not null,
	phone varchar(20),
	address varchar(90),
	regist_day varchar(50),
	primary key(id)
) default charset=utf8;

desc member;

select * from member;

delete from member where id='abc';
