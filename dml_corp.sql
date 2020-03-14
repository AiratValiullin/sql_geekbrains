INSERT INTO corp.users
(firstname, lastname, email, phone)
values
('Иван', 'Петров', 'ivan@example.com', 89055563535),
('Петр', 'Иванов', 'petr@example.com', 89055435455),
('Тимур', 'Сидоров', 'tim@example.com', 893454353535),
('Марина', 'Лапшина', 'mar@example.com', 8934545345535),
('Дарья', 'Исхакова', 'dar@example.com', 8934554435);

INSERT INTO corp.territories
(territory)
values
('ДВФО'),
('ЮФО'),
('СФО'),
('ПФО'),
('СЗФО');


INSERT INTO corp.profiles
(post, territory_id)
values
('manager', 1),
('manager', 2),
('hkam', 3),
('ssv', 4),
('manager', 5);

INSERT INTO corp.companies
(name, email)
values
('Kont', '1@ex.ru'),
('Helhu', 'ht@ex.ru' ),
('Rubun', 'ru@ex.ru'),
('Oklo', 'ok@ex.ru'),
('Tunk', 'tu@ex.ru'),
('Polk', 'po@ex.ru'),
('Runtk', 'ru@ex.ru'),
('Volku', 'vo@ex.ru'),
('GHuopr', 'g@ex.ru'),
('Ylie', 'y@ex.ru');

INSERT INTO corp.comp_profiles
(user_id, discount, inn, phone, director)
values
(1, 5, 345345, 8090909, 'Gans'),
(1, 5, 3456456345, 757690909, 'Igor'),
(2, 5, 34456345, 8090909, 'Ivam'),
(2, 7, 345345, 865760909, 'Petr'),
(3, 7, 3456345, 8756909, 'Marfa'),
(4, 7, 456345, 8230909, 'Azamat'),
(5, 8, 645645345, 423490909, 'Far'),
(5, 15, 364565345, 4230909, 'Pavel'),
(5, 4, 86785345, 65790909, 'Mari'),
(5, 4, 12213345, 880990909, 'Mark');

INSERT INTO corp.`catalog`
(catalog_name)
values
('жмс'),
('счс'),
('мыло'),
('гели'),
('стиральные порошки');

INSERT INTO corp.item_images
(image)
values
('1sdfsdfsdf.jpeg'),
('2efdsf.jpeg'),
('3dsfgsg.jpeg'),
('4sdfgsdgsd.jpeg'),
('5gsdfgdfg.jpeg'),
('6gsadgasdg.jpeg'),
('7sdsdfs.jpeg'),
('8sfsadfsd.jpeg'),
('9sdfsfsaf.jpeg'),
('10sdfdfsdf.jpeg');


INSERT INTO corp.brands
(brand_name)
values
('bimax'),
('sorti'),
('biolan'),
('aos');

INSERT INTO corp.items
(item_name, photo_id, brand_name_id, catalog_id, price)
values
('Bimax 1', 1, 1, 1, 55),
('Bimax 2', 2, 1, 2, 56),
('Bimax 3', 3, 1, 1, 105),
('Aos 1', 4, 1, 2, 45),
('Aos 2', 5, 1, 3, 67),
('Aos 3', 6, 1, 4, 576),
('Biolan 1', 7, 3, 5, 76),
('Biolan 3', 8, 3, 5, 34),
('Biolan 2', 9, 3, 1, 98),
('Sorti 1', 10, 2, 1, 105),
('Sorti 2', 1, 2, 3, 83),
('Sorti 3', 2, 2, 3, 47);


INSERT INTO corp.orders
(ord_item_id, piece, user_id, created_at)
values
(1, 2, 1, CURRENT_TIMESTAMP),
(2, 3, 2, CURRENT_TIMESTAMP),
(3, 4, 2, CURRENT_TIMESTAMP),
(5, 6, 3, CURRENT_TIMESTAMP),
(6, 67, 3, CURRENT_TIMESTAMP),
(7, 45, 4, CURRENT_TIMESTAMP),
(8, 34, 4, CURRENT_TIMESTAMP),
(9, 23, 5, CURRENT_TIMESTAMP),
(10, 13, 5, CURRENT_TIMESTAMP),
(1, 17, 1, CURRENT_TIMESTAMP),
(7, 31, 3, CURRENT_TIMESTAMP),
(12, 2, 1, CURRENT_TIMESTAMP),
(10, 3, 2, CURRENT_TIMESTAMP),
(7, 4, 2, CURRENT_TIMESTAMP),
(8, 6, 3, CURRENT_TIMESTAMP),
(8, 67, 3, CURRENT_TIMESTAMP),
(6, 45, 4, CURRENT_TIMESTAMP),
(6, 34, 4, CURRENT_TIMESTAMP),
(5, 23, 5, CURRENT_TIMESTAMP),
(11, 13, 5, CURRENT_TIMESTAMP),
(3, 17, 1, CURRENT_TIMESTAMP),
(4, 31, 3, CURRENT_TIMESTAMP),
(5, 4, 2, CURRENT_TIMESTAMP);




