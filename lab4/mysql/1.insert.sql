INSERT INTO `author`             
    (first_name, last_name) 
VALUES
    ('Alexander', 'Pushkin'); 
    

INSERT INTO `author`
    (last_name, first_name) 
VALUES
    ('Pushkin', 'Alexander'); 

INSERT INTO `author`
VALUES
    (1000, 'Alexander', 'Pushkin'); 

INSERT INTO `author`
VALUES
    ('Alexander', 'Pushkin', 1001);

INSERT INTO `author`
VALUES
    (1002, NULL, 'Pushkin'); 
    
INSERT INTO `author`
VALUES 
    (NULL, 'Alexander', NULL);

INSERT INTO `author`
    (first_name, last_name) 
VALUES 
    ('Alexander', 'Pushkin'),
    ('Alexander', 'Pushkin II');

INSERT INTO `author` 
VALUES 
    (1005, 'Alexander', 'Pushkin III'),
    (1006, 'Alexander', 'Pushkin IV');
    
DELETE FROM author 
WHERE
    last_name LIKE 'Pushkin%';