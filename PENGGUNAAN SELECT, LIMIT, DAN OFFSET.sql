--MENGAMBIL DATA DARI TABLE ADDRESS
SELECT *
FROM ADDRESS;
--MENGURUTKAN DATA DARI TERBESAR KE TERKECIL DENGAN LIMIT 5 KOLOM DAN BARIS
SELECT address_id, address, address2, district, city_id
FROM ADDRESS
ORDER BY address_id DESC
LIMIT 5;
--MENGAMBIL DATA BARIS KE 6-10, LALU URUTKAN MENJADI DESC
SELECT address_id, address, address2, district, city_id
from address
ORDER BY address_id DESC
limit 10
offset 20;


