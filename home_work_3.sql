   /*Практическое задание по теме “Введение в проектирование БД”
Написать cкрипт, добавляющий в БД vk, которую создали на 3 вебинаре,
 3-4 новые таблицы (с перечнем полей, указанием индексов и внешних ключей).
(по желанию: организовать все связи 1-1, 1-М, М-М)*/  
    


-- Связь M-M

USE vk;
-- Создание таблицы вложений для сообщений.
DROP TABLE IF EXISTS attachments;
CREATE TABLE attachments(
	id BIGINT UNSIGNED PRIMARY KEY,
	attachment_message_id SERIAL,
	body text,
	FOREIGN KEY (attachment_message_id) REFERENCES messages(id) ON UPDATE CASCADE ON DELETE CASCADE
);

-- логика такая же как и для создание сообществ для пользователей.
DROP TABLE IF EXISTS attachments_messages;
CREATE TABLE attachments_messages(
	attachment_id BIGINT UNSIGNED,
	message_id BIGINT UNSIGNED,
	PRIMARY KEY (attachment_id,message_id),
	FOREIGN KEY (attachment_id) REFERENCES attachments(id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (message_id) REFERENCES messages(id) ON UPDATE CASCADE ON DELETE CASCADE
	);
	
-- Связь 1-М

-- Создание таблицы для сторис пользователей.
-- Используется связь 1-М, то есть у одного пользователя может быть много сторис, но не наоборот
DROP TABLE IF EXISTS stories;
CREATE TABLE stories(
	id SERIAL PRIMARY KEY,
	user_id BIGINT UNSIGNED,
	user_firstname VARCHAR(100),
	user_lastname VARCHAR(100),
	body text,
	created_time DATETIME DEFAULT NOW(),
	FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (user_firstname) REFERENCES users(firstname) ON UPDATE CASCADE ON DELETE CASCADE,
	
	/* Не могу понять почему, но СУБД не дает мне добавить этот внешний ключ. Идея самой таблицы состоит в том, что
	 * каждый пользователь может добавить свои сторис и иметь их неограниченное количество. Собственно в этой таблице мне нужна
	 * информация о пользователе, который создает свои сторис. Чтобы можно было найти определеные сторис мне нужно знать кто их создал,
	 * соответственно одного имени недостаточно, хочу искать по имени-фамилии. Чтобы имя и фамилия были в этой таблице, 
	 * я пытаюсь вытащить их из таблицы users, там ведь они уже есть. Только с именем работает, а с фамилией нет. Не понимаю почему */
	
	-- FOREIGN KEY (user_lastname) REFERENCES users(lastname) ON UPDATE CASCADE ON DELETE CASCADE
	
	
	INDEX user_lastname_firstname_idx(user_lastname,user_firstname)
);

 -- Связь 1-1
   
-- создание таблицы забаненых пользователей, в которую заносятся id пользователей
-- на которых наложили ограничения
DROP TABLE IF EXISTS banned_users;
CREATE TABLE banned_users(
	banned_id SERIAL PRIMARY KEY, -- id записи о заблокированном пользователе
	user_id BIGINT UNSIGNED, -- id самого пользователя
	FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE
);
