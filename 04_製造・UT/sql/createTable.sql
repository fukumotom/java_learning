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
user_id serial NOT NULL  REFERENCES Users(user_id)
,role VARCHAR(5) NOT NULL
);

create table WorkManage
(
id serial REFERENCES Users(user_id)
,startTime time(0)
,endTime time(0)
,workingTime time(0)
,contents VARCHAR(20)
,note VARCHAR(20)
,worktime date
,uptime timestamp
,deleteFlg integer
,updateFlg integer
,insertFlg integer
);

 