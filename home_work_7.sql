-- Задача 1.
-- Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.

USE shop;

INSERT INTO orders (user_id,created_at,updated_at)
VALUES
(1,default,default),
(1,default,default),
(2,default,default),
(4,default,default),
(5,default,default),
(1,default,default),
(5,default,default),
(6,default,default),
(2,default,default),
(1,default,default);



SELECT users.id, users.name, users.birthday_at, orders.created_at FROM users
JOIN orders ON users.id = orders.user_id;


-- Задача 2.
-- Выведите список товаров products и разделов catalogs, который соответствует товару.

SELECT products.name as product_name,
catalogs.name as catalog_name,
products.price as price,
products.description
FROM products
JOIN catalogs ON catalogs.id = products.catalog_id;

-- Задача 3.
-- (по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name). 
-- Поля from, to и label содержат английские названия городов, поле name — русское. 
-- Выведите список рейсов flights с русскими названиями городов.


DROP TABLE IF EXISTS flights;
CREATE TABLE flights (
	id SERIAL PRIMARY KEY,
    `from` VARCHAR(50),
    `to` VARCHAR(50)
);

DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
	id SERIAL PRIMARY KEY, -- SERIAL = BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE
    label VARCHAR(50),
    name VARCHAR(50)
);

INSERT INTO flights(`from`,`to`) 
VALUES 
('Moscow','Krasnodar'),
('Kaliningrad','Moscow'),
('Vladivostok','Murmansk'),
('Saint Petersburg','Rostov');


INSERT INTO cities (label,name)
VALUES 
('Moscow','Москва'),
('Kaliningrad','Калининград'),
('Vladivostok','Владивосток'),
('Saint Petersburg','Санкт-Петербург'),
('Krasnodar','Краснодар'),
('Murmansk','Мурманск'),
('Rostov','Ростов')

SELECT 
id, 
(SELECT name FROM cities WHERE `from` = label),
(SELECT name FROM cities WHERE `to` = label)
FROM flights
ORDER BY id

-- решил я это с помощью вложенных запросов, но вот с JOIN проблемы.
-- Не понимаю как он вообще работает, что тут куда нужно присоединять, почему запрос ниже выдает полностью пустую таблицу.
-- В предыдущих задачах как-то само получилось, на ходу, а тут я впал в ступор


SELECT `from`, `to` FROM flights
JOIN cities ON flights.`from` = cities.name
















