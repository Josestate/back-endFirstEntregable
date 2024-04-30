create table users(
	id serial primary key,
	first_name varchar (50),
	last_name varchar (50),
	email varchar (100)
);

insert into users (first_name, last_name, email) values
('Juan', 'Carrillo', 'Jcarrillo@gmail.com'),
('Pablo', 'Jimenez', 'pjm@gmail.com'),
('Mariana', 'Markez', 'MM@gmail.com');

select * from users;

create table posts(
	id serial primary key,
	creator_id int references users(id),
	title varchar (50),
	text varchar (100)
);


insert into posts (creator_id, title, text) values
(2, 'the king', 'A lot of text over there'),
(1, 'Cortez', 'life is good'),
(3, 'Martinez', 'Needing money'),
(2, 'Cruz', 'I dont know what to poste'),
(1, 'last', 'I am posting the last one');

create table likes(
	id serial primary key,
	user_id int references users(id),
	post_id int references posts(id)
);

insert into likes(user_id, post_id) values
(1, 3),
(2,2),
(3,1),
(1,4),
(3,1);
select * from posts inner join users on posts.creator_id = users.id;
select * from posts inner join likes on likes.post_id = posts.id;
