CREATE TABLE category (
                          id BIGSERIAL NOT NULL PRIMARY KEY,
                          name VARCHAR(150) NOT NULL,
                          parent_id INTEGER
);

INSERT INTO category (name, parent_id) VALUES ('Транспорт', null);
INSERT INTO category (name, parent_id) VALUES ('Не транспорт', null);
INSERT INTO category (name, parent_id) VALUES ('Автомобили', (SELECT id FROM category WHERE name = 'Транспорт'));
INSERT INTO category (name, parent_id) VALUES ('Запчасти и аксессуары', (SELECT id FROM category WHERE name = 'Транспорт'));
INSERT INTO category (name, parent_id) VALUES ('Запчасти', (SELECT id FROM category WHERE name = 'Запчасти и аксессуары'));
INSERT INTO category (name, parent_id) VALUES ('Для автомобилей', (SELECT id FROM category WHERE name = 'Запчасти'));
INSERT INTO category (name, parent_id) VALUES ('Для мототехники', (SELECT id FROM category WHERE name = 'Запчасти'));
