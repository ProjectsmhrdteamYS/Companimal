select * from tbl_community

drop table tbl_community

alter table tbl_community modify c_cnt number(15) default 1 not null; 

select * from tbl_user;

select * from tbl_user where user_id='test1' and user_pw = '1234';

