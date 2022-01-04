show databases;
drop table review;

CREATE table if not exists review(
	user_id varchar(10) not null,
	p_name varchar(30),
	r_title varchar(20),
	r_starRating INTEGER,
	r_content TEXT,
	r_filename varchar(20),
	PRIMARY KEY (user_id)
)default CHARSET=utf8;

desc review;

insert into review values('abcde', 'Pancake', 'Fast and easy', 5, 'The quality and freshness of the ingredients were impressive, especially for being pre-cut and prepped in the container. And the cooking instructions were clear, concise, and accurate.', 'reviews-1.jpg');
insert into review values('qwert', 'Beef Taco', 'Nice', 4, 'the ingredients were so fresh!', 'reviews-2.jpg');
insert into review values('xcvzx', 'Cinnamon Bread', 'good', 3, 'it is good for dinner.', 'reviews-3.jpg');

select * from review;
delete from review where user_id='aaaaa';