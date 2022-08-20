-- Active: 1660946044762@@127.0.0.1@5432@webspeak
DROP TABLE IF EXISTS post;
DROP TABLE IF EXISTS person;
DROP TABLE IF EXISTS language_code;

CREATE TABLE language_code
(
    language_id int         PRIMARY KEY,
    ui_language char(2)     NOT NULL        UNIQUE
);

CREATE TABLE person
(
    person_id           int             NOT NULL    GENERATED ALWAYS AS IDENTITY,
    email               varchar(255)    NOT NULL    UNIQUE,
    person_password     varchar(255)    NOT NULL,
    first_name          varchar(30)     NOT NULL,
    last_name           varchar(30)     NOT NULL,
    person_tag          varchar(30)     NOT NULL    UNIQUE,
    birthday            date,
    sex                 text,
    registration_date   date            DEFAULT NOW(),
    photo_path          varchar(255),
    fk_language_id      int,

    CONSTRAINT PK_person_person_id PRIMARY KEY(person_id),
    CONSTRAINT CHK_person_sex CHECK (sex = 'male' OR sex='female'),
    CONSTRAINT FK_person_language_id FOREIGN KEY(fk_language_id) REFERENCES language_code(language_id)
);

CREATE TABLE post
(
    post_id         int             NOT NULL    GENERATED ALWAYS AS IDENTITY,
    fk_person_id    int             NOT NULL,
    content         varchar(280),
    img_path        varchar(255),
    likes           int             NOT NULL    DEFAULT 0,
    post_date       TIMESTAMPTZ     NOT NULL    DEFAULT NOW(),

    CONSTRAINT CHK_post_likes CHECK (likes >= 0),
    CONSTRAINT FK_post_person_id FOREIGN KEY(fk_person_id) REFERENCES person(person_id)
);