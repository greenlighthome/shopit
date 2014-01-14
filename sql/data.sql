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
(7, NULL , 'gaming consoles', 'gaming-consoles', 't', 1, 2, 6, 0, 'uploads/categories/thumbnails/video-game-consoles.png', 385, 293, 0, 'gaming', ' ', ' ', ' ', ' ');
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
(100, 'pbkdf2_sha256$12000$UvU6oGn0A2o2$TbzlxQTVi3wQkC86Vmbm3eSLJNRBpMsk/1/vQkrQcgs=', '2013-11-21 21:32:44.384627+01', 't', 'admin', 'admin', 'admin', 'admin@shopit.at', 't', '2013-11-21 21:32:44.384627+01', '1993', 'Feb', '9');

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
        7, 'images/products/2013/12/03/xbox_one.jpg', 100, 't', 1, 12.60);
INSERT INTO web_shop_product (id, title, name, condition_id, date_added, quantity, price, description, category_id, image, saler_id, on_stock, shipping_method_id, shipping_cost)
VALUES (2, 'PlayStation 4', 'PS4', 1, '2013-12-03', 1, 450.00, 'The official release date for the PlayStation 4 is November 15, 2013. Confirmed orders will arrive at your shipping address based on the shipping speed selected.',
        7, 'images/products/2013/12/03/ps4_2.jpg', 100, 't', 1, 12.60);
INSERT INTO web_shop_product (id, title, name, condition_id, date_added, quantity, price, description, category_id, image, saler_id, on_stock, shipping_method_id, shipping_cost)
VALUES (4, 'Battlefield 4 - Playstation 3', 'Battlefield 4', 1, '2013-12-03', 1, 54.00, 'Only in Battlefield can you change the landscape in real-time with interactive environments that react to your every move.',
        11, 'images/products/2013/12/03/battlefield_4.jpg', 100, 't', 1, 12.60);
INSERT INTO web_shop_product (id, title, name, condition_id, date_added, quantity, price, description, category_id, image, saler_id, on_stock, shipping_method_id, shipping_cost)
VALUES (3, 'Xbox One Console', 'Xbox One', 2, '2013-12-04', 1, 550.00, 'With Xbox One, you can quickly jump from TV to movies to music to a game.',
        7, 'images/products/2013/12/03/xbox_console.jpg', 100, 't', 1, 12.60);
INSERT INTO web_shop_product (id, title, name, condition_id, date_added, quantity, price, description, category_id, image, saler_id, on_stock, shipping_method_id, shipping_cost)
VALUES (5, 'At Games ATARI Flashback 3', 'ATARI', 2, '2013-12-04', 1, 58.00, '60 Built-In ATARI Games.',
        7, 'images/products/2013/12/03/atari.jpg', 100, 't', 1, 13.21);
INSERT INTO web_shop_product (id, title, name, condition_id, date_added, quantity, price, description, category_id, image, saler_id, on_stock, shipping_method_id, shipping_cost)
VALUES (6,	'Nikon D80 10.2MP Digital SLR Camera (Body only)',	'Nikon D80', 	'2',	'2014-01-09',	'1',	'435.00',	'10.2-megapixel CCD captures enough detail for large, photo-quality prints\r\nBody only; lens must be purchased separately\r\n2.5-inch LCD display; power-up time of approximately 0.2 seconds\r\nRAW and JPEG capture; burst mode allows for capture of three frames per second for up to 100 pictures\r\nImage optimization functions and in-camera image retouching',	10,	'images/products/2014/01/09/d80.jpg',	200,	't',	1,	5.50);

INSERT INTO web_shop_product (id, title, name, condition_id, date_added, quantity, price, description, category_id, image, saler_id, on_stock, shipping_method_id, shipping_cost)
VALUES (7,	'Canon EOS Rebel T3 12.2 MP CMOS Digital SLR with 18-55mm IS II Lens', 'Canon EOS Rebel',	2, '2014-01-09',	1,	'399.00',	'2.2 MP CMOS sensor and DIGIC 4 Image Processor for high image quality and speed.\r\nISO 100 - 6400 for shooting from bright to dim light.\r\nImproved EOS HD Movie mode with expanded recording and with in-camera video editing options.\r\nHigh speed, reliable 9-point AF system utilizing a high precision, f/5.6 cross-type center point.\r\nEnhanced metering with a 63-zone, Dual-layer metering system for accurate metering between exposures.',	10,	'images/products/2014/01/09/rebel.jpg',	200, 't',	1,	5.50);

INSERT INTO web_shop_product (id, title, name, condition_id, date_added, quantity, price, description, category_id, image, saler_id, on_stock, shipping_method_id, shipping_cost)
VALUES (8, 'Super Mario 3D Land',	'Super Mario Land',	2, '2014-01-10', 20,	20.00, 'Mario can perform a rolling somersault attack or run fast with a dash move. Or, as Tanooki Mario, he can use his tail to hover, perform floating jumps or attacks.\r\nNew enemies include Goombas with tails, tall stacks of Goombas and a Piranha Plant that spits ink to obscure a players view.\r\nNew and familiar abilities add unique game-play strategies to the adventure\r\n3D visuals make it easier for players to judge the depths and distances in their environments. Players can more accurately judge the jump to the next platform or how far Mario is from a question block.\r\nThe Circle Pad gives players complete control to confidently move Mario through fun and challenging environments.',	11,	'images/products/2014/01/10/mario_land_2.jpg', 100,	't', 1,	5.50);

INSERT INTO web_shop_product (id, title, name, condition_id, date_added, quantity, price, description, category_id, image, saler_id, on_stock, shipping_method_id, shipping_cost)
VALUES (9, 'Halo 3 - Xbox 360',	'Halo 3',	2, '2014-01-10', 1,	10.00, 'Expands on the franchise and adds a wealth of technical and gameplay advancements\r\nUnparalleled first-person shooter experience and the most compelling story of the trilogy\r\nBuilds upon the social multiplayer experience and innovative, evolving, online gameplay of Halo 2\r\nLoaded with high-definition visuals, enhanced AI, an advanced lighting engine, new weapons, characters, and challenges\r\n',	11,	'images/products/2014/01/10/hallo_xbox.jpg', 200,	't', 1,	3.60);

INSERT INTO web_shop_product (id, title, name, condition_id, date_added, quantity, price, description, category_id, image, saler_id, on_stock, shipping_method_id, shipping_cost)
VALUES (10,	'Harman Kardon SoundSticks Wireless Bluetooth Enabled 2.1',	'Harman Kardon SoundSticks', 1,	'2014-01-10',	2, 229.00, 'Integrated Bluetooth technology for high performance wireless connectivity\r\n6-Inch (150mm) down-firing subwoofer for deep bass\r\nEight full-range transducers for crystal clear sound\r\nElegant touch controls for volume and mute\r\nAwe-inspiring industrial design\r\n1/8-Inch (3.5mm) stereo audio connection',	1, 'images/products/2014/01/10/soundsticks.jpg', 200,	't', 1,	12.00);

INSERT INTO web_shop_product (id, title, name, condition_id, date_added, quantity, price, description, category_id, image, saler_id, on_stock, shipping_method_id, shipping_cost)
VALUES (11,	'Audio Technica AT-LP60USB Fully Automatic Belt Driven Turntable with USB Port', 'Audio Technica AT-LP60USB', 2, '2014-01-10', 1,	99.00, 'USB output: no special drivers required for direct connection to your computer (USB port located on back of item)\r\nBuilt-in switchable stereo phono/line level pre-amplifier. Permits use of turntable with stereo systems having either magnetic-phono inputs\r\nPC & Mac compatible\r\nFully automatic operation keeps LPs scratch free\r\nTwo speeds: 33 1/3 rpm and 45 rpm\r\n2 speed turntable - 33 1/3 and 45 RPM\r\n',	1, 'images/products/2014/01/10/turn-table.jpg',	200, 't',	2, 13.55);

INSERT INTO web_shop_product (id, title, name, condition_id, date_added, quantity, price, description, category_id, image, saler_id, on_stock, shipping_method_id, shipping_cost)
VALUES(12,	'Apple MacBook Pro ME293LL/A 15.4-Inch Laptop with Retina Display',	'Apple MacBook Pro 15"',	1,	'2014-01-14',	3,	1200.00,	'2.0GHz quad-core Intel Core i7 processor (Turbo Boost up to 3.2GHz) with 6MB shared L3 cache\r\n256GB PCIe-based flash storage; 8GB 1600MHz DDR3L onboard memory\r\n15.4-inch (diagonal) Retina display, 2880x1800 pixel Resolution; LED-backlit with IPS technology\r\nIntel Iris Pro Graphics ; 802.11ac Wi-Fi wireless networking\r\nMac OS X Mavericks, Up to 8 hours of battery life',	8,	'/products/2014/01/14/macpro.jpg',	200,	't',	1,	15.00);

INSERT INTO web_shop_product (id, title, name, condition_id, date_added, quantity, price, description, category_id, image, saler_id, on_stock, shipping_method_id, shipping_cost)
VALUES(13,	'Microsoft Surface Pro Tablet (128 GB Memory, 4 GB RAM, Windows 8 Pro)',	'Microsoft Surface Pro Tablet', 	2,	'2014-01-14',	2,	500.00,	'3rd generation Intel Core i5 Processor with Intel HD Graphics 4000;Windows 8 Pro\r\n4GB Ram Dual Channel Memory; Screen: 10.6" ClearType HD Display, Resolution: 1920x1080, Aspect Ratio: 16:9 (widescreen), Touch: 10-point multi-touch\r\nTwo 720p HD cameras, front and rear-facing; Wi-Fi (802.11a/b/g/n), Bluetooth 4.0 low energy technology\r\n128 GB (approximately 89 GB available for user content)\r\nFull-size USB 3.0, microSDXC card reader, Headset jack, MiniDisplay port, Cover port; Ambient light sensor, Accelerometer, Gyroscope, Magnetometer',	2,	'images/products/2014/01/14/surface.jpg',	100,	't',	1,	14.38);

INSERT INTO web_shop_product (id, title, name, condition_id, date_added, quantity, price, description, category_id, image, saler_id, on_stock, shipping_method_id, shipping_cost)
VALUES(14,	'Samsung I9000 Galaxy S', 	'Samsung I9000 Galaxy S', 	2,	'2014-01-14',	1,	75.00,	'Network: HSUPA 900/1900/2100, EDGE/GPRS 850/900/1800/1900. Samsung Android 2.1 (Eclair). Android Samsung UI (Multiple Homescreens). Processor: 1GHz CPU Speed. Dimension: 64.2 X 122.4 X 9.9 mm (119g)\r\nMemory: MicroSD(Up to 32GB). Android Browser: Flash Lite3.1. Display: 4.0? WVGA(480x800) 16M SUPER AMOLED, mDNIe(Mobile Digital Natural Image engine). Multi-touch zoom. Light sensor, Accelerometer sensor, Proximity Sensor, Digital Compass.\r\nCamera: 5.0 Megapixel AF camera, Self Shot, Action Shot, Add me, Cartoon Shot, Smile Shot. Video: HD Video Player & Recorder (1280 x 720) @ 30fps codec: DivX, XviD, MPEG4, H.263, H.264, WMV, VC-1 format: 3gp(mp4), AVI(divx), MKV, FLV, H.263Sorenson\r\nMusic: Music Player with SoundAlive. 3.5mm Ear Jack. MP3/AAC/AAC+/eAAC+/OGG/WMA/AMR-NB/AMR-WB/WAV/MID/AC3/IMY/FLAC/XMF\r\nBattery (Standard) Li-pol, 1,500mAh, Talk time : 2G/769 minutes, 3G/391 minutes, Standby : 2G/750 hours, 3G/625 hours',	4,	'images/products/2014/01/14/galaxyS.jpg',	100,	't',	1,	5.50)

INSERT INTO web_shop_product (id, title, name, condition_id, date_added, quantity, price, description, category_id, image, saler_id, on_stock, shipping_method_id, shipping_cost)
VALUES(15,	'Apple iPad mini MD531LL/A (16GB, Wi-Fi, White / Silver)',	'Apple iPad mini',	1,	'2014-01-14',	2,	300.00,	'7.9-inch LED-backlit Multi-Touch Display; 1024-by-768 Resolution\r\nApple iOS 6; Dual-Core A5 Chip 1GHZ\r\n5 MP iSight Camera; 1080p HD Video Recording\r\nWi-Fi (802.11a/b/g/n); 16 GB Capacity\r\nUp to 10 Hours of Battery Life; 0.68 lbs',	2,	'images/products/2014/01/14/ipad_mini.jpg',	200,	't',	1,	12.30);

INSERT INTO web_shop_product (id, title, name, condition_id, date_added, quantity, price, description, category_id, image, saler_id, on_stock, shipping_method_id, shipping_cost)
VALUES(16,	'Office Mac Home and Student 2011 - 1PC/1User', 	'Office Mac Home and Student 2011',	1,	'2014-01-14',	2,	110.06,	'Create visually rich newsletters, brochures, and more\r\nOrganize, analyze, and share your data and lists\r\nIncrease efficiency and save time by automating repetitive tasks\r\nSimultaneously edit a file with multiple authors in different locations\r\nPost, access, edit, and share your files from virtually anywhere',	9,	'images/products/2014/01/14/office.jpg',	200,	't',	2,	12.30);

INSERT INTO web_shop_product (id, title, name, condition_id, date_added, quantity, price, description, category_id, image, saler_id, on_stock, shipping_method_id, shipping_cost)
VALUES(17,	'Bad Piggies Premium HD',	'Bad Piggies Premium HD',	1,	'2014-01-14',	3,	1.08,	 '60 levels crammed with flying/driving/crashing fun!\r\n\r\n• 30 additional puzzles unlocked by three-starring levels!\r\n\r\n• Free updates!\r\n\r\n• 4 sandbox levels to stretch your creativity!\r\n\r\n• Ultra-special, ultra-secret, ultra-difficult sandbox level to unlock by collecting all the skulls!\r\n\r\n• 33 objects to create the ultimate machine: motors, wings, fans, bottle rockets, umbrellas, balloons, and much more!',	9, 'images/products/2014/01/14/bad_piggies.png',	200, 't', 1, 0.00);

INSERT INTO web_shop_product (id, title, name, condition_id, date_added, quantity, price, description, category_id, image, saler_id, on_stock, shipping_method_id, shipping_cost)
VALUES(18,	'Angry Birds',	'Angry Birds',	1,	'2014-01-14',	12,	0.99,	'PLEASE NOTE: This app lets you purchase digital content using actual money. You can configure parental controls for in-app purchases, which will require your Amazon account password or a 4-digit PIN, by going to the Settings menu from within the Amazon Appstore.\r\n\r\nAlso please note: This version requires Wi-Fi to download.\r\n\r\nThe survival of the Angry Birds is at stake. Dish out revenge on the green pigs who stole the Birds eggs. Use the unique destructive powers of the Angry Birds to lay waste to the pigs fortified castles. Angry Birds features hours of gameplay, challenging physics-based castle demolition, lots of replay value, and Twitter and Facebook integration. Play more than 300 levels requiring logic, skill, and brute force to crush the enemy.\r\n\r\nYour job is to help the Angry Birds seek vengeance against the pigs with the help of a finger-powered slingshot, a good dose of strategy, and a bit of luck.\r\n\r\nThe goal of the game is to catapult each bird toward the pigs, who hide behind a variety of destructible materials. Use each birds unique skills to break through crates, boards, stone, ice, snow, glass, boulders, and dynamite to vanquish the devious pigs.\r\n\r\n(This free version of the game is ad-supported. Purchase the full version of Angry Birds to enjoy the game without advertisements.',	9,	'images/products/2014/01/14/angry_birds.png',	200,	't',	2,	0.00);


-- Django Admin Log
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (1, '2013-12-03 23:52:09.187854+01', 100, 11, 1, 'audio', 1, ' ');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (2, '2013-12-03 23:52:49.808881+01', 100, 11, 2, 'tablets', 1, ' ');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (3, '2013-12-03 23:53:02.866035+01', 100, 11, 3, 'ebooks', 1, ' ');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (4, '2013-12-03 23:53:32.772051+01', 100, 11, 4, 'cellphones', 1, ' ');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (5, '2013-12-03 23:53:46.37251+01', 100, 11, 5, 'video', 1, ' ');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (6, '2013-12-03 23:54:02.81058+01', 100, 11, 6, 'DVD BR', 1, ' ');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (7, '2013-12-03 23:54:25.664459+01', 100, 11, 7, 'gaming', 1, ' ');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (8, '2013-12-03 23:54:44.008587+01', 100, 11, 8, 'computers', 1, ' ');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (9, '2013-12-03 23:55:16.117557+01', 100, 11, 9, 'software', 1, ' ');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (10, '2013-12-03 23:57:22.228659+01', 100, 7, 1, 'New', 1, ' ');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (11, '2013-12-03 23:57:36.316968+01', 100, 7, 2, 'used', 1, ' ');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (12, '2013-12-03 23:58:07.166666+01', 100, 8, 1, 'normal post', 1, ' ');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (13, '2013-12-03 23:58:27.919388+01', 100, 9, 1, 'Xbox One', 1, ' ');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (14, '2013-12-03 23:58:40.354577+01', 100, 7, 1, 'new', 2, 'Changed condition.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (15, '2013-12-04 00:07:15.733453+01', 100, 9, 2, 'PS4', 1, ' ');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (16, '2013-12-04 00:08:53.38645+01', 100, 9, 3, 'Xbox One', 1, ' ');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (17, '2013-12-04 00:11:24.557944+01', 100, 9, 4, 'Battlefield 4', 1, ' ');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (18, '2013-12-04 00:13:11.128921+01', 100, 9, 5, 'ATARI', 1, ' ');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (19, '2013-12-04 00:25:59.135253+01', 100, 4, 1, 'admin', 2, 'Changed first_name and last_name.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (20, '2013-12-04 18:50:00.29563+01', 100, 4, 1, 'admin', 2, 'Changed email.');

-- Fix sequences
ALTER SEQUENCE categories_category_id_seq RESTART WITH 100;
ALTER SEQUENCE django_admin_log_id_seq RESTART WITH 21;
ALTER SEQUENCE web_shop_condition_id_seq RESTART WITH 3;
ALTER SEQUENCE web_shop_product_id_seq RESTART WITH 100;
