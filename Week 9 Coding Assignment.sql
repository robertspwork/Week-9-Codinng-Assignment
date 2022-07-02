create table Social_Media_Database (
user_id int primary key, username varchar(100), email varchar(100), 
passwor varchar(20)
);

create table Posts (
post int primary key, post_content text not null,  time_stamp datetime not null, 
user_id int, 
foreign key(user_id) references social_media_database(user_id)
);
 
 create table Comments (
 comment_id int primary key, comment_info text not null, 
 comm_time_stamp datetime not null,
 user_id int, post int, 
 foreign key(user_id) references social_media_database(user_id),
 foreign key(post) references posts(post)
 );