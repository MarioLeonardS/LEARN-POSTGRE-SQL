-- CREATE TABLE untuk tabel baru bernama supermarket_transactions
CREATE TABLE supermarket_transactions (
    invoice_id VARCHAR(100),
    branch_id VARCHAR(5),
    city VARCHAR(50),
    customer_type VARCHAR(50),
    customer_gender VARCHAR(20),
    product_category VARCHAR(100),
    unit_price FLOAT,
    quantity INTEGER,
    transaction_time TIMESTAMP,
    payment_method VARCHAR(50)
);

-- INSERT DATA berjumlah 100 baris
INSERT INTO supermarket_transactions (invoice_id, branch_id, city, customer_type, customer_gender, product_category, unit_price, quantity, transaction_time, payment_method)
VALUES
	('765-26-6951','A','JAKARTA','Non-member','Male','Sports and travel',72.61,6,'2019-01-01 10:39:00','Credit card'),	
	('530-90-9855','A','JAKARTA','Member','Male','Home and lifestyle',47.59,8,'2019-01-01 14:47:00','Cash'),
	('891-01-7034','B','BANDUNG','Non-member','Female','Electronic accessories',74.71,6,'2019-01-01 19:07:00','Cash'),
	('493-65-6248','C','MEDAN','Member','Female','Sports and travel',36.98,10,'2019-01-01 19:48:00','Credit card'),
	('556-97-7101','C','MEDAN','Non-member','Female','Electronic accessories',63.22,2,'2019-01-01 15:51:00','Cash'),
	('133-14-7229','C','MEDAN','Non-member','Male','Health and beauty',62.87,2,'2019-01-01 11:43:00','Cash'),
	('651-88-7328','A','JAKARTA','Non-member','Female','Fashion accessories',65.74,9,'2019-01-01 13:55:00','Cash'),
	('182-52-7000','A','JAKARTA','Member','Female','Sports and travel',27.04,4,'2019-01-01 20:26:00','Ewallet'),
	('416-17-9926','A','JAKARTA','Member','Female','Electronic accessories',74.22,10,'2019-01-01 14:42:00','Credit card'),
	('271-77-8740','C','MEDAN','Member','Female','Sports and travel',29.22,6,'2019-01-01 11:40:00','Ewallet'),
	('770-42-8960','B','BANDUNG','Non-member','Male','Food and beverages',21.12,8,'2019-01-01 19:31:00','Cash'),
	('746-04-1077','B','BANDUNG','Member','Female','Food and beverages',84.63,10,'2019-01-01 11:36:00','Credit card'),
	('551-21-3069','C','MEDAN','Non-member','Female','Electronic accessories',23.07,9,'2019-01-02 11:27:00','Cash'),
	('237-01-6122','C','MEDAN','Member','Female','Home and lifestyle',80.79,9,'2019-01-02 20:31:00','Credit card'),
	('105-31-1824','A','JAKARTA','Member','Male','Sports and travel',69.52,7,'2019-01-02 15:10:00','Credit card'),
	('870-76-1733','A','JAKARTA','Member','Female','Food and beverages',14.23,5,'2019-01-02 10:08:00','Credit card'),
	('358-88-9262','C','MEDAN','Member','Female','Food and beverages',87.48,6,'2019-01-02 18:43:00','Ewallet'),
	('443-82-0585','A','JAKARTA','Member','Female','Health and beauty',77.68,4,'2019-01-02 19:54:00','Cash'),
	('189-98-2939','C','MEDAN','Non-member','Male','Fashion accessories',78.55,9,'2019-01-03 13:22:00','Cash'),
	('453-63-6187','B','BANDUNG','Non-member','Male','Electronic accessories',27.5,3,'2019-01-03 15:40:00','Ewallet'),
	('153-58-4872','C','MEDAN','Member','Female','Food and beverages',74.89,4,'2019-01-03 15:32:00','Ewallet'),
	('220-28-1851','A','JAKARTA','Non-member','Male','Home and lifestyle',34.73,2,'2019-01-03 18:14:00','Ewallet'),
	('339-96-8318','B','BANDUNG','Member','Male','Fashion accessories',81.31,7,'2019-01-03 19:49:00','Ewallet'),
	('207-73-1363','B','BANDUNG','Non-member','Male','Health and beauty',69.51,2,'2019-01-03 12:15:00','Ewallet'),
	('470-31-3286','B','BANDUNG','Non-member','Male','Health and beauty',14.82,3,'2019-01-03 11:30:00','Credit card'),
	('811-03-8790','A','JAKARTA','Non-member','Female','Electronic accessories',45.48,10,'2019-01-03 10:22:00','Credit card'),
	('247-11-2470','A','JAKARTA','Member','Female','Fashion accessories',22.32,4,'2019-01-03 16:23:00','Credit card'),
	('238-45-6950','B','BANDUNG','Member','Male','Food and beverages',53.72,1,'2019-01-03 20:03:00','Ewallet'),
	('504-35-8843','A','JAKARTA','Non-member','Male','Sports and travel',42.47,1,'2019-02-01 16:57:00','Cash'),
	('446-47-6729','C','MEDAN','Non-member','Male','Fashion accessories',99.82,2,'2019-02-01 18:09:00','Credit card'),
	('244-08-0162','B','BANDUNG','Non-member','Female','Health and beauty',34.21,10,'2019-02-01 13:00:00','Cash'),
	('198-84-7132','B','BANDUNG','Member','Male','Fashion accessories',40.61,9,'2019-02-01 13:40:00','Cash'),
	('744-09-5786','B','BANDUNG','Non-member','Male','Electronic accessories',22.01,6,'2019-02-01 18:50:00','Cash'),
	('712-39-0363','A','JAKARTA','Member','Male','Food and beverages',41.66,6,'2019-02-01 15:24:00','Ewallet'),
	('345-68-9016','C','MEDAN','Member','Female','Sports and travel',31.67,8,'2019-02-01 16:19:00','Credit card'),
	('670-71-7306','B','BANDUNG','Non-member','Male','Sports and travel',44.63,6,'2019-02-01 20:08:00','Credit card'),
	('554-53-8700','C','MEDAN','Member','Male','Home and lifestyle',56.11,2,'2019-02-02 10:11:00','Cash'),
	('382-03-4532','A','JAKARTA','Member','Female','Health and beauty',18.33,1,'2019-02-02 18:50:00','Cash'),
	('642-32-2990','A','JAKARTA','Non-member','Female','Food and beverages',10.96,10,'2019-02-02 20:48:00','Ewallet'),
	('376-02-8238','B','BANDUNG','Non-member','Male','Home and lifestyle',93.87,8,'2019-02-02 18:42:00','Credit card'),
	('845-51-0542','B','BANDUNG','Member','Male','Food and beverages',46.55,9,'2019-02-02 15:34:00','Ewallet'),
	('376-56-3573','C','MEDAN','Non-member','Female','Fashion accessories',95.42,4,'2019-02-02 13:23:00','Ewallet'),
	('201-86-2184','B','BANDUNG','Member','Female','Electronic accessories',26.26,7,'2019-02-02 19:40:00','Cash'),
	('405-31-3305','A','JAKARTA','Member','Male','Fashion accessories',43.13,10,'2019-02-02 18:31:00','Credit card'),
	('541-08-3113','C','MEDAN','Non-member','Male','Food and beverages',65.97,8,'2019-02-02 20:29:00','Cash'),
	('420-18-8989','A','JAKARTA','Member','Female','Sports and travel',51.52,8,'2019-02-02 15:47:00','Cash'),
	('418-05-0656','B','BANDUNG','Non-member','Female','Fashion accessories',25.56,7,'2019-02-02 20:42:00','Cash'),
	('390-17-5806','C','MEDAN','Member','Female','Food and beverages',38.42,1,'2019-02-02 16:33:00','Cash'),
	('717-96-4189','C','MEDAN','Non-member','Female','Electronic accessories',35.49,6,'2019-02-02 12:40:00','Cash'),
	('756-93-1854','C','MEDAN','Member','Female','Fashion accessories',83.35,2,'2019-02-02 14:05:00','Credit card'),
	('549-59-1358','A','JAKARTA','Member','Male','Sports and travel',88.63,3,'2019-02-03 17:36:00','Ewallet'),
	('225-98-1496','C','MEDAN','Non-member','Female','Fashion accessories',27.02,3,'2019-02-03 13:01:00','Credit card'),
	('817-69-8206','B','BANDUNG','Non-member','Female','Electronic accessories',99.73,9,'2019-02-03 19:42:00','Credit card'),
	('346-84-3103','B','BANDUNG','Member','Female','Electronic accessories',13.22,5,'2019-02-03 19:26:00','Cash'),
	('883-17-4236','C','MEDAN','Non-member','Female','Sports and travel',14.39,2,'2019-02-03 19:44:00','Credit card'),
	('565-67-6697','B','BANDUNG','Member','Male','Home and lifestyle',27,9,'2019-02-03 14:16:00','Cash'),
	('878-30-2331','C','MEDAN','Member','Female','Sports and travel',54.55,10,'2019-02-03 11:22:00','Credit card'),
	('408-26-9866','C','MEDAN','Non-member','Female','Sports and travel',73.98,7,'2019-02-03 16:42:00','Ewallet'),
	('576-31-4774','B','BANDUNG','Non-member','Female','Health and beauty',73.41,3,'2019-02-03 13:10:00','Ewallet'),
	('640-48-5028','B','BANDUNG','Member','Female','Home and lifestyle',88.39,9,'2019-02-03 12:40:00','Cash'),
	('860-73-6466','A','JAKARTA','Member','Female','Sports and travel',39.47,2,'2019-02-03 16:16:00','Credit card'),
	('607-76-6216','C','MEDAN','Member','Female','Fashion accessories',92.49,5,'2019-02-03 16:35:00','Credit card'),
	('725-54-0677','C','MEDAN','Member','Male','Health and beauty',85.6,7,'2019-02-03 13:50:00','Cash'),
	('636-98-3364','B','BANDUNG','Member','Female','Electronic accessories',26.26,3,'2019-02-03 12:36:00','Ewallet'),
	('825-94-5922','B','BANDUNG','Non-member','Male','Sports and travel',25.31,2,'2019-02-03 19:26:00','Ewallet'),
	('720-72-2436','A','JAKARTA','Non-member','Male','Food and beverages',66.52,4,'2019-02-03 18:14:00','Ewallet'),
	('172-42-8274','B','BANDUNG','Non-member','Female','Electronic accessories',38.27,2,'2019-02-03 18:18:00','Credit card'),
	('303-96-2227','B','BANDUNG','Non-member','Female','Home and lifestyle',97.38,10,'2019-02-03 17:16:00','Ewallet'),
	('249-42-3782','A','JAKARTA','Non-member','Male','Health and beauty',70.01,5,'2019-03-01 11:36:00','Ewallet'),
	('749-24-1565','A','JAKARTA','Non-member','Female','Health and beauty',23.03,9,'2019-03-01 12:02:00','Ewallet'),
	('687-15-1097','C','MEDAN','Member','Female','Health and beauty',21.12,2,'2019-03-01 19:17:00','Cash'),
	('422-29-8786','A','JAKARTA','Non-member','Female','Home and lifestyle',67.09,5,'2019-03-01 16:47:00','Credit card'),
	('343-87-0864','C','MEDAN','Member','Male','Health and beauty',75.88,1,'2019-03-01 10:30:00','Credit card'),
	('875-31-8302','B','BANDUNG','Non-member','Male','Sports and travel',93.38,1,'2019-03-01 13:07:00','Cash'),
	('501-61-1753','B','BANDUNG','Non-member','Female','Home and lifestyle',63.15,6,'2019-03-01 20:24:00','Ewallet'),
	('552-44-5977','B','BANDUNG','Member','Male','Health and beauty',62,8,'2019-03-01 19:08:00','Credit card'),
	('326-78-5178','C','MEDAN','Member','Male','Food and beverages',91.4,7,'2019-03-02 10:19:00','Cash'),
	('347-34-2234','B','BANDUNG','Member','Female','Sports and travel',55.07,9,'2019-03-02 13:40:00','Ewallet'),
	('430-60-3493','A','JAKARTA','Member','Female','Home and lifestyle',94.88,7,'2019-03-02 14:38:00','Cash'),
	('566-71-1091','A','JAKARTA','Non-member','Male','Fashion accessories',77.02,5,'2019-03-02 15:59:00','Cash'),
	('639-76-1242','C','MEDAN','Non-member','Male','Food and beverages',40.52,5,'2019-03-02 15:19:00','Cash'),
	('326-71-2155','C','MEDAN','Non-member','Female','Sports and travel',73.95,4,'2019-03-02 10:02:00','Cash'),
	('277-63-2961','B','BANDUNG','Member','Male','Sports and travel',73.97,1,'2019-03-02 15:53:00','Credit card'),
	('718-57-9773','C','MEDAN','Non-member','Female','Sports and travel',49.33,10,'2019-03-02 16:40:00','Credit card'),
	('443-59-0061','A','JAKARTA','Member','Male','Food and beverages',67.45,10,'2019-03-02 11:25:00','Ewallet'),
	('742-04-5161','A','JAKARTA','Member','Male','Home and lifestyle',72.78,10,'2019-03-02 17:24:00','Cash'),
	('322-02-2271','B','BANDUNG','Non-member','Female','Sports and travel',42.97,3,'2019-03-02 11:46:00','Cash'),
	('585-86-8361','A','JAKARTA','Non-member','Female','Food and beverages',27.28,5,'2019-03-02 10:31:00','Credit card'),
	('190-59-3964','B','BANDUNG','Member','Male','Food and beverages',47.16,5,'2019-03-02 14:35:00','Credit card'),
	('676-10-2200','B','BANDUNG','Member','Male','Fashion accessories',53.78,1,'2019-03-02 20:13:00','Ewallet'),
	('631-41-3108','A','JAKARTA','Non-member','Male','Home and lifestyle',46.33,7,'2019-03-03 13:23:00','Credit card'),
	('777-82-7220','B','BANDUNG','Member','Male','Home and lifestyle',30.12,8,'2019-03-03 13:01:00','Cash'),
	('861-77-0145','C','MEDAN','Member','Male','Electronic accessories',81.97,10,'2019-03-03 14:30:00','Cash'),
	('733-33-4967','C','MEDAN','Non-member','Male','Electronic accessories',20.85,8,'2019-03-03 19:17:00','Cash'),
	('175-54-2529','A','JAKARTA','Member','Male','Food and beverages',22.17,8,'2019-03-03 17:01:00','Credit card'),
	('305-14-0245','B','BANDUNG','Member','Female','Home and lifestyle',94.49,8,'2019-03-03 19:00:00','Ewallet'),
	('211-05-0490','C','MEDAN','Member','Female','Electronic accessories',51.92,5,'2019-03-03 13:42:00','Cash'),
	('568-88-3448','A','JAKARTA','Non-member','Male','Health and beauty',25,1,'2019-03-03 15:09:00','Ewallet'),
	('234-03-4040','B','BANDUNG','Member','Female','Food and beverages',73.05,10,'2019-03-03 12:25:00','Credit card'),
	('302-15-2162','C','MEDAN','Member','Male','Health and beauty',46.53,6,'2019-03-03 10:54:00','Credit card');

--Raw Table
select *
from supermarket_transactions st

-- Pertambahan
select quantity , quantity + 100 as stok_barang_terbaru
from supermarket_transactions st 

-- Pengurangan
select unit_price , unit_price - 5 as harga_baru
from supermarket_transactions st 

-- Perkalian , menghitung pendapatan / revenue
select unit_price , quantity , unit_price * quantity as revenue
from supermarket_transactions st 

-- Perkalian, menghitung besaran PPN 10%
select 
unit_price as "Harga Barang", 
quantity as "Jumlah Barang", 
unit_price * quantity as revenue, 
unit_price * quantity * 0.1 as tax
from supermarket_transactions st ;

-- Pembagian 
select 10 / 2;

-- Sisa pembagian / Modulus
select 5 % 2;

-- Perpangkatan
select 10 ^ 2;