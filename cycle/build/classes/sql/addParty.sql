use cycle;

drop table if exists party_info;

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

INSERT INTO party_info(party_name, party_date, party_price, party_capacity, party_place, age_minimum, age_maximum, party_detail) VALUES
("4月A", 20180401, 5000, 50, "東京都新宿区", 20, 40, "コメント"),
("7月B", 20180701, 3000, 30, "東京都豊島区", 20, 40, "コメント"),
("12月C", 20181228, 4000, 30, "東京都品川区", 25, 40, "コメント"),
("12月D", 20181224, 6000, 30, "埼玉県川越市", 20, 40, "コメント"),
("4月E", 20180401, 3000, 30, "埼玉県さいたま市", 20, 40, "コメント"),
("7月F", 20180701, 5000, 30, "神奈川県横浜市", 20, 35, "コメント"),
("7月G", 20180701, 4000, 30, "神奈川県川崎市", 18, 25, "コメント"),
("8月H", 20180801, 4000, 30, "東京都新宿区西新宿", 25, 40, "コメント"),
("7月I", 20180701, 4000, 30, "東京都新宿区西新宿", 25, 35, "コメント"),
("9月J", 20180901, 4000, 30, "東京都新宿区西新宿", 20, 30, "コメント"),
("10月K", 20181001, 2500, 30, "東京都新宿区西新宿", 25, 40, "コメント"),
("2月L", 20180201, 4000, 30, "東京都新宿区西新宿", 20, 40, "コメント");