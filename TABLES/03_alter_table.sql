ALTER TABLE personas7
ADD surname varchar(100);

ALTER TABLE personas7
RENAME COLUMN surname TO description; 


ALTER TABLE personas7
MODIFY COLUMN description varchar (250);

ALTER TABLE personas7
DROP COLUMN description;

 