drop table WorkManage;
drop table UserRole;
drop table Users;

create table Users
(
user_id serial NOT NULL
,user_name VARCHAR(20) NOT NULL PRIMARY KEY
,password VARCHAR(64) NOT NULL
);

create table UserRole
(
user_name VARCHAR(20) NOT NULL REFERENCES Users(user_name)
,role VARCHAR(20) NOT NULL
);

create table WorkManage
(
id serial NOT NULL
,user_id integer NOT NULL
,startTime time(0) NOT NULL
,endTime time(0) NOT NULL
,workingTime time(0) NOT NULL
,contents VARCHAR(20) NOT NULL
,note VARCHAR(20) NOT NULL
,worktime date NOT NULL
,uptime timestamp NOT NULL
,deleteFlg integer NOT NULL
,UNIQUE(id, user_id)
);

 