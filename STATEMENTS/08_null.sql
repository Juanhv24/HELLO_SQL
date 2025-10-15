SELECT * FROM users WHERE email IS NULL;

SELECT * FROM users WHERE email IS NOT NULL;

SELECT * FROM users WHERE email IS NOT NULL AND age=24;

SELECT name, surname, IFNULL(age, 0) AS age FROM users; 