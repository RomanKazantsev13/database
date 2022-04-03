SELECT * FROM `author`; 

SELECT first_name FROM `author`; 

SELECT last_name FROM `author`; 

SELECT first_name, last_name FROM `author`;


SELECT * FROM book 
WHERE id_book = 10; 

SELECT * FROM book 
WHERE id_book < 10;

SELECT * FROM book 
WHERE id_book BETWEEN 1 AND 3; 

SELECT * FROM book 
WHERE publication_year = 1915 OR publication_year = 1925;

SELECT * FROM book 
WHERE publication_year BETWEEN 1915 AND 1925;

SELECT name, publication_year FROM book 
WHERE publication_year = 1915 AND name = 'Future Of The Nation';

SELECT name, publication_year FROM book 
WHERE NOT publication_year = 1925; 


INSERT INTO `author`
VALUES (NULL, NULL, 'Pushkin'); 

SELECT * FROM `author` 
WHERE first_name IS NULL; 

SELECT name, publication_year FROM book 
WHERE name LIKE 'Future';

SELECT name, publication_year FROM book 
WHERE name = 'Future';

SELECT name, publication_year FROM book 
WHERE name LIKE 'Fut%';

SELECT name, publication_year FROM book 
WHERE name = 'Fut%';  

SELECT name, publication_year FROM book 
WHERE name LIKE 'Lord Of Dre__';

SELECT name, publication_year FROM book 
WHERE name LIKE 'Lord Of Drea_'; 

SELECT name, publication_year FROM book 
WHERE name LIKE 'Lord Of Dre_d';

SELECT name, publication_year FROM book 
WHERE name LIKE '%ist%';

SELECT * FROM book WHERE publication_year IN (1900, 1901, 1902); 

SELECT * FROM book
WHERE publication_year = 1900 OR publication_year = 1901 OR publication_year = 1902;

SELECT * FROM book LIMIT 5; 

SELECT * FROM book LIMIT 5,10; 
