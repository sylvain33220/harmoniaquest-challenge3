create table user (
  id int unsigned primary key auto_increment not null,
  email varchar(255) not null unique,
  password varchar(255) not null
);

create table item (
  id int unsigned primary key auto_increment not null,
  title varchar(255) not null,
  user_id int unsigned not null,
  foreign key(user_id) references user(id)
);

create table category (
  id int auto_increment primary key not null,
  name varchar(255) NOT NULL UNIQUE
);

create table program (
  id int auto_increment primary key not null,
  title varchar(255),
  synopsis text,
  poster varchar(255),
  country varchar(100),
  year int,
  category_id int
);
