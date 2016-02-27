drop table WorkManage;
drop table UserRole;
drop table Users;

create table Users
(
user_id serial NOT NULL  PRIMARY KEY
,user_name VARCHAR(20) NOT NULL
,password VARCHAR(20) NOT NULL
);

create table UserRole
(
user_id serial NOT NULL REFERENCES Users(user_id)
,role VARCHAR(5) NOT NULL
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

 