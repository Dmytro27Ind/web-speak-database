-- Active: 1660946044762@@127.0.0.1@5432@webspeak

SELECT * FROM person;
SELECT * FROM settings;
ROLLBACK;

BEGIN;
INSERT INTO person (email, person_password, first_name, last_name, person_tag, birthday, sex, photo_path)
VALUES ('dmytro27kagirov@gmail.com', 'test_password', 'Dmytro', 'Kagirov',
        '@lyn', '2002-02-14', 'male', 'test_pass');
INSERT INTO settings (ui_language)
VALUES ('en');
COMMIT;

BEGIN;
INSERT INTO person (email, person_password, first_name, last_name, person_tag, birthday, sex, photo_path)
VALUES ('artem@gmail.com', 'test_password', 'Artem', 'Kagirov',
        '@art', '2001-01-15', 'male', 'test_pass');
INSERT INTO settings (ui_language)
VALUES ('sk');
COMMIT;

BEGIN;
INSERT INTO person (email, person_password, first_name, last_name, person_tag, birthday, sex, photo_path)
VALUES ('elena11@gmail.com', 'test_password', 'Elena', 'Klimova',
        '@elen11', '1995-02-12', 'female', 'test_pass');
INSERT INTO settings (ui_language)
VALUES ('en');
COMMIT;