-- Скрипты выборок


/*Задача 1.
 * Получить информацию о водителях, приезжающих в город с id = 70, а именно имя, фамилию, марка и номер машины и прицепа.*/


SELECT d.first_name as 'Имя',
d.last_name as 'Фамилия',
t.brand as 'Марка машины',
t.license_plate as 'Номер грузовика',
tr.license_plate as 'Номер прицепа',
c.name as 'Город'
FROM drivers d
JOIN trucks t ON t.driver_id = d.id 
JOIN routes r ON r.driver_id = d.id
JOIN trailers tr ON tr.driver_id = d.id
JOIN cities c ON c.id = r.destanation_id 
WHERE r.destanation_id  = 70;


/*Задача 2.
 * Посчитать сколько водителей старше 30 лет, ездят на автомобиле марки SCANIA
 * */

SELECT COUNT(*) 
FROM drivers d
JOIN trucks t ON t.driver_id = d.id
WHERE TIMESTAMPDIFF(YEAR,d.date_of_birth ,NOW()) > 30 AND t.brand = 'SCANIA'


/*Задача 3.
 * Определить кто больше совершил поездок, мужчины или женщины
 * */

SELECT CASE (gender)
	WHEN 'm' THEN 'мужчин'
	WHEN 'f' THEN 'женщин'
END as 'пол',
COUNT(*) as 'количество поездок'
FROM drivers d 
JOIN routes r ON r.driver_id = d.id 
GROUP BY d.gender

/*Задача 4.
 * Назначим для каждого прицепа рекомендуемые товары для перевозки * 
 * */

-- Создадим дополнительный столбец recomended_product

ALTER TABLE trailers ADD COLUMN recomended_product_id BIGINT UNSIGNED;
ALTER TABLE trailers ADD FOREIGN KEY (recomended_product_id) REFERENCES products(id)
ON UPDATE CASCADE ON DELETE CASCADE;


-- Добавим рекомендованные продукты в случайном порядке

UPDATE trailers 
SET recomended_product_id = (
SELECT id
FROM products 
ORDER BY rand()
LIMIT 1
);



-- Представления


/* Представление 1.
 * Соотнести на каком грузовике какой водитель ездит
 * */

CREATE OR REPLACE VIEW view_drivers_trucks as
SELECT d.id, d.first_name, d.last_name, t.brand 
FROM drivers d
JOIN trucks t ON t.driver_id = d.id
ORDER BY d.id

SELECT * from view_drivers_trucks


/*Представление 2.
 * Подсчет среднего пробега автомобилей
 */

CREATE OR REPLACE VIEW view_average_mileage as
SELECT CASE (brand)
	WHEN 'MERCEDES' THEN (SELECT AVG(mileage) FROM trucks WHERE brand='MERCEDES')
	WHEN 'SCANIA' THEN (SELECT AVG(mileage) FROM trucks WHERE brand='SCANIA')
	WHEN 'DAF' THEN (SELECT AVG(mileage) FROM trucks WHERE brand='DAF')
	WHEN 'MAN' THEN (SELECT AVG(mileage) FROM trucks WHERE brand='MAN')
	WHEN 'VOLVO' THEN (SELECT AVG(mileage) FROM trucks WHERE brand='VOLVO')
END as 'Средний пробег',
t.brand AS 'Брэнд'
FROM trucks t
group by t.brand


SELECT * from view_average_mileage


-- Триггеры 



/*Триггер 1.
 * Триггер проверки водительских прав*/

DROP TRIGGER IF EXISTS check_license;
DELIMITER //

CREATE TRIGGER check_license BEFORE INSERT ON drivers
FOR EACH ROW
BEGIN
	IF (LENGTH(NEW.driver_license_number) != 8) THEN   -- Проверка корректности номера прав
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'INSERT canceled';
	END IF;
END //
DELIMITER ;


-- Вставка не сработает, потому что неверно указан номер водительских прав
INSERT INTO drivers (first_name,last_name, driver_license_number,gender,photo_id,date_of_birth)
VALUES ('Jhon','Smith','12348','M','12345',NOW())

/*Триггер 2.
 * Подсчет возраста водителя
 * */

-- Создание нового столбца с возрастом водителей
ALTER TABLE drivers ADD COLUMN age INT UNSIGNED ;

DROP TRIGGER IF EXISTS check_age;
DELIMITER //

CREATE TRIGGER check_age BEFORE INSERT ON drivers
FOR EACH ROW
BEGIN
	SET NEW.age=YEAR(NOW())-YEAR(NEW.date_of_birth);	
END //
DELIMITER ;

-- Перед вставкой считается возраст водителя и полученное значение вставляется в столбец age.
INSERT INTO drivers (first_name,last_name, driver_license_number,gender,photo_id,date_of_birth)
VALUES ('Jhon','Smith','12345678','M','12345','1990-10-25')



-- Хранимые процедуры.


/* Процедура 1.
 * Подсчет количества мужчин и женщин
 *  */

DELIMITER //
DROP PROCEDURE IF EXISTS select_gender//
CREATE PROCEDURE Select_gender()
BEGIN
	SELECT CASE (gender)
		WHEN 'm' THEN 'мужчин'
		WHEN 'f' THEN 'женщин'
	END as 'пол',
	COUNT(*) as 'количество поездок'
	FROM drivers d 
	JOIN routes r ON r.driver_id = d.id 
	GROUP BY d.gender;
END //
DELIMITER ;

CALL Select_gender();


/*Процедура 2.
 * Получение информации о водителях
 * */
DELIMITER //
DROP PROCEDURE IF EXISTS select_driver_info//
CREATE PROCEDURE select_driver_info(IN id INT)
BEGIN
	SELECT d.id,
	d.first_name as 'Имя',
	d.last_name as 'Фамилия',
	t.brand as 'Марка машины',
	t.license_plate as 'Номер грузовика',
	tr.license_plate as 'Номер прицепа'
	FROM drivers d
	JOIN trucks t ON t.driver_id = d.id 
	JOIN trailers tr ON tr.driver_id = d.id
	WHERE d.id = id;
END//
DELIMITER ;

-- При вызове указывается id желаемого водителя
CALL select_driver_info(5,2) 
