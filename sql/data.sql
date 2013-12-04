-- Category
INSERT INTO categories_category (id, parent_id, name, slug, active, lft, rght, tree_id, level, thumbnail, thumbnail_width, thumbnail_height, "order", alternate_title, alternate_url, description, meta_keywords, meta_extra) VALUES
(1, NULL , 'audio', 'audio', 't', 1, 2, 2, 0, 'uploads/categories/thumbnails/audio.png', 600, 600, 0, 'audio', ' ', ' ', ' ', ' ');
INSERT INTO categories_category (id, parent_id, name, slug, active, lft, rght, tree_id, level, thumbnail, thumbnail_width, thumbnail_height, "order", alternate_title, alternate_url, description, meta_keywords, meta_extra) VALUES
(4, NULL , 'cellphones', 'cellphones', 't', 1, 2, 3, 0, 'uploads/categories/thumbnails/cellphones.png', 500, 392, 0, 'cellphones', ' ', ' ', ' ', ' ');
INSERT INTO categories_category (id, parent_id, name, slug, active, lft, rght, tree_id, level, thumbnail, thumbnail_width, thumbnail_height, "order", alternate_title, alternate_url, description, meta_keywords, meta_extra) VALUES
(6, NULL , 'DVD BR', 'dvd-br', 't', 1, 2, 1, 0, 'uploads/categories/thumbnails/dvd-br.png', 490, 360, 0, 'DVD BR', ' ', ' ', ' ', ' ');
INSERT INTO categories_category (id, parent_id, name, slug, active, lft, rght, tree_id, level, thumbnail, thumbnail_width, thumbnail_height, "order", alternate_title, alternate_url, description, meta_keywords, meta_extra) VALUES
(3, NULL , 'ebooks', 'ebooks', 't', 1, 2, 5, 0, 'uploads/categories/thumbnails/ebooks.png', 693, 693, 0, 'ebooks', ' ', ' ', ' ', ' ');
INSERT INTO categories_category (id, parent_id, name, slug, active, lft, rght, tree_id, level, thumbnail, thumbnail_width, thumbnail_height, "order", alternate_title, alternate_url, description, meta_keywords, meta_extra) VALUES
(7, NULL , 'gaming', 'gaming', 't', 1, 2, 6, 0, 'uploads/categories/thumbnails/games.png', 385, 293, 0, 'gaming', ' ', ' ', ' ', ' ');
INSERT INTO categories_category (id, parent_id, name, slug, active, lft, rght, tree_id, level, thumbnail, thumbnail_width, thumbnail_height, "order", alternate_title, alternate_url, description, meta_keywords, meta_extra) VALUES
(8, NULL , 'computers', 'computers', 't', 1, 2, 4, 0, 'uploads/categories/thumbnails/computer.png', 1000, 945, 0, 'computers', ' ', ' ', ' ', ' ');
INSERT INTO categories_category (id, parent_id, name, slug, active, lft, rght, tree_id, level, thumbnail, thumbnail_width, thumbnail_height, "order", alternate_title, alternate_url, description, meta_keywords, meta_extra) VALUES
(2, NULL , 'tablets', 'tablets', 't', 1, 2, 8, 0, 'uploads/categories/thumbnails/best-tablets.png', 2499, 1967, 0, 'tablets', ' ', ' ', ' ', ' ');
INSERT INTO categories_category (id, parent_id, name, slug, active, lft, rght, tree_id, level, thumbnail, thumbnail_width, thumbnail_height, "order", alternate_title, alternate_url, description, meta_keywords, meta_extra) VALUES
(5, NULL , 'video', 'video', 't', 1, 2, 9, 0, 'uploads/categories/thumbnails/video.png', 683, 558, 0, 'video', ' ', ' ', ' ', ' ');
INSERT INTO categories_category (id, parent_id, name, slug, active, lft, rght, tree_id, level, thumbnail, thumbnail_width, thumbnail_height, "order", alternate_title, alternate_url, description, meta_keywords, meta_extra) VALUES
(9, NULL , 'software', 'software', 't', 1, 2, 7, 0, 'uploads/categories/thumbnails/software.png', 387, 432, 0, 'software', ' ', ' ', ' ', ' ');


-- accounts_userprofile
INSERT INTO accounts_userprofile (id, user_id) VALUES (1, 1);
INSERT INTO accounts_userprofile (id, user_id) VALUES (2, 2);

-- User: admin (username) - admin (password)
INSERT INTO auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES
(100, 'pbkdf2_sha256$12000$UvU6oGn0A2o2$TbzlxQTVi3wQkC86Vmbm3eSLJNRBpMsk/1/vQkrQcgs=', '2013-11-21 21:32:44.384627+01', 't', 'admin', 'admin', 'admin', 'admin@shopit.at', 't', 't', '2013-11-21 21:32:44.384627+01');

-- Condition
INSERT INTO web_shop_condition (id, condition) VALUES (1, 'New');
INSERT INTO web_shop_condition (id, condition) VALUES (2, 'Used');

-- Shipping method
INSERT INTO web_shop_shippingmethod (id, shipping_method) VALUES (1, 'normal post');

-- Products
INSERT INTO web_shop_product (id, title, name, condition_id, date_added, quantity, price, description, category_id, image, saler_id, on_stock, shipping_method_id, shipping_cost)
VALUES (1, 'Xbox One Console', 'Xbox One', 2, '2013-12-03', 3, 500.00, 'With Xbox One, you can quickly jump from TV to movies to music to a game.',
        7, 'images/products/2013/12/03/xbox_one.jpg', 100, 't', 1, 12.60);
INSERT INTO web_shop_product (id, title, name, condition_id, date_added, quantity, price, description, category_id, image, saler_id, on_stock, shipping_method_id, shipping_cost)
VALUES (2, 'PlayStation 4', 'PS4', 1, '2013-12-03', 1, 450.00, 'The official release date for the PlayStation 4 is November 15, 2013. Confirmed orders will arrive at your shipping address based on the shipping speed selected.',
        7, 'images/products/2013/12/03/ps4_2.jpg', 100, 't', 1, 12.60);
INSERT INTO web_shop_product (id, title, name, condition_id, date_added, quantity, price, description, category_id, image, saler_id, on_stock, shipping_method_id, shipping_cost)
VALUES (4, 'Battlefield 4 - Playstation 3', 'Battlefield 4', 1, '2013-12-03', 1, 54.00, 'Only in Battlefield can you change the landscape in real-time with interactive environments that react to your every move.',
        7, 'images/products/2013/12/03/battlefield_4.jpg', 100, 't', 1, 12.60);
INSERT INTO web_shop_product (id, title, name, condition_id, date_added, quantity, price, description, category_id, image, saler_id, on_stock, shipping_method_id, shipping_cost)
VALUES (3, 'Xbox One Console', 'Xbox One', 2, '2013-12-04', 1, 550.00, 'With Xbox One, you can quickly jump from TV to movies to music to a game.',
        7, 'images/products/2013/12/03/xbox_console.jpg', 100, 't', 1, 12.60);
INSERT INTO web_shop_product (id, title, name, condition_id, date_added, quantity, price, description, category_id, image, saler_id, on_stock, shipping_method_id, shipping_cost)
VALUES (5, 'At Games ATARI Flashback 3', 'ATARI', 2, '2013-12-04', 1, 58.00, '60 Built-In ATARI Games.',
        7, 'images/products/2013/12/03/atari.jpg', 100, 't', 1, 13.21);