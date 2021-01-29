-- CREATE DATABASE [cinema]

use [cinema]
GO

drop table casts;
drop table movie_director;
drop table Genre;
drop table actor;
drop table movie;
drop table director;

create table actor
(
    id          varchar(20),
    fname       VARCHAR(30),
    lname       VARCHAR(30),
    gender      varchar(6),
    yob         int,
    PRIMARY key(id)
);

create table movie
(
    id          varchar(20),
    name        VARCHAR(100),
    year        int,
    rank        float,
    PRIMARY key(id)
);

create table director
(
    id          varchar(20),
    fname       varchar(30),
    lname       varchar(30),
    PRIMARY KEY(id)
);

create table casts
(
    pid         varchar(20),
    mid         varchar(20),
    role        varchar(60),
    foreign key (pid) REFERENCES actor (id)
    on delete cascade,
    foreign key (mid) REFERENCES movie(id)
    on delete CASCADE
);

create table movie_director
(
    mid         varchar(20),
    did         varchar(20),
    foreign key (did) REFERENCES director(id)
    on delete cascade,
    foreign key (mid) REFERENCES movie(id)
    on delete cascade
);

create table Genre
(
    mid         varchar(20),
    genre       VARCHAR(30),
    foreign key (mid) REFERENCES movie(id)
    on delete cascade
);
