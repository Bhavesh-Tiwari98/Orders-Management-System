INSERT INTO Category (category_id, category_name, description) VALUES
(1,'Electronics', 'Devices for personal and home use.'),
(2,'Apparel', 'Clothing and fashion items.'),
(3,'Books', 'Literary works across various genres.'),
(4,'Home & Kitchen', 'Items for household and cooking needs.'),
(5,'Sports & Outdoors', 'Equipment for sports and outdoor activities.'),
(6,'Beauty & Personal Care', 'Products for hygiene and grooming.'),
(7,'Toys & Games', 'Items for entertainment and play.'),
(8,'Automotive', 'Parts and accessories for vehicles.'),
(9,'Pet Supplies', 'Products for animal care.'),
(10,'Health & Wellness', 'Supplements and personal health items.'),
(11,'Groceries', 'Food and beverage items.'),
(12,'Office Supplies', 'Products for study and work.'),
(13,'Jewelry', 'Fashion accessories and precious items.'),
(14,'Baby Products', 'Items for infants and toddlers.'),
(15,'Music', 'Audio recordings and instruments.'),
(16,'Movies', 'Films and video content.'),
(17,'Software', 'Computer programs and applications.'),
(18,'Hardware', 'Computer components and tools.'),
(19,'Garden & Tools', 'Equipment for gardening and home improvement.'),
(20,'Crafts & Hobbies', 'Materials for creative projects.');

INSERT INTO Product (product_id, product_name, description, price, stock_quantity, category_id) VALUES
(1, 'Laptop Pro X', 'High-performance laptop with 16GB RAM, 512GB SSD.', 1200.00, 50, 1), 
(2, 'Wireless Headphones', 'Noise-cancelling, Bluetooth headphones with 24-hour battery.', 150.00, 120, 1),
(3, 'Smartwatch Fitness', 'Tracks heart rate, steps, and sleep. Water-resistant.', 80.00, 200, 1), 
(4, 'T-Shirt Cotton Blend', 'Soft and breathable cotton blend t-shirt, unisex.', 25.00, 500, 2),
(5, 'Jeans Slim Fit', 'Classic blue denim jeans, slim fit style.', 55.00, 150, 2), 
(6, 'Summer Dress Floral', 'Lightweight floral print summer dress, various sizes.', 45.00, 100, 2), 
(7, 'The Great Adventure', 'Epic fantasy novel, first in a series.', 15.99, 300, 3),
(8, 'Cookbook Italian Cuisine', 'Recipes for traditional Italian dishes.', 22.50, 80, 3), 
(9, 'Coffee Maker Drip', '12-cup programmable drip coffee maker.', 49.99, 75, 4), 
(10, 'Blender High Power', '1200W blender with multiple speed settings.', 99.00, 60, 4),
(11, 'Yoga Mat Premium', 'Non-slip, extra thick yoga mat for all levels.', 30.00, 90, 5), 
(12, 'Camping Tent 2-Person', 'Lightweight and waterproof tent for two.', 120.00, 40, 5),
(13, 'Sunscreen SPF 50', 'Water-resistant broad-spectrum sunscreen.', 12.00, 180, 6), 
(14, 'Organic Shampoo', 'Natural ingredients, suitable for all hair types.', 18.00, 100, 6), 
(15, 'Building Blocks Set', 'Large set of colorful building blocks for kids.', 35.00, 110, 7), 
(16, 'Remote Control Car', 'High-speed RC car with rechargeable battery.', 60.00, 70, 7), 
(17, 'Car Air Freshener', 'Long-lasting car air freshener, new car scent.', 5.00, 300, 8), 
(18, 'Dog Food Grain-Free', 'Premium grain-free dry dog food, 10lb bag.', 40.00, 90, 9),
(19, 'Vitamin C Supplements', 'High potency Vitamin C, 100 count.', 20.00, 150, 10),   
(20, 'Wireless Mouse Ergonomic', 'Comfortable ergonomic wireless mouse.', 29.99, 250, 12);

INSERT INTO Customer_Order (order_id, customer_id, order_date, total_amount, status) VALUES
(1, 1, '2023-01-10 10:30:00', 1200.00, 'Completed'),
(2, 2, '2023-01-15 14:00:00', 150.00, 'Pending'),
(3, 3, '2023-01-20 09:45:00', 80.00, 'Completed'),
(4, 4, '2023-02-01 11:15:00', 55.00, 'Processing'),
(5, 5, '2023-02-05 16:20:00', 45.00, 'Completed'),
(6, 6, '2023-02-10 13:00:00', 15.99, 'Shipped'),
(7, 7, '2023-02-15 10:00:00', 22.50, 'Completed'),
(8, 8, '2023-03-01 09:00:00', 49.99, 'Completed'),
(9, 9, '2023-03-05 17:30:00', 99.00, 'Pending'),
(10, 10, '2023-03-10 11:00:00', 30.00, 'Shipped'),
(11, 11, '2023-03-15 12:45:00', 120.00, 'Completed'),
(12, 12, '2023-04-01 15:00:00', 12.00, 'Processing'),
(13, 13, '2023-04-05 10:00:00', 18.00, 'Completed'),
(14, 14, '2023-04-10 14:00:00', 35.00, 'Shipped'),
(15, 15, '2023-04-15 09:30:00', 60.00, 'Completed'),
(16, 16, '2023-05-01 16:00:00', 5.00, 'Completed'),
(17, 17, '2023-05-05 11:00:00', 40.00, 'Pending'),
(18, 18, '2023-05-10 13:00:00', 20.00, 'Shipped'),
(19, 19, '2023-05-15 10:00:00', 29.99, 'Completed'),
(20, 20, '2023-06-01 12:00:00', 25.00, 'Completed');

INSERT INTO Payment (payment_id, order_id, payment_date, amount, payment_method, transaction_id) VALUES
(1, 1, '2023-01-10 10:35:00', 1200.00, 'Credit Card', 'TXN123456789'),
(2, 2, '2023-01-15 14:05:00', 150.00, 'PayPal', 'TXN987654321'),
(3, 3, '2023-01-20 09:50:00', 80.00, 'Credit Card', 'TXN112233445'),
(4, 4, '2023-02-01 11:20:00', 55.00, 'Debit Card', 'TXN667788990'),
(5, 5, '2023-02-05 16:25:00', 45.00, 'PayPal', 'TXN001122334'),
(6, 6, '2023-02-10 13:05:00', 15.99, 'Credit Card', 'TXN556677889'),
(7, 7, '2023-02-15 10:05:00', 22.50, 'Debit Card', 'TXN990011223'),
(8, 8, '2023-03-01 09:05:00', 49.99, 'Credit Card', 'TXN445566778'),
(9, 9, '2023-03-05 17:35:00', 99.00, 'PayPal', 'TXN889900112'),
(10, 10, '2023-03-10 11:05:00', 30.00, 'Debit Card', 'TXN334455667'),
(11, 11, '2023-03-15 12:50:00', 120.00, 'Credit Card', 'TXN778899001'),
(12, 12, '2023-04-01 15:05:00', 12.00, 'PayPal', 'TXN223344556'),
(13, 13, '2023-04-05 10:05:00', 18.00, 'Credit Card', 'TXN667788991'),
(14, 14, '2023-04-10 14:05:00', 35.00, 'Debit Card', 'TXN001122335'),
(15, 15, '2023-04-15 09:35:00', 60.00, 'PayPal', 'TXN556677890'),
(16, 16, '2023-05-01 16:05:00', 5.00, 'Credit Card', 'TXN990011224'),
(17, 17, '2023-05-05 11:05:00', 40.00, 'Debit Card', 'TXN445566779'),
(18, 18, '2023-05-10 13:05:00', 20.00, 'PayPal', 'TXN889900113'),
(19, 19, '2023-05-15 10:05:00', 29.99, 'Credit Card', 'TXN334455668'),
(20, 20, '2023-06-01 12:05:00', 25.00, 'Debit Card', 'TXN778899002');

INSERT INTO Order_Details (order_detail_id, order_id, product_id, quantity, orderprice) VALUES
(1, 1, 1, 1, 1200.00),
(2, 2, 2, 1, 150.00), 
(3, 3, 3, 1, 80.00), 
(4, 4, 5, 1, 55.00), 
(5, 5, 6, 1, 45.00), 
(6, 6, 7, 1, 15.99),
(7, 7, 8, 1, 22.50),
(8, 8, 9, 1, 49.99), 
(9, 9, 10, 1, 99.00), 
(10, 10, 11, 1, 30.00),
(11, 11, 12, 1, 120.00), 
(12, 12, 13, 1, 12.00), 
(13, 13, 14, 1, 18.00),
(14, 14, 15, 1, 35.00), 
(15, 15, 16, 1, 60.00),
(16, 16, 17, 1, 5.00), 
(17, 17, 18, 1, 40.00), 
(18, 18, 19, 1, 20.00),
(19, 19, 20, 1, 29.99), 
(20, 20, 4, 1, 25.00); 





























