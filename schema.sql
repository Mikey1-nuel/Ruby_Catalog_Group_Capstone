CREATE DATABASE CATALOG;

CREATE TABLE books (
    id Int generated always as identity,
    publisher  varchar(255) ,
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
