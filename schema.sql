CREATE DATABASE CATALOG;

CREATE TABLE books (
    id Int generated always as identity,
    publisher  varchar(255),
    cover_state  varchar(255),
    publish_date  date,
    archived  boolean,
    label_id  Int,
    CONSTRAINT fk_label FOREIGN KEY (label_id) REFERENCES labels(id),
    PRIMARY KEY (id)
);

CREATE TABLE labels (
    id int generated always as identity,
    title varchar(255),
    color varchar(255),
    primary key (id)
);

CREATE TABLE music_albums (
    id Int generated always as identity,
    title  varchar(255),
    artist  varchar(255),
    release_date  date,
    label  varchar(255),
    on_spotify  boolean,
    archived  boolean,
    label_id  Int,
    CONSTRAINT fk_label FOREIGN KEY (label_id) REFERENCES labels(id),
    PRIMARY KEY (id)
);

CREATE TABLE genres (
    id int generated always as identity,
    name varchar(255),
    primary key (id)
);

CREATE TABLE items (
    id Int generated always as identity,
    genre varchar(255),
    type varchar(255),
    publisher varchar(255),
    cover_state varchar(255),
    publish_date date,
    title varchar(255),
    artist varchar(255),
    release_date date,
    label varchar(255),
    primary key (id)
);
