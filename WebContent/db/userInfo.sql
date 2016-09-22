create table userinfo (
	id varchar(20) PRIMARY key,
	password varchar(20),
	isadmin varchar(1)
) SEGMENT creation IMMEDIATE ;

insert into userinfo(id,password,isadmin) values('admin','qwer1234','1');

select * from userinfo;
