USE metro_cdmx;

SELECT * FROM `lines`;


--Filtrar por columnas

SELECT id, name, color FROM `lines`;

--Opéraciones matemásticas con SELECT
SELECT(2+2);

SELECT(2+2) AS resultato;

SELECT AVG(year) FROM `trains`;

SELECT AVG(year) as year_avg  FROM `trains`;

-- juntar tablas

SELECT `lines`.`name`,
'trains'.`serial_number`
FROM `lines`
INNER JOIN `trains`
ON `lines`.`id` = `trains`.`line_id`;