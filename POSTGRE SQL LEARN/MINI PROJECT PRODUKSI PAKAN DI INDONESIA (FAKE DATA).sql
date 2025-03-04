create table produksi_pakan (
	id_product SERIAL not null,
	produk VARCHAR(50),
	provinsi VARCHAR(30),
	total_produksi double precision,
	tahun char(4),
	harga_produk_per_kg int,
	total_harga_produk bigint,
	banyak_pakan_per_ton char(2),
	harga_pakan_per_kg smallint,
	total_banyak_pakan int,
	total_harga_pakan bigint
)
	
insert into produksi_pakan (
produk,
provinsi,
total_produksi,
tahun,
harga_produk_per_kg,
total_harga_produk,
banyak_pakan_per_ton,
harga_pakan_per_kg,
total_banyak_pakan,
total_harga_pakan
)
values
('Daging Itik',	'JAWA TIMUR',47068.84,'2021',50000,2353442000000,'26',9800,1223790,11993140432),
('Daging Sapi',	'JAWA BARAT',47068.84,'2021',50000,2353442000000,'26',9800,1223790,11993140432),
('Daging Ayam',	'JAWA TENGAH',47068.84,'2021',50000,2353442000000,'26',9800,1223790,11993140432),
('Daging Ikan',	'LAMPUNG',47068.84,'2021',50000,2353442000000,'26',9800,1223790,11993140432),
('Daging Sapi',	'JAKARTA',47068.84,'2021',50000,2353442000000,'26',9800,1223790,11993140432),
('Daging Itik',	'BALI',47068.84,'2021',50000,2353442000000,'26',9800,1223790,11993140432),
('Daging Itik',	'SUMATRA BARAT',47068.84,'2025',50000,2353442000000,'26',9800,1223790,11993140432),
('Daging Kambing','ACEH',47068.84,'2025',50000,2353442000000,'26',9800,1223790,11993140432),
('Daging Sapi',	'PONTIANAK',47068.84,'2024',50000,2353442000000,'26',9800,1223790,11993140432),
('Daging Ayam',	'JAWA BARAT',47068.84,'2024',50000,2353442000000,'26',9800,1223790,11993140432),
('Daging Ayam',	'BANTEN',47068.84,'2025',50000,2353442000000,'26',9800,1223790,11993140432),
('Daging Itik',	'YOGYAKARTA',47068.84,'2025',50000,2353442000000,'26',9800,1223790,11993140432),
('Daging Itik',	'BANTEN',47068.84,'2025',50000,2353442000000,'26',9800,1223790,11993140432),
('Daging Itik',	'MALUKU',47068.84,'2025',50000,2353442000000,'26',9800,1223790,11993140432),
('Daging Itik',	'PAPUA',47068.84,'2025',50000,2353442000000,'26',9800,1223790,11993140432),
('Daging Itik',	'SULAWESI UTARA',47068.84,'2024',50000,2353442000000,'26',9800,1223790,11993140432),
('Daging Itik',	'SURABAYA',47068.84,'2025',50000,2353442000000,'26',9800,1223790,11993140432)
;






select *
from produksi_pakan pp;

select 
total_produksi, harga_pakan_per_kg, 
(total_produksi * 1000) * harga_produk_per_kg as "Total Harga Produk"
from produksi_pakan pp ;

select
total_harga_produk, total_harga_pakan,
total_harga_produk - total_harga_pakan as "Laba Kotor"
from produksi_pakan pp ;

drop table produksi_pakan