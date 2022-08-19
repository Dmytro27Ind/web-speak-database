-- Active: 1660946044762@@127.0.0.1@5432@webspeak
DROP TABLE IF EXISTS person;
DROP TABLE IF EXISTS settings;

CREATE TABLE person
(
    person_id           INT GENERATED ALWAYS AS IDENTITY NOT NULL,
    email               VARCHAR(255) NOT NULL UNIQUE,
    person_password     VARCHAR(255) NOT NULL,
    first_name          VARCHAR(30) NOT NULL,
    last_name           VARCHAR(30) NOT NULL,
    person_tag          VARCHAR(30) NOT NULL UNIQUE,
    birthday            DATE,
    sex                 TEXT,
    registration_date   DATE DEFAULT NOW(),
    photo_path          VARCHAR(255),

    CONSTRAINT PK_person_person_id PRIMARY KEY(person_id),
    CONSTRAINT CHK_person_sex CHECK (sex = 'male' OR sex='female')
);

CREATE TABLE settings
(
    fk_person_id    INT GENERATED ALWAYS AS IDENTITY NOT NULL,
    ui_language     TEXT    NOT NULL,

    CONSTRAINT FK_settings_person_id FOREIGN KEY(fk_person_id) REFERENCES person(person_id),
    CONSTRAINT CHK_settings_ui_language CHECK (ui_language IN ('en', 'sk'))
)