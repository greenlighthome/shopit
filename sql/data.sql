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
INSERT INTO categories_category (id, parent_id, name, slug, active, lft, rght, tree_id, level, thumbnail, thumbnail_width, thumbnail_height, "order", alternate_title, alternate_url, description, meta_keywords, meta_extra) VALUES
(10, NULL, 'photo',	'photo', 't',	1, 2,	7, 0,	'uploads/categories/thumbnails/camera-lens-rotated_4.png', 340,	340, 0,	'photo', '', '', '', '');
INSERT INTO categories_category (id, parent_id, name, slug, active, lft, rght, tree_id, level, thumbnail, thumbnail_width, thumbnail_height, "order", alternate_title, alternate_url, description, meta_keywords, meta_extra) VALUES
(11,	NULL,	'video games', 'video-games',	't', 1,	2, 10, 0,	'uploads/categories/thumbnails/video-games_1.png',	800, 800,	0, 'video games', '', '', '', '');

-- User: admin (username) - admin (password)
INSERT INTO members_myuser (id, password, last_login, is_superuser, username, first_name, last_name, email, is_active, date_joined, year_of_birth, month_of_birth, day_of_birth) VALUES
(1, 'pbkdf2_sha256$12000$UvU6oGn0A2o2$TbzlxQTVi3wQkC86Vmbm3eSLJNRBpMsk/1/vQkrQcgs=', '2013-11-21 21:32:44.384627+01', 't', 'admin', 'admin', 'admin', 'admin@shopit.at', 't', '2013-11-21 21:32:44.384627+01', '1993', 'Feb', '9');

INSERT INTO members_myuser (id, password, last_login, is_superuser, username, first_name, last_name, email, is_active, date_joined, year_of_birth, month_of_birth, day_of_birth) VALUES
(200, 'pbkdf2_sha256$12000$NjD5m0yt28pS$U9+yfJ7G+rp77QDoqbt0jbhU18l8JnYWxsyoPgQbgD8=', '2013-12-08 04:55:41+01', 't', 'eddie', 'Eduardo', 'Da Silva', 'mr.brown.is.in.town@gmail.com', 't', '2013-12-08 04:55:41+01', '1993', 'Feb', '30');


-- Condition
INSERT INTO web_shop_condition (id, condition) VALUES (1, 'new');
INSERT INTO web_shop_condition (id, condition) VALUES (2, 'used');

-- Shipping method
INSERT INTO web_shop_shippingmethod (id, shipping_method) VALUES (1, 'normal post');
INSERT INTO web_shop_shippingmethod (id, shipping_method) VALUES (2, 'express');

-- Products
INSERT INTO web_shop_product (id, title, name, condition_id, date_added, quantity, price, description, category_id, image, saler_id, on_stock, shipping_method_id, shipping_cost)
VALUES (1, 'Xbox One Console', 'Xbox One', 2, '2013-12-03', 3, 500.00, 'With Xbox One, you can quickly jump from TV to movies to music to a game.',
        7, 'images/products/2013/12/03/xbox_one.jpg', 1, 't', 1, 12.60);
INSERT INTO web_shop_product (id, title, name, condition_id, date_added, quantity, price, description, category_id, image, saler_id, on_stock, shipping_method_id, shipping_cost)
VALUES (2, 'PlayStation 4', 'PS4', 1, '2013-12-03', 1, 450.00, 'The official release date for the PlayStation 4 is November 15, 2013. Confirmed orders will arrive at your shipping address based on the shipping speed selected.',
        7, 'images/products/2013/12/03/ps4_2.jpg', 1, 't', 1, 12.60);
INSERT INTO web_shop_product (id, title, name, condition_id, date_added, quantity, price, description, category_id, image, saler_id, on_stock, shipping_method_id, shipping_cost)
VALUES (4, 'Battlefield 4 - Playstation 3', 'Battlefield 4', 1, '2013-12-03', 1, 54.00, 'Only in Battlefield can you change the landscape in real-time with interactive environments that react to your every move.',
        11, 'images/products/2013/12/03/battlefield_4.jpg', 1, 't', 1, 12.60);
INSERT INTO web_shop_product (id, title, name, condition_id, date_added, quantity, price, description, category_id, image, saler_id, on_stock, shipping_method_id, shipping_cost)
VALUES (3, 'Xbox One Console', 'Xbox One', 2, '2013-12-04', 1, 550.00, 'With Xbox One, you can quickly jump from TV to movies to music to a game.',
        7, 'images/products/2013/12/03/xbox_console.jpg', 1, 't', 1, 12.60);
INSERT INTO web_shop_product (id, title, name, condition_id, date_added, quantity, price, description, category_id, image, saler_id, on_stock, shipping_method_id, shipping_cost)
VALUES (5, 'At Games ATARI Flashback 3', 'ATARI', 2, '2013-12-04', 1, 58.00, '60 Built-In ATARI Games.',
        7, 'images/products/2013/12/03/atari.jpg', 1, 't', 1, 13.21);
INSERT INTO web_shop_product (id, title, name, condition_id, date_added, quantity, price, description, category_id, image, saler_id, on_stock, shipping_method_id, shipping_cost)
VALUES (6,	'Nikon D80 10.2MP Digital SLR Camera (Body only)',	'Nikon D80', 	'2',	'2014-01-09',	'1',	'435.00',	'10.2-megapixel CCD captures enough detail for large, photo-quality prints\r\nBody only; lens must be purchased separately\r\n2.5-inch LCD display; power-up time of approximately 0.2 seconds\r\nRAW and JPEG capture; burst mode allows for capture of three frames per second for up to 100 pictures\r\nImage optimization functions and in-camera image retouching',	10,	'images/products/2014/01/09/d80.jpg',	200,	't',	1,	5.50);

INSERT INTO web_shop_product (id, title, name, condition_id, date_added, quantity, price, description, category_id, image, saler_id, on_stock, shipping_method_id, shipping_cost)
VALUES (7,	'Canon EOS Rebel T3 12.2 MP CMOS Digital SLR with 18-55mm IS II Lens', 'Canon EOS Rebel',	2, '2014-01-09',	1,	'399.00',	'2.2 MP CMOS sensor and DIGIC 4 Image Processor for high image quality and speed.\r\nISO 100 - 6400 for shooting from bright to dim light.\r\nImproved EOS HD Movie mode with expanded recording and with in-camera video editing options.\r\nHigh speed, reliable 9-point AF system utilizing a high precision, f/5.6 cross-type center point.\r\nEnhanced metering with a 63-zone, Dual-layer metering system for accurate metering between exposures.',	10,	'images/products/2014/01/09/rebel.jpg',	200, 't',	1,	5.50);

INSERT INTO web_shop_product (id, title, name, condition_id, date_added, quantity, price, description, category_id, image, saler_id, on_stock, shipping_method_id, shipping_cost)
VALUES (8, 'Super Mario 3D Land',	'Super Mario Land',	2, '2014-01-10', 1,	20.00, 'Mario can perform a rolling somersault attack or run fast with a dash move. Or, as Tanooki Mario, he can use his tail to hover, perform floating jumps or attacks.\r\nNew enemies include Goombas with tails, tall stacks of Goombas and a Piranha Plant that spits ink to obscure a players view.\r\nNew and familiar abilities add unique game-play strategies to the adventure\r\n3D visuals make it easier for players to judge the depths and distances in their environments. Players can more accurately judge the jump to the next platform or how far Mario is from a question block.\r\nThe Circle Pad gives players complete control to confidently move Mario through fun and challenging environments.',	11,	'images/products/2014/01/10/mario_land_2.jpg', 1,	't', 1,	5.50);

INSERT INTO web_shop_product (id, title, name, condition_id, date_added, quantity, price, description, category_id, image, saler_id, on_stock, shipping_method_id, shipping_cost)
VALUES (9, 'Halo 3 - Xbox 360',	'Halo 3',	2, '2014-01-10', 1,	10.00, 'Expands on the franchise and adds a wealth of technical and gameplay advancements\r\nUnparalleled first-person shooter experience and the most compelling story of the trilogy\r\nBuilds upon the social multiplayer experience and innovative, evolving, online gameplay of Halo 2\r\nLoaded with high-definition visuals, enhanced AI, an advanced lighting engine, new weapons, characters, and challenges\r\n',	11,	'images/products/2014/01/10/hallo_xbox.jpg', 200,	't', 1,	3.60);

INSERT INTO web_shop_product (id, title, name, condition_id, date_added, quantity, price, description, category_id, image, saler_id, on_stock, shipping_method_id, shipping_cost)
VALUES (10,	'Harman Kardon SoundSticks Wireless Bluetooth Enabled 2.1',	'Harman Kardon SoundSticks', 1,	'2014-01-10',	2, 229.00, 'Integrated Bluetooth technology for high performance wireless connectivity\r\n6-Inch (150mm) down-firing subwoofer for deep bass\r\nEight full-range transducers for crystal clear sound\r\nElegant touch controls for volume and mute\r\nAwe-inspiring industrial design\r\n1/8-Inch (3.5mm) stereo audio connection',	1, 'images/products/2014/01/10/soundsticks.jpg', 200,	't', 1,	12.00);

INSERT INTO web_shop_product (id, title, name, condition_id, date_added, quantity, price, description, category_id, image, saler_id, on_stock, shipping_method_id, shipping_cost)
VALUES (11,	'Audio Technica AT-LP60USB Fully Automatic Belt Driven Turntable with USB Port', 'Audio Technica AT-LP60USB', 2, '2014-01-10', 1,	99.00, 'USB output: no special drivers required for direct connection to your computer (USB port located on back of item)\r\nBuilt-in switchable stereo phono/line level pre-amplifier. Permits use of turntable with stereo systems having either magnetic-phono inputs\r\nPC & Mac compatible\r\nFully automatic operation keeps LPs scratch free\r\nTwo speeds: 33 1/3 rpm and 45 rpm\r\n2 speed turntable - 33 1/3 and 45 RPM\r\n',	1, 'images/products/2014/01/10/turn-table.jpg',	200, 't',	2, 13.55);



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
--ALTER SEQUENCE accounts_userprofile_id_seq RESTART WITH 3;
ALTER SEQUENCE auth_user_id_seq RESTART WITH 3;
ALTER SEQUENCE categories_category_id_seq RESTART WITH 10;
ALTER SEQUENCE django_admin_log_id_seq RESTART WITH 21;
ALTER SEQUENCE web_shop_condition_id_seq RESTART WITH 3;
ALTER SEQUENCE web_shop_product_id_seq RESTART WITH 6;
