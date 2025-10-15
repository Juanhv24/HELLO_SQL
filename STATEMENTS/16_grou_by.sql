SELECT MAX(age)  FROM users GROUP BY age;

SELECT COUNT(age) FROM users GROUP BY age;

SELECT COUNT(age), age FROM users GROUP BY age;

SELECT COUNT(age), age FROM users GROUP BY age ORDER BY age DESC;

SELECT COUNT(age), age FROM users WHERE age > 24 GROUP BY age ORDER BY age DESC;