-- CREATE TABLE untuk tabel baru bernama nilai_siswa
CREATE TABLE nilai_siswa (
    id_siswa CHAR(5),
    nilai_mtk INTEGER,
    nilai_ipa INTEGER,
    nilai_bing INTEGER,
    nilai_bind INTEGER
);

-- INSERT data untuk tabel nilai_siswa berjumlah 40 siswa
INSERT INTO nilai_siswa (id_siswa, nilai_mtk, nilai_ipa, nilai_bing, nilai_bind)
values ('10001',92,99,54,43),
('10002',58,50,40,88),
('10003',53,65,49,99),
('10004',44,82,94,56),
('10005',100,41,48,92),
('10006',66,76,97,58),
('10007',91,79,100,99),
('10008',53,46,93,83),
('10009',53,96,49,46),
('10010',49,82,65,79),
('10011',64,72,77,72),
('10012',57,92,98,96),
('10013',58,93,52,88),
('10014',85,72,97,80),
('10015',96,69,97,54),
('10016',93,71,61,41),
('10017',47,52,62,54),
('10018',67,87,93,90),
('10019',89,88,86,100),
('10020',100,92,97,62),
('10021',53,95,66,61),
('10022',75,94,60,75),
('10023',71,84,76,77),
('10024',48,49,71,77),
('10025',66,58,87,95),
('10026',98,68,69,66),
('10027',77,93,87,50),
('10028',75,71,45,70),
('10029',99,65,66,50),
('10030',45,84,60,70),
('10031',82,49,42,46),
('10032',86,51,46,62),
('10033',82,85,70,100),
('10034',96,49,76,97),
('10035',46,59,97,96),
('10036',56,93,80,85),
('10037',55,46,88,82),
('10038',42,46,99,86),
('10039',42,65,57,97),
('10040',81,47,87,90)

select *
from nilai_siswa ns ;

-- menggunakan AND untuk menentukan kelulusan siswa
-- 2 kondisi , nilai mtk >= 75 dan nilai ipa >= 75

select id_siswa , nilai_mtk , nilai_ipa 
from nilai_siswa ns 
where nilai_mtk >= 70 and nilai_ipa >= 70;

-- lebih dari 2 kondisi
-- nilai_mtk >= 75, nilai_ipa >= 75, nilai_bing >= 70, nilai_bind >= 80

select id_siswa , nilai_mtk , nilai_ipa , nilai_bing, nilai_bind
from nilai_siswa ns 
where nilai_mtk >= 75 and nilai_ipa >= 75 and nilai_bing >= 70 and nilai_bind >= 80;


-- menggunakan OR untuk menentukan kelulusan siswa
-- 2 kondisi , nilai mtk >= 75 atau nilai ipa >= 75

select id_siswa , nilai_mtk , nilai_ipa 
from nilai_siswa ns 
where nilai_mtk >= 75 or nilai_ipa >= 75;

-- menggunakan AND dan OR bersamaan

select id_siswa , nilai_mtk , nilai_ipa , nilai_bind 
from nilai_siswa ns 
where (nilai_mtk >= 75 or nilai_ipa >= 75) and nilai_bind > 60;


-- OPERATOR NOT
select title, length ,rating 
from film f 
where rating in ('PG-13','NC-17')

select title, length ,rating 
from film f 
where rating not in ('PG-13','NC-17')

select * 
from address a 
where address2 is null;

select * 
from address a 
where address2 is not null;

select title, length ,rating 
from film f 
where title like '%Elf%'

select title, length ,rating 
from film f 
where title not like '%Ghost%'

select title, length
from film f 
where length between 60 and 120
order by length desc 

select title, length
from film f 
where length not between 60 and 120
order by length desc 

select *
from nilai_siswa ns 
where (nilai_mtk >= 70 or nilai_ipa >= 70) and (nilai_bing >=65 or nilai_bind >=70);