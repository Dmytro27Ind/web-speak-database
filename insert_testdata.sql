-- Active: 1660946044762@@127.0.0.1@5432@webspeak

SELECT * FROM person;
SELECT * FROM language_code;
SELECT * FROM post;

INSERT INTO language_code
VALUES
(1, 'en'),
(2, 'sk');

INSERT INTO person (email, person_password, first_name, last_name, person_tag, birthday, sex, photo_path, fk_language_id)
VALUES
('dmytro27kagirov@gmail.com', 'test_password', 'Dmytro', 'Kagirov', '@lyn', '2002-02-14', 'male', 'test_path', 1),
('artem@gmail.com', 'test_password', 'Artem', 'Kagirov', '@art', '2001-01-15', 'male', 'test_path', 2),
('elena11@gmail.com', 'test_password', 'Elena', 'Klimova', '@elen11', '1995-02-12', 'female', 'test_path', 1);

INSERT INTO post(fk_person_id, content, img_path)
VALUES
(1, 'My first post on Web-Speak', 'img_path'),
(1, 'My second post. Hello', 'img_path'),
(2, 'Artem. First post', 'img_path');