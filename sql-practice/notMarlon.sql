 SELECT * FROM cats;

SELECT t.name AS toy_name
FROM toys t
JOIN cats c ON t.cat_id = c.id
WHERE c.name = 'Garfield'

INSERT INTO toys (name, cat_id)
VALUES ('Pepperoni', (SELECT id FROM cats WHERE name = 'Garfield'));

SELECT t.name AS toy_name
FROM toys t
WHERE t.cat_id IN (SELECT id FROM cats WHERE name = 'Garfield')
