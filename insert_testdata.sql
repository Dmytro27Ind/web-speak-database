-- Active: 1660946044762@@127.0.0.1@5432@webspeak
INSERT INTO person (first_name, surname, person_tag, birthday, sex)
VALUES
('Dmytro', 'Kagirov', '@lyn', '2002-02-14', 'male'),
('Artem', 'Kagirov', '@art', '2001-04-01', 'male'),
('Elena', 'Klimova', '@lk10t', '1995-03-11', 'female');

SELECT * FROM person;

-- INSERT INTO settings