<<<<<<< HEAD
select * from tbl_community

=======
select * from tbl_community;

select * from TBL_USER

=======
select * from tbl_find;
delete tbl_community;

alter table tbl_community modify c_cnt number(15) default 1 not null; 

select * from tbl_user;

select * from tbl_user where user_id='test1' and user_pw = '1234';

=======
commit;

ALTER TABLE tbl_community ADD user_name VARCHAR(25);
ALTER table tbl_user add constraint user_name primary key(user_name);
ALTER TABLE tbl_community ADD CONSTRAINT user_name_fk FOREIGN KEY (user_name) REFERENCES tbl_user(user_name)