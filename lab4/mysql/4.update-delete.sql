INSERT INTO `author`     
    (first_name, last_name) 
VALUES
    ('Alexander', 'Pushkin');

UPDATE `author`
SET first_name = 'Alexander I'
WHERE last_name = 'Pushkin'	

SELECT * FROM `author` ORDER BY id_author DESC;


INSERT INTO `author`
VALUES (1002, NULL, 'Pushkin V'); 


UPDATE `author`
SET first_name = 'Alexander',
	last_name = 'Pushkin'
WHERE id_author = 1002

SELECT * FROM `author` ORDER BY id_author DESC;



SELECT * FROM `author`;

DELETE `author` 
WHERE first_name = 'Alexander';
SELECT * FROM `author`;

DELETE `author`;
SELECT * FROM `author`;

TRUNCATE TABLE `author`;
SELECT * FROM `author`;