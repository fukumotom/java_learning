insert into Users values(nextval('Users_user_id_seq'), 'admin', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918');
insert into Users values(nextval('Users_user_id_seq'), 'tomcat', '51b912f34ae18b4e5ad349f50bc6fdd8d9a605d09bab4f302a09c7f790854296');
insert into Users values(nextval('Users_user_id_seq'), 'user1', '0b14d501a594442a01c6859541bcb3e8164d183d32937b851835442f69d5c94e');

insert into UserRole values('admin', 'manager-gui');
insert into UserRole values('tomcat', 'manager-script');
insert into UserRole values('user1', 'admin');
