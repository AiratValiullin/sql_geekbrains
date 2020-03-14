DROP DATABASE IF EXISTS corp;
CREATE DATABASE corp;
USE corp;

DROP TABLE IF EXISTS users; -- Пользователи
CREATE TABLE users (
	id SERIAL PRIMARY KEY,
    firstname VARCHAR(50),
    lastname VARCHAR(50),
    email VARCHAR(120) UNIQUE,
    phone BIGINT, 
    
    INDEX users_phone_idx(phone),
    INDEX users_firstname_lastname_idx(firstname, lastname)
);

DROP TABLE IF EXISTS `territories`; -- Территория (регионы РФ)
CREATE TABLE `territories` (
	id SERIAL PRIMARY KEY,
	territory VARCHAR(50) COMMENT 'Зона отвественности',
	
	index territory_idx(territory)

);

DROP TABLE IF EXISTS `profiles`; -- Профиль пользователя
CREATE TABLE `profiles` (
	user_id SERIAL PRIMARY KEY,
	post VARCHAR(50) COMMENT 'Должность в компании',
	territory_id BIGINT UNSIGNED NOT NULL COMMENT 'Зона ответственности',
	
	index post_idx(post),
	
	FOREIGN KEY (user_id) REFERENCES users(id),
	FOREIGN KEY (territory_id) REFERENCES territories(id)
	
);

DROP TABLE IF EXISTS `companies`; -- Организации
CREATE TABLE `companies` (
	id SERIAL PRIMARY KEY,
    name VARCHAR(50), -- Название организации
 
	index companies_idx(name)
	
);

DROP TABLE IF EXISTS `comp_profiles`; -- Профиль организации
CREATE TABLE `comp_profiles` (
	comp_id SERIAL PRIMARY KEY,
	user_id BIGINT UNSIGNED NOT NULL,
	
	FOREIGN KEY (comp_id) REFERENCES companies(id),
	FOREIGN KEY (user_id) REFERENCES users(id)

);

DROP TABLE IF EXISTS `catalog`; -- Категория товаров
CREATE TABLE `catalog` (
	id SERIAL PRIMARY KEY,
	catalog_name VARCHAR(50)
	
);

DROP TABLE IF EXISTS `brands`; -- бренды товаров
CREATE TABLE `brands` (
	id SERIAL PRIMARY KEY,
	brand_name VARCHAR(50),
	
	index brand_name_idx(brand_name)
);

DROP TABLE IF EXISTS `item_images`; -- Фото товара
CREATE TABLE `item_images` (
	id SERIAL PRIMARY KEY,
	image VARCHAR(255) -- Ссылка на фото
	
);

DROP TABLE IF EXISTS `items`; -- Продукт
CREATE TABLE `items` (
	id SERIAL PRIMARY KEY,
	item_name VARCHAR(50),
	photo_id BIGINT UNSIGNED NULL,
	brand_name_id BIGINT UNSIGNED null,
	catalog_id BIGINT UNSIGNED null,
	price INT UNSIGNED null,
	
	index item_idx(item_name),
	FOREIGN KEY (catalog_id) REFERENCES catalog (id),
	FOREIGN KEY (photo_id) REFERENCES item_images (id),
	FOREIGN KEY (brand_name_id) REFERENCES brands (id)
);


DROP TABLE IF EXISTS `orders`; -- Заказы
CREATE TABLE `orders` (
	id SERIAL PRIMARY KEY,
	ord_item_id BIGINT UNSIGNED NULL,
	piece INT,
	user_id BIGINT UNSIGNED null,
	created_at DATETIME DEFAULT NOW(),
	
	FOREIGN KEY (ord_item_id) REFERENCES items (id),
	FOREIGN KEY (user_id) REFERENCES users (id)
	
	
);


