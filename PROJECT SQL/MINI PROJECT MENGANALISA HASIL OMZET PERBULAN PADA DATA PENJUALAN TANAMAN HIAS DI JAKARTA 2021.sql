select *
from omzet_tanaman_jakarta_2021

--Menghitung dan mencari Omzet pada bulan ke 6
select 
bulan,
jenis_komoditi,
volume,
satuan,
omzet
from omzet_tanaman_jakarta_2021 ot
where bulan = '6'
order by omzet desc;

select  SUM(omzet)
from omzet_tanaman_jakarta_2021 ot
where bulan = '6';

--Mencari Tanaman dengan satuan pot dan mencari hasil omzet bulan ke 4
select 
bulan,
satuan,
omzet
from omzet_tanaman_jakarta_2021 ot
where bulan ='4' and satuan ='Pot';

select sum(omzet) as "Total Omzet Tanaman Pot pada Bulan Ke 4"
from omzet_tanaman_jakarta_2021 ot
where bulan='4' and satuan ='Pot'

--
