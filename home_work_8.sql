USE vk;


-- Задача 1. 
-- Пусть задан некоторый пользователь. Из всех друзей этого пользователя найдите человека, 
-- который больше всех общался с нашим пользователем.

SELECT u.id,u.firstname,u.lastname FROM users u
JOIN messages m WHERE m.from_user_id = u.id AND m.to_user_id = 1
GROUP BY u.id, u.firstname, u.lastname
ORDER BY COUNT(from_user_id) DESC
LIMIT 1


-- Задача 2. 
-- Подсчитать общее количество лайков, которые получили пользователи младше 11 лет.

SELECT COUNT(*) 
FROM likes l
JOIN media m ON m.id = l.media_id 
JOIN profiles p ON m.user_id = p.user_id
WHERE TIMESTAMPDIFF(YEAR,p.birthday,NOW()) < 11;

/* Получил число на 1 больше чем в 6 дз. Понял, что скрипт мне одного лишнего добавил.
 * Изменив первую строчку на SELECT l.user_id я узнал что добавляется пользователь с id = 1
 * Не понимаю почему так происходит, ведь он никак не может быть младше 11 лет,
 * и он не должен попадать в условие в конце. Но почему-то попадает 
*/

-- Задача 3.
-- Определить кто больше поставил лайков (всего): мужчины или женщины.

SELECT CASE (gender)
	WHEN 'm' THEN 'мужчин'
	WHEN 'f' THEN 'женщин'
END as 'пол',
COUNT(*) as 'количество лайков'
FROM profiles p
JOIN likes l ON l.user_id = p.user_id
GROUP BY p.gender

