USE shop;

-- Задача 1.
-- Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их текущими датой и временем.


/* При создании таблицы в скрипте shop установил значения по умолчнаию NULL,
 * тем самым они оказались не заполнены */

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at DATETIME DEFAULT NULL,
  updated_at DATETIME DEFAULT NULL
) COMMENT = 'Покупатели';

INSERT INTO users (name, birthday_at) VALUES
  ('Геннадий', '1990-10-05'),
  ('Наталья', '1984-11-12'),
  ('Александр', '1985-05-20'),
  ('Сергей', '1988-02-14'),
  ('Иван', '1998-01-12'),
  ('Мария', '1992-08-29');
 
 

-- заполнение поля created_at 
UPDATE users
set created_at = NOW();
UPDATE users 
set updated_at = NOW()


/* Задача 2.
 Таблица users была неудачно спроектирована. Записи created_at и updated_at были заданы типом VARCHAR
 и в них долгое время помещались значения в формате 20.10.2017 8:10. 
 Необходимо преобразовать поля к типу DATETIME, сохранив введённые ранее значения.*/

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at VARCHAR(100),
  updated_at VARCHAR(100)
) COMMENT = 'Покупатели';

INSERT INTO users (name, birthday_at) VALUES
  ('Геннадий', '1990-10-05'),
  ('Наталья', '1984-11-12'),
  ('Александр', '1985-05-20'),
  ('Сергей', '1988-02-14'),
  ('Иван', '1998-01-12'),
  ('Мария', '1992-08-29');


UPDATE users 
set created_at = '20.10.2017 8:10';
UPDATE users 
set updated_at = '20.10.2017 8:10';

UPDATE users 
set created_at = STR_TO_DATE('20.10.2017 8:10','%d.%m.%Y %H:%i');
UPDATE users 
set updated_at = STR_TO_DATE('20.10.2017 8:10','%d.%m.%Y %H:%i');

/*Задача 3.
В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры:
 0, если товар закончился и выше нуля, если на складе имеются запасы. 
 Необходимо отсортировать записи таким образом, чтобы они выводились в порядке увеличения значения value. 
 Однако нулевые запасы должны выводиться в конце, после всех 
 */

INSERT INTO storehouses_products (value)
VALUES
(0),
(29),
(37),
(11),
(22),
(7),
(0),
(5);


SELECT value FROM storehouses_products
ORDER BY CASE WHEN value = 0 then 1 else 0 end, value;


/*Задача 4.
  (по желанию) Из таблицы users необходимо извлечь пользователей, родившихся в августе и мае.  1990-10-05
   Месяцы заданы в виде списка английских названий (may, august)
*/

SELECT    name, birthday_at,    
	CASE 
        WHEN DATE_FORMAT(birthday_at, '%m') = 05 THEN 'may'   -- проверка месяца и присваивание новго формата вывода
        WHEN DATE_FORMAT(birthday_at, '%m') = 08 THEN 'august'
    END
FROM
    users WHERE DATE_FORMAT(birthday_at, '%m') = 05 OR DATE_FORMAT(birthday_at, '%m') = 08;
   
   
 /*Задача 5.
  (по желанию) Из таблицы catalogs извлекаются записи при помощи запроса.
   SELECT * FROM catalogs WHERE id IN (5, 1, 2); Отсортируйте записи в порядке, заданном в списке IN. */
   SELECT * 	
   FROM catalogs WHERE id IN (5, 1, 2)
  ORDER BY 
  	CASE 
  		WHEN id = 1 THEN 1
  		WHEN id = 2 THEN 2
  		WHEN ID = 3 THEN 3
  	END;
   
  
  
  -- Агрегация данных 
  -- Задача 1. 
  -- Подсчитайте средний возраст пользователей в таблице users.
  
  SELECT ROUND(AVG((TO_DAYS(NOW()) - TO_DAYS(birthday_at)) / 365.25), 0) AS AVG_Age FROM users;
   
 /*Задача 2.
  Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. 
  Следует учесть, что необходимы дни недели текущего года, а не года рождения.*/
 SELECT
    DAYNAME(CONCAT(YEAR(NOW()), '-', SUBSTRING(birthday_at, 6, 10))) AS week_day_of_birthday_in_this_Year,
    COUNT(*) AS amount_of_birthday
FROM
    users
GROUP BY 
    week_day_of_birthday_in_this_Year
ORDER BY
	amount_of_birthday DESC;


/*Задача 3.
 * (по желанию) Подсчитайте произведение чисел в столбце таблицы.
 * */

DROP TABLE IF EXISTS numbers;
CREATE TABLE numbers(
    value SERIAL PRIMARY KEY
);

INSERT INTO numbers (value)
VALUES (1),(2),(3),(4),(5);

SELECT EXP(SUM(LOG(value))) FROM numbers;