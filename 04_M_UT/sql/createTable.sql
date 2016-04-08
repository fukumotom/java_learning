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
,startTime time(0) NOT NULL
,endTime time(0) NOT NULL
,workingTime time(0) NOT NULL
,contents VARCHAR(20) NOT NULL
,note VARCHAR(20) NOT NULL
,workDate date NOT NULL
,uptime timestamp NOT NULL
,insertFlg integer NOT NULL
,updateFlg integer NOT NULL
,deleteFlg integer NOT NULL
,UNIQUE(id, user_name)
);

 