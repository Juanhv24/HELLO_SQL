SELECT name, init_date AS 'Fecha de inicio en programación' FROM users WHERE name='pablo'; 

SELECT name, init_date AS "Fecha de inicio en programación" FROM users WHERE name="pablo";

SELECT CONCAT('Nombre: ',name, ', Appellido: ', surname) FROM users;

SELECT CONCAT('Nombre: ',name, ', Appellido: ', surname) AS 'Nombre Completo' FROM users;

 