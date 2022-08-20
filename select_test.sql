-- Active: 1660946044762@@127.0.0.1@5432@webspeak
SELECT * FROM person;
SELECT * FROM language_code;
SELECT * FROM post;
SELECT * FROM repost;
SELECT * FROM comments;

SELECT person_id, person_tag, post_id, content, repost.created_on
FROM repost
JOIN person ON repost.fk_person_id = person.person_id
JOIN post ON repost.fk_post_id = post.post_id;