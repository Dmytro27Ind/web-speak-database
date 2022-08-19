-- Active: 1660946044762@@127.0.0.1@5432@webspeak
DROP TABLE IF EXISTS person;
DROP TABLE IF EXISTS settings;

CREATE TABLE person
(
    person_id           INT GENERATED ALWAYS AS IDENTITY NOT NULL,
    first_name          VARCHAR(30) NOT NULL,
    surname             VARCHAR(30) NOT NULL,
    person_tag          VARCHAR(30) NOT NULL UNIQUE,
    birthday            DATE,
    sex                 TEXT,
    registration_date   DATE DEFAULT NOW(),

    CONSTRAINT PK_person_person_id PRIMARY KEY(person_id),
    CONSTRAINT CHK_person_sex CHECK (sex = 'male' OR sex='female')
);

CREATE TABLE settings
(
    fk_person_id    INT     NOT NULL,
    ui_language     TEXT    NOT NULL,

    CONSTRAINT FK_settings_person_id FOREIGN KEY(fk_person_id) REFERENCES person(person_id),
    CONSTRAINT CHK_settings_ui_language CHECK (ui_language IN ('en', 'sk'))
)