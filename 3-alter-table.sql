USE metro_cdmx;

ALTER TABLE  `stations` 
MODIFY `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
ADD PRIMARY KEY(id);
-- podemos añadir llaves foranias con 
-- ADD CONSTRAINT `trains_line_id_foreign`
-- FOREIGN KEY(`line_id`) REFERENCES `lines`(`id`);