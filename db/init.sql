drop table if exists heroes;

create table if not exists heroes (
  id serial primary key,
  name text not null unique,
  street_name text,
  age int,
  powers text,
  picture_url text
);

insert into heroes (name, street_name, age, powers, picture_url) values ('Batman', 'Bruce', 45, 'super-rich, tool-belt, cool-buttler', 'https://www.lego.com/en-us/batmanmovie/characters');
insert into heroes (name, street_name, age, powers, picture_url) values ('Michael Scott', 'Prison Mike', 42, 'Power against the dementors', 'https://pbs.twimg.com/profile_images/769724771823124480/5gqDhQFk_400x400.jpg');
insert into heroes (name, street_name, age, powers, picture_url) values ('Homer', 'Springfield', 30, 'unlimited hunger and thirst, mediocre dad, nuclear plant safety dude', 'http://cdn.skim.gs/images/homer-simpson-doughnuts/what-homer-simpson-taught-us-about-doughnuts');
insert into heroes (name, street_name, age, powers, picture_url) values ('Cuphead', 'Cuppie', 20, 'Milk shooting, jumping, dodging', 'https://http2.mlstatic.com/camiseta-ou-baby-look-cuphead-jogo-xbox-one-game-modelo-7-D_NQ_NP_938682-MLB26383675962_112017-F.jpg');
