-- Menulis Alias menggunakan AS
select
title as Judul_Film,
rental_rate as Harga_Sewa
from film;
-- Menulis Alias Tanpa Menggunakan AS
select 
title judul_film,
rental_rate harga_sewa
from film;
--Menulis Alias menggunakan Spasi
select
title "Judul Film",
rental_rate "Harga Sewa"
from film;

-- Menggunakan Alias untuk nama tabel
select
f.film_id,
f.title,
f.release_year,
f.rental_rate,
c "name"
from film f
join film_category fc
on f.film_id = fc.film_id
join category c
on fc.category_id = c.category_id;

--MENGGUNAKAN ALIAS UNTUK MENGUBAH NAMA KOLOM
select
f.film_id as id_film,
f.title as judul_film,
f.release_year as tahun_terbit,
f.rental_rate as harga_sewa,
c."name" as film_category
from film f
join film_category fc
on f.film_id = fc.film_id
join category c
on fc.category_Id = c.category_id;

--MENGGUNAKAN ALIAS BERSAMA FUNGSI AGREGAT (SUM,AVERAGE,MIN, MAX, COUNT)
select 
sum(amount) "Total Pendapatan",
avg(amount) "Rata-rata Transaksi",
Min(amount) "Transaksi Terkecil",
max(AMOUNT) "Transaksi Terbesar",
count(*) "Total Transaksi"
from payment p;

select *
from category;
--MENGGUNAKAN ALIAS PADA SUBQUERY(QUERY YANG BERADA DIDALAM QUERY)
SELECT *
FROM (select *
from film f
join film_category fc
on f.film_id = fc.film_id
join category c
on fc.category_Id = c.category_id
where f.length >=60) as film_data_60;

SELECT *
FROM (select
f.film_id as id_Film,
f.length as durasi_film,
f.title as judul_film,
f.release_year as tahun_terbit,
c."name" as kategori_film
from film f
join film_category fc
on f.film_id = fc.film_id
join category c
on fc.category_Id = c.category_id
where f.length >=60) as film_data_60;
