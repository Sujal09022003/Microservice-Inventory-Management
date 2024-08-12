USE inventory;
CREATE TABLE itemss (
    id VARCHAR(50) PRIMARY KEY,
    naming  VARCHAR(100),
    quantity INT
);
select *from itemss;
CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    details TEXT
);
INSERT INTO itemss (id,naming, quantity) VALUES (1,'Item A', 100);
INSERT INTO itemss (id,naming, quantity) VALUES (2,'Item B', 50);
INSERT INTO itemss (id,naming, quantity) VALUES (3,'Item C', 200);

INSERT INTO orders (details) VALUES ('{"order_id": 1, "items": [{"id": 1, "name": "Item A", "quantity": 2}]}');
INSERT INTO orders (details) VALUES ('{"order_id": 2, "items": [{"id": 2, "name": "Item B", "quantity": 1}, {"id": 1, "name": "Item A", "quantity": 1}]}');

select *from orders

