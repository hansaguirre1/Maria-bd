USE metro_cdmx;

-- Calculamos en metros con datos kemados
SELECT
ST_Distance_Sphere(
    POINT(-99.14433718, 19.40702104),
    POINT(-99.10554171, 19.48231101)
) AS distance;

-- Calculamos en Kilometros con datos kemados
SELECT
ST_Distance_Sphere(
    POINT(-99.14433718, 19.40702104),
    POINT(-99.10554171, 19.48231101)
)/1000 AS distance;


-- Calculamos en Kilometros con consultas anidadas
SELECT
ST_Distance_Sphere(
    (SELECT `locations`.`location` 
    FROM `locations` 
    INNER JOIN `stations` 
    ON `stations`.`id`=`locations`.`station_id`
    WHERE `stations`.`name`="Balderas"),

    (SELECT `locations`.`location` 
    FROM `locations` 
    INNER JOIN `stations` 
    ON `stations`.`id`=`locations`.`station_id`
    WHERE `stations`.`name`="Pino Suarez")
)/1000 AS distance;
