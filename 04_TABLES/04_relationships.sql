-- Relación 1:1 entre usuarios y DNI
CREATE TABLE dni (
	dni_id int AUTO_INCREMENT PRIMARY KEY, 
    dni_number int NOT NULL, 
    user_id int,
    UNIQUE (dni_id),
    FOREIGN KEY (user_id) REFERENCES users (user_id) 
); 

-- Relación 1:N entre usuarios y empresas
CREATE TABLE companies (
	company_id int AUTO_INCREMENT PRIMARY KEY, 
    name varchar (100) NOT NULL
);

ALTER TABLE users
ADD company_id int,
ADD FOREIGN KEY (company_id) REFERENCES companies (compny_id);

ALTER TABLE users
ADD CONSTRAINT fk_companies
FOREIGN KEY (company_id) REFERENCES companies (company_id)

-- Relación N:M entre usuarios y lenguajes
CREATE TABLE languages (
	language_id int AUTO_INCREMENT PRIMARY KEY, 
    name varchar (100) NOT NULL
);

CREATE TABLE users_languages (
	users_languages_id int AUTO_INCREMENT PRIMARY KEY,
    user_id int, 
    language_id int,
    FOREIGN KEY (user_id) REFERENCES users (user_id), 
    FOREIGN KEY (language_id) REFERENCES languages (language_id),
    UNIQUE (user_id, language_id)
);


INSERT INTO dni (dni_number, user_id) 
VALUES 
	(11111111, 2),
    (33333333, 3);|


INSERT INTO companies (name) 
VALUES 
	('Google'), 
    ('Samsung'),
    ('BMW');

UPDATE users SET company_id=1 WHERE user_id IN (1,7);
UPDATE users SET company_id=2 WHERE user_id=3;
UPDATE users SET company_id=3 WHERE user_id=4;

INSERT INTO users_languages (user_id, language_id)
VALUES 
	(1, 1), 
    (1, 2), 
    (1, 5), 
    (2, 3),
    (2, 5)
