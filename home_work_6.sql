USE vk;

-- Задача 1. 
-- Пусть задан некоторый пользователь. Из всех друзей этого пользователя найдите человека, 
-- который больше всех общался с нашим пользователем.

SELECT initiator_user_id FROM friend_requests WHERE initiator_user_id= (
	SELECT from_user_id FROM messages WHERE to_user_id = 1 -- выведет результат для пользователя с id = 1
	GROUP BY from_user_id
	ORDER BY COUNT(from_user_id) DESC
	LIMIT 1
	);

-- Задача 2. 
-- Подсчитать общее количество лайков, которые получили пользователи младше 11 лет.


SELECT COUNT(*) FROM likes
WHERE media_id IN (SELECT user_id FROM media WHERE user_id IN 
(SELECT user_id FROM profiles WHERE TIMESTAMPDIFF (YEAR,birthday,NOW()) < 11))
;

-- Задача 3.
-- Определить кто больше поставил лайков (всего): мужчины или женщины.

SELECT COUNT(user_id) FROM likes
WHERE user_id IN (SELECT user_id FROM profiles WHERE gender = 'f') -- ответ 16
UNION
SELECT COUNT(user_id) FROM likes
WHERE user_id IN (SELECT user_id FROM profiles WHERE gender = 'm'); -- ответ 4

-- могу сделать всё двумя запросами, но не могу придумать как это объединить в один


