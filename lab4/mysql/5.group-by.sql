SELECT id_book, page_num 
FROM book
WHERE id_book IN (1, 2, 3);


SELECT id_book, SUM(page_num) 
FROM book
WHERE id_book IN (1, 2, 3)

SELECT publication_year, SUM(page_num) 
FROM book
WHERE publication_year IN (1901, 1902, 1903)
GROUP BY publication_year; 


SELECT publication_year, SUM(page_num) AS total
FROM book
WHERE publication_year IN (1901, 1902, 1903)
GROUP BY publication_year;



SELECT COUNT(*) AS books
FROM book;

SELECT 
    publication_year, COUNT(*)
FROM
    book
GROUP BY publication_year

SELECT publication_year, COUNT(*) AS `count`
FROM
    book
GROUP BY publication_year
HAVING COUNT(*) > 4;	

SELECT id_book AS book
FROM book
HAVING id_book > 10; 

SELECT publication_year, COUNT(page_num)
FROM book
WHERE publication_year IN (1901, 1902, 1903)
GROUP BY publication_year
HAVING COUNT(*) > 5;