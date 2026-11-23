SELECT * FROM orders;
SELECT * FROM order_items;
SELECT *
FROM orders
LEFT JOIN order_items
ON orders.order_id = order_items.order_id;

SELECT *
FROM orders
RIGHT JOIN order_items
ON orders.order_id = order_items.order_id;

SELECT *
FROM orders
INNER JOIN order_items
ON orders.order_id = order_items.order_id;

DELETE FROM order_items
WHERE order_id = 999;

ALTER TABLE order_items
ADD CONSTRAINT fk_order_items_orders
FOREIGN KEY (order_id)
REFERENCES orders(order_id);