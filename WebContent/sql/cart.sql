create table cart (
	user_id varchar(30) not null,
	p_name varchar(10) not null,
	p_price varchar(10) not null,
	p_quantity INTEGER,
	primary key(user_id)
) default charset=utf8;

desc cart;

select * from cart;

drop table cart;