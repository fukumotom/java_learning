drop table WorkManage;
drop table Role;
drop table Users;

create table Users
(
user_name VARCHAR(20) NOT NULL PRIMARY KEY
,password VARCHAR(64) NOT NULL
);

create table Role
(
user_name VARCHAR(20) NOT NULL REFERENCES Users(user_name)
,role VARCHAR(20) NOT NULL
);

create table WorkManage
(
id serial NOT NULL
,user_name VARCHAR(20) NOT NULL
,start_time time(0) NOT NULL
,end_time time(0)
,working_time time(0)
,contents VARCHAR(20) NOT NULL
,note VARCHAR(20) NOT NULL
,work_date date NOT NULL
,uptime timestamp NOT NULL
,insert_flg integer NOT NULL
,update_flg integer NOT NULL
,delete_flg integer NOT NULL
,status_flg integer NOT NULL
,UNIQUE(id, user_name)
);

 