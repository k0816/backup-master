drop database if exists cycle;

create database if not exists cycle;
use cycle;

drop table if exists user_info;

create table user_info(
user_id int not null primary key auto_increment,
login_address varchar(50) unique,
login_pass varchar(16),
user_name varchar(50),
gender smallint,
birthday date,
insert_date datetime,
updated_date datetime
);

drop table if exists party_info_transaction;

create table party_info(
party_id int not null primary key auto_increment,
party_name nvarchar(50),
party_date date,
party_price int,
party_capacity int,
party_place nvarchar(100),
age_minimum int,
age_maximum int,
party_detail nvarchar(500),
insert_date datetime,
update_date datetime
);

drop table if exists nice_party_list;
create table nice_party_list(
nice_party_id int not null primary key auto_increment,
user_id int,
party_id int,
insert_date datetime,
update_date datetime
);

drop table if exists party_join_history;
create table party_join_history(
history_id int not null primary key auto_increment,
user_id int,
party_id int,
insert_date datetime,
update_date datetime
);

INSERT INTO user_info(login_address, login_pass, user_name, gender, birthday)
VALUES("koni", "koni", "konishi", 1, 19910816);