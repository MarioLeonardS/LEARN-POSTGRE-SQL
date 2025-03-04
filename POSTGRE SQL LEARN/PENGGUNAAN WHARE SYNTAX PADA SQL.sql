-- tanpa WHERE 
select *
from payment;

-- WHERE + operator perbandingan
-- semua transaksi yang dihandle oleh kasir / staff dengan kode 1

select *
from payment p 
where staff_id = 1;

-- semua transaksi yang besaran transaksinya di atas 10 dollar

select *
from payment p 
where amount > 10;

-- semua transaksi yang dihandle oleh kasir / staff dengan kode 2 dan besarannya >= 7 dollar

select *
from payment p 
where staff_id = 2 and amount >= 7;

-- contoh penggunaan UPDATE + WHERE

select *
from nilai_siswa ns ;

update nilai_siswa 
set nilai_mtk = 100
where id_siswa = '10001';

INSERT INTO nilai_siswa (id_siswa, nilai_mtk, nilai_ipa, nilai_bing, nilai_bind)
VALUES 
	('10001','80','73','89','90');

-- contoh penggunaan delete + where

delete from nilai_siswa 
where id_siswa = '10001';

-- CONTOH FATAL

-- CREATE TABLE untuk tabel baru bernama supermarket_transactions
CREATE TABLE dummy_transactions (
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

-- INSERT DATA DUMMY
INSERT INTO dummy_transactions (invoice_id, branch_id, city, customer_type, customer_gender, product_category, unit_price, quantity, transaction_time, payment_method)
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
	('271-77-8740','C','MEDAN','Member','Female','Sports and travel',29.22,6,'2019-01-01 11:40:00','Ewallet')

-- CEK ISI TABEL
select *
from dummy_transactions 

-- CONTOH UPDATE YANG BENAR
update dummy_transactions 
set city = 'JKT'
where city = 'JAKARTA'

-- CONTOH SALAH
update dummy_transactions 
set city = 'JAKARTA';

-- DROP table

drop table dummy_transactions ;