# Qlebras

¿Cuáles es **esa qlebra**? Para eso tenemos un blog en el cual identificamos varios tipos de reptiles. ¿Será que puedas encontrar algo más allá de animales?

# Pistas

La vulnerabilidad está dentro del OWASP top 10

# DB info

```sql
create schema snakes;
use snakes;
create table snakes
(
	id int auto_increment primary key,
	snake_name varchar(255) not null,
	img varchar(1024) not null,
	snake_description varchar(1024) not null
);

create unique index snakes_id_uindex
	on snakes (id);

alter table snakes
	add constraint snakes_pk
		primary key (id);

create table flags
(
	id int auto_increment primary key ,
	flag varchar(1024) not null
);

create unique index flags_id_uindex
	on flags (id);

alter table flags
	add constraint flags_pk
		primary key (id);
```
