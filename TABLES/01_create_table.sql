CREATE TABLE personas(
	id int, 
    name varchar(100), 
    age int, 
    email varchar(50), 
    created date
);


CREATE TABLE personas2 (
	id int NOT NULL, 
    name varchar (100) NOT NULL, 
    age int, 
    email varchar (50), 
    created date 
);


CREATE TABLE personas3 (
	id int NOT NULL , 
    name varchar (100) NOT NULL, 
    age int, 
    email varchar (50), 
    created datetime,
    UNIQUE (id)
);


CREATE TABLE personas4 (
	id int NOT NULL , 
    name varchar (100) NOT NULL, 
    age int, 
    email varchar (50), 
    created datetime,
    UNIQUE (id),
    PRIMARY KEY (id)  
); 

-- PK, Identificador primario de la tabla, que lo designa como el campo principal para establecer relaciones con otros registros


CREATE TABLE personas6 (
	id int NOT NULL AUTO_INCREMENT, 
    name varchar (100) NOT NULL, 
    age int, 
    email varchar (50), 
    created datetime DEFAULT CURRENT_TIMESTAMP(),
    UNIQUE (id),
    PRIMARY KEY (id), 
    CHECK (age>=18) 
); 



