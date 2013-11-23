-- Category
INSERT INTO web_shop_category (id, name) VALUES (1, 'Apple');

-- Condition
INSERT INTO web_shop_condition (id, condition) VALUES (1, 'New');
INSERT INTO web_shop_condition (id, condition) VALUES (2, 'Used');


-- User: admin (username) - admin (password)
INSERT INTO auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES
(100, 'pbkdf2_sha256$12000$UvU6oGn0A2o2$TbzlxQTVi3wQkC86Vmbm3eSLJNRBpMsk/1/vQkrQcgs=', '2013-11-21 21:32:44.384627+01', 't', 'admin', 'admin', 'admin', 'admin@shopit.at', 't', 't', '2013-11-21 21:32:44.384627+01');

-- Products
INSERT INTO web_shop_product (id, title, name, condition_id, quantity, price, description, category_id, image, saler_id) VALUES (100, 'Selling Mac', 'Mac Pro', 1, 3, 199.00, 'Mac', 1, 'images/products/2013/11/21/2013_mac_pro_6.jpg', 100);
