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


-- User: admin (username) - admin (password)
INSERT INTO auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES
(1, 'pbkdf2_sha256$12000$UvU6oGn0A2o2$TbzlxQTVi3wQkC86Vmbm3eSLJNRBpMsk/1/vQkrQcgs=', '2013-11-21 21:32:44.384627+01', 't', 'admin', 'admin', 'admin', 'admin@shopit.at', 't', 't', '2013-11-21 21:32:44.384627+01');

-- accounts_userprofile
INSERT INTO accounts_userprofile (id, user_id) VALUES (1, 1);

-- Condition
INSERT INTO web_shop_condition (id, condition) VALUES (1, 'new');
INSERT INTO web_shop_condition (id, condition) VALUES (2, 'used');

-- Shipping method
INSERT INTO web_shop_shippingmethod (id, shipping_method) VALUES (1, 'normal post');

-- Products
INSERT INTO web_shop_product (id, title, name, condition_id, date_added, quantity, price, description, category_id, image, saler_id, on_stock, shipping_method_id, shipping_cost)
VALUES (1, 'Xbox One Console', 'Xbox One', 2, '2013-12-03', 3, 500.00, 'With Xbox One, you can quickly jump from TV to movies to music to a game.',
        7, 'images/products/2013/12/03/xbox_one.jpg', 1, 't', 1, 12.60);
INSERT INTO web_shop_product (id, title, name, condition_id, date_added, quantity, price, description, category_id, image, saler_id, on_stock, shipping_method_id, shipping_cost)
VALUES (2, 'PlayStation 4', 'PS4', 1, '2013-12-03', 1, 450.00, 'The official release date for the PlayStation 4 is November 15, 2013. Confirmed orders will arrive at your shipping address based on the shipping speed selected.',
        7, 'images/products/2013/12/03/ps4_2.jpg', 1, 't', 1, 12.60);
INSERT INTO web_shop_product (id, title, name, condition_id, date_added, quantity, price, description, category_id, image, saler_id, on_stock, shipping_method_id, shipping_cost)
VALUES (4, 'Battlefield 4 - Playstation 3', 'Battlefield 4', 1, '2013-12-03', 1, 54.00, 'Only in Battlefield can you change the landscape in real-time with interactive environments that react to your every move.',
        7, 'images/products/2013/12/03/battlefield_4.jpg', 1, 't', 1, 12.60);
INSERT INTO web_shop_product (id, title, name, condition_id, date_added, quantity, price, description, category_id, image, saler_id, on_stock, shipping_method_id, shipping_cost)
VALUES (3, 'Xbox One Console', 'Xbox One', 2, '2013-12-04', 1, 550.00, 'With Xbox One, you can quickly jump from TV to movies to music to a game.',
        7, 'images/products/2013/12/03/xbox_console.jpg', 1, 't', 1, 12.60);
INSERT INTO web_shop_product (id, title, name, condition_id, date_added, quantity, price, description, category_id, image, saler_id, on_stock, shipping_method_id, shipping_cost)
VALUES (5, 'At Games ATARI Flashback 3', 'ATARI', 2, '2013-12-04', 1, 58.00, '60 Built-In ATARI Games.',
        7, 'images/products/2013/12/03/atari.jpg', 1, 't', 1, 13.21);

-- Django Admin Log
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (1, '2013-12-03 23:52:09.187854+01', 1, 11, 1, 'audio', 1, ' ');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (2, '2013-12-03 23:52:49.808881+01', 1, 11, 2, 'tablets', 1, ' ');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (3, '2013-12-03 23:53:02.866035+01', 1, 11, 3, 'ebooks', 1, ' ');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (4, '2013-12-03 23:53:32.772051+01', 1, 11, 4, 'cellphones', 1, ' ');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (5, '2013-12-03 23:53:46.37251+01', 1, 11, 5, 'video', 1, ' ');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (6, '2013-12-03 23:54:02.81058+01', 1, 11, 6, 'DVD BR', 1, ' ');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (7, '2013-12-03 23:54:25.664459+01', 1, 11, 7, 'gaming', 1, ' ');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (8, '2013-12-03 23:54:44.008587+01', 1, 11, 8, 'computers', 1, ' ');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (9, '2013-12-03 23:55:16.117557+01', 1, 11, 9, 'software', 1, ' ');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (10, '2013-12-03 23:57:22.228659+01', 1, 7, 1, 'New', 1, ' ');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (11, '2013-12-03 23:57:36.316968+01', 1, 7, 2, 'used', 1, ' ');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (12, '2013-12-03 23:58:07.166666+01', 1, 8, 1, 'normal post', 1, ' ');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (13, '2013-12-03 23:58:27.919388+01', 1, 9, 1, 'Xbox One', 1, ' ');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (14, '2013-12-03 23:58:40.354577+01', 1, 7, 1, 'new', 2, 'Changed condition.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (15, '2013-12-04 00:07:15.733453+01', 1, 9, 2, 'PS4', 1, ' ');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (16, '2013-12-04 00:08:53.38645+01', 1, 9, 3, 'Xbox One', 1, ' ');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (17, '2013-12-04 00:11:24.557944+01', 1, 9, 4, 'Battlefield 4', 1, ' ');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (18, '2013-12-04 00:13:11.128921+01', 1, 9, 5, 'ATARI', 1, ' ');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (19, '2013-12-04 00:25:59.135253+01', 1, 4, 1, 'admin', 2, 'Changed first_name and last_name.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (20, '2013-12-04 18:50:00.29563+01', 1, 4, 1, 'admin', 2, 'Changed email.');


-- Fix sequences
ALTER SEQUENCE accounts_userprofile_id_seq RESTART WITH 3;
ALTER SEQUENCE auth_user_id_seq RESTART WITH 3;
ALTER SEQUENCE categories_category_id_seq RESTART WITH 10;
ALTER SEQUENCE django_admin_log_id_seq RESTART WITH 21;
ALTER SEQUENCE web_shop_condition_id_seq RESTART WITH 3;
ALTER SEQUENCE web_shop_product_id_seq RESTART WITH 6;
