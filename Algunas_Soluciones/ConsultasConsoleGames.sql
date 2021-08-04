--PREPARACION BBDD
ALTER TABLE console_games
ADD COLUMN global_sales float8;

UPDATE console_games
SET global_sales = na_sales + eu_sales + other_sales;

ALTER TABLE console_games
ADD COLUMN no_sales_percent float8;

UPDATE console_games
SET no_sales_percent = na_sales/global_sales * 100
WHERE global_sales > 0;

--CONSULTAS VARCHAR
SELECT game_name, length(game_name)
FROM console_games

SELECT publisher, left(publisher, 4)
FROM console_games;

SELECT publisher, reverse(publisher)
FROM console_games;

--CONSULTAS CON DATES
SELECT *, date_part('year', discontinued) - (date_part('year', first_retail_availability)) AS year_existed
FROM console_dates
ORDER BY year_existed DESC;

SELECT platform_name, discontinued
FROM console_dates
WHERE date_part('month', discontinued) = 12;

--CONSULTAS CAMBIO DE TIPOS
SELECT game_year::DECIMAL
FROM console_games;

SELECT *
FROM console_games ORDER BY game_name ASC, platform_name DESC;
