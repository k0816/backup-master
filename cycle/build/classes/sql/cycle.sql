drop database if exists cycle;

create database if not exists cycle;
use cycle;

drop table if exists login_user_transaction;

create table login_user_transaction(
id int not null primary key auto_increment,
login_address varchar(50) unique,
login_pass varchar(16),
user_name varchar(50),
gender smallint,
birthday date,
insert_date datetime,
updated_date datetime
);

drop table if exists party_info_transaction;

create table party_info_transaction(
id int not null primary key auto_increment,
party_name varchar(50),
party_date int,
party_price int,
party_capacity int,
age_minimum int,
age_maximum int,
insert_date datetime,
update_date datetime
);

INSERT INTO party_info_transaction(party_name, party_date, party_price, party_capacity, age_minimum, age_maximum)
VALUES("party", 20180401, 5000, 50, 20, 30);
INSERT INTO login_user_transaction(login_address, login_pass, user_name, gender, birthday)
VALUES("aug", "kokoko", "konishi", 1, 19910816);