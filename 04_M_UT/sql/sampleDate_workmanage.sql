INSERT INTO WorkManage(
	user_name
	,start_time
	,end_time
	,working_time
	,contents
	,note
	,work_date
	,uptime
	,insert_flg
	,update_flg
	,delete_flg
	,status_flg

) VALUES (

	'user1'
	,'00:00:00'
	,'11:00:00'
	,'11:00:00'
	,'サンプル内容０'
	,'サンプルメモ０'
	,Date 'now'
	,TIMESTAMP 'now'
	,0
	,0
	,1
	,0
);

INSERT INTO WorkManage(
	user_name
	,start_time
	,end_time
	,working_time
	,contents
	,note
	,work_date
	,uptime
	,insert_flg
	,update_flg
	,delete_flg
	,status_flg

) VALUES (

	'user1'
	,'10:00:00'
	,'11:00:00'
	,'01:00:00'
	,'サンプル内容１'
	,'サンプルメモ１'
	,Date 'now'
	,TIMESTAMP 'now'
	,0
	,0
	,0
	,0
);

INSERT INTO WorkManage(
	user_name
	,start_time
	,end_time
	,working_time
	,contents
	,note
	,work_date
	,uptime
	,insert_flg
	,update_flg
	,delete_flg
	,status_flg

) VALUES (

	'user1'
	,'11:00:00'
	,'12:00:00'
	,'01:00:00'
	,'サンプル内容２'
	,'サンプルメモ２'
	,Date 'now'
	,TIMESTAMP 'now'
	,0
	,0
	,0
	,0
);

INSERT INTO WorkManage(
	user_name
	,start_time
	,end_time
	,working_time
	,contents
	,note
	,work_date
	,uptime
	,insert_flg
	,update_flg
	,delete_flg
	,status_flg

) VALUES (

	'user1'
	,'12:00:00'
	,'13:00:00'
	,'01:00:00'
	,'サンプル内容３'
	,'サンプルメモ３'
	,Date 'now'
	,TIMESTAMP 'now'
	,0
	,0
	,0
	,0
);

INSERT INTO WorkManage(
	user_name
	,start_time
	,end_time
	,working_time
	,contents
	,note
	,work_date
	,uptime
	,insert_flg
	,update_flg
	,delete_flg
	,status_flg

) VALUES (

	'user1'
	,'12:00:00'
	,NULL
	,NULL
	,'作業中の内容'
	,'作業中のメモ'
	,Date 'now'
	,TIMESTAMP 'now'
	,0
	,0
	,0
	,0
);