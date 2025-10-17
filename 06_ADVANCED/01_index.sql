CREATE INDEX idx_name 
ON users(name);


CREATE UNIQUE INDEX ids_name 
ON users(name);


CREATE INDEX ids_name 
ON users(name, surname); 


DROP INDEX ids_name 
ON users;