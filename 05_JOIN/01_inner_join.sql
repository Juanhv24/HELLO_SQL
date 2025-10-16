SELECT * FROM users
INNER JOIN dni;


SELECT * FROM users
INNER JOIN dni
ON users.user_id = dni.user_id;


SELECT * FROM users
JOIN dni
ON users.user_id = dni.user_id;


SELECT name, dni_number FROM users 
JOIN dni
ON users.user_id = dni.user_id
ORDER BY age DESC;


SELECT * FROM users
JOIN companies 
ON users.company_id = companies.company_id;


SELECT companies.name AS Company, users.name AS Name FROM companies
JOIN users 
ON companies.company_id = users.company_id;


SELECT * 
FROM users_languages
JOIN users ON users_languages.user_id = users.user_id
JOIN languages ON users_languages.language_id = languages.language_id;


SELECT users.name AS Name, languages0.name AS Language
FROM users_languages
JOIN users ON users_languages.user_id = users.user_id
JOIN languages ON users_languages.language_id = languages.language_id;




