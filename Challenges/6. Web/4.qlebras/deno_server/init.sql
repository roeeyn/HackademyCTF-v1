create schema snakes;
use snakes;
create table snakes
(
    id                int auto_increment primary key,
    snake_name        varchar(255)  not null,
    img               varchar(1024) not null,
    snake_description varchar(1024) not null
);

create unique index snakes_id_uindex
    on snakes (id);

/*
alter table snakes
	add constraint snakes_pk
		primary key (id);
*/
create table users
(
    id       int auto_increment primary key,
    username varchar(1024) not null,
    password varchar(1024) not null
);

create unique index users_id_uindex
    on users (id);


/*alter table users
	add constraint users_pk
		primary key (id);
*/

INSERT INTO snakes.snakes (snake_name, img, snake_description)
VALUES ('Carmentus Traitus',
        'https://res.cloudinary.com/dmrgfufa4/image/upload/v1599603982/events/HackademyCTF_v1/snake1.jpg',
        'Hay que tener cuidado con esta culebra, porque suele atacar por la espalda.');

INSERT INTO snakes.snakes (snake_name, img, snake_description)
VALUES ('Ramsitus Carnivurus',
        'https://res.cloudinary.com/dmrgfufa4/image/upload/v1599603983/events/HackademyCTF_v1/snake2.jpg',
        'Esta especie es característica por su alta tasa de apareamiento');

INSERT INTO snakes.snakes (snake_name, img, snake_description)
VALUES ('Drigus Choluskis',
        'https://res.cloudinary.com/dmrgfufa4/image/upload/v1599603985/events/HackademyCTF_v1/snake3.png',
        'Hay que tener cuidado con esta especie, ya que si te acercas demasiado te obligará a escuchar al Tren Lokote https://www.youtube.com/watch?v=Gz8sKwnpYXE');

INSERT INTO snakes.users (username, password) VALUES ('secret_admin', 'bWJsdWV7M3N0M18zcjRfZDNfbDBzX3IzdDBzX200c19kMWYxYzFsM3MuM2NoYXQzX3VuMV9tMWxsM3JfcDRyNF9mM3N0M2o0cn0=');

CREATE USER 'frontend_user'@'%' IDENTIFIED BY 'iamnotgroot';
GRANT SELECT ON snakes.* TO 'frontend_user'@'%';
FLUSH privileges;
