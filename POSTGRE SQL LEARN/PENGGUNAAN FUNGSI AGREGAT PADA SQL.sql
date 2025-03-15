-- Create a table named "sales" to illustrate aggregate functions
CREATE TABLE sales (
    order_id INT PRIMARY KEY, -- id transaksi penjualan
    product_name VARCHAR(50), -- nama produk
    quantity INT, -- kuantitas barang yang terjual
    price DECIMAL(10, 2), -- harga barang satuan
    order_date DATE -- tanggal pemesanan
);

-- Insert sample data into the "sales" table
INSERT INTO sales (order_id, product_name, quantity, price, order_date)
VALUES
    (1, 'Product A', 5, 10.99, '2023-09-01'),
    (2, 'Product B', 3, 15.75, '2023-09-02'),
    (3, 'Product A', 2, 10.99, '2023-09-03'),
    (4, 'Product C', 7, 8.49, '2023-09-04'),
    (5, 'Product B', 4, 15.75, '2023-09-05'),
    (6, 'Product A', 6, 10.99, '2023-09-06'),
    (7, 'Product C', 8, 8.49, '2023-09-07'),
    (8, 'Product D', 1, 12.25, '2023-09-08'),
    (9, 'Product B', 2, 15.75, '2023-09-09'),
    (10, 'Product A', 3, 10.99, '2023-09-10'),
    (11, 'Product D', 5, 12.25, '2023-09-11'),
    (12, 'Product C', 6, 8.49, '2023-09-12'),
    (13, 'Product B', 3, 15.75, '2023-09-13'),
    (14, 'Product A', 4, 10.99, '2023-09-14'),
    (15, 'Product C', 5, 8.49, '2023-09-15'),
    (16, 'Product D', 2, 12.25, '2023-09-16'),
    (17, 'Product B', 6, 15.75, '2023-09-17'),
    (18, 'Product A', 7, 10.99, '2023-09-18'),
    (19, 'Product C', 3, 8.49, '2023-09-19'),
    (20, NULL, 4, 12.25, '2023-09-20');

select *
from sales

-- Fungsi Agregat 

-- SUM
-- menghitung total pendapatan seluruh transaksi
select SUM(quantity*price) as total_revenue -- rumus revenue / omzet = jumlah barang terjual X harga satuan
from sales; 

-- menghitung total jumlah barang yang terjual
select SUM(quantity) as total_quantity_sold
from sales;

-- COUNT()
-- menghitung jumlah data di kolom tertentu
select count(product_name)
from sales;

-- menghitung jumlah baris di sebuah tabel
select count(*) --fungsi count tidak bisa menghitung baris yang null pada suatu kolom, jika pada baris yang berisi null tetapi di kolom lain masih memiliki data dengan baris yang sama seperti null, maka baris itu masih terhitung pada fungsi count
from sales;

-- AVG()
-- menghitung harga jual satuan rata-rata
select avg(price) avg_price
from sales;

-- MIN()
-- menghitung harga produk terendah
select min(price) min_price
from sales;

-- MAX()
-- menghitung harga produk tertinggi
select max(price) max_price
from sales;

-- DROP / hapus tabel
drop table sales


select product_name
from sales
group by product_name;