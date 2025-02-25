-- membuat tabel bernama StudentProfile

CREATE TABLE profil_siswa (
    no_siswa INT PRIMARY KEY, -- no induk siswa, berperan sebagai primary key, sifatnya unik dan tidak boleh kosong
    nama_lengkap VARCHAR(50), -- nama depan, varchar hingga 50 karakter
    kelas VARCHAR(10), --kelas, varchar hingga 10 karakter
    tanggal_lahir DATE, -- tanggal lahir
    jenis_kelamin CHAR(1), -- jenis kelamin 'L' untuk laki-laki , 'P' untuk perempuan
    email VARCHAR(100) UNIQUE, -- alamat email, varchar hingga 100 karakter, unik
    no_telp VARCHAR(15), -- no hp, varchar hingga 15 digit
    alamat TEXT, -- alamat, text, bebas 
    indeks_prestasi_kumulatif DECIMAL(3, 2), -- bisa menyimpan 3 digit, range GPA antara 0.00 s.d. 4.00 
    waktu_pendaftaran TIMESTAMP, -- format yyyy-mm-dd hh:mm:ss , untuk MySQL menggunakan data type DATETIME
    is_active BOOLEAN -- true or false , untuk melabeli murid tersebut aktif atau tidak
);

-- menginsert data ke dalam tabel StudentProfile 

INSERT INTO profil_siswa (
	no_siswa,
	nama_lengkap,
	kelas,
	tanggal_lahir,
	jenis_kelamin,
	email,
	no_telp,
	alamat,
	indeks_prestasi_kumulatif,
	waktu_pendaftaran,
	is_active)
VALUES
    (2, 'KELVIN SURYA JAYA','XI TJKT 2', '2008-05-14','L','kepin@gmail.com','099999999','Parung','3.99','2025-02-25 00:00:00.000','TRUE'),
    (3, 'RADITYA TANTOWI','XI TJKT 2', '2008-05-14','L','owik@gmail.com','080000078','Gunung Sindur','3.99','2025-02-25 00:00:00.000','TRUE'),
    (4, 'NADIF CANDRA ABIYAKTA','XI TJKT 2', '2008-03-21','L','hutao@gmail.com','089443478','Villa Pamulang','3.99','2025-02-25 00:00:00.000','TRUE'),
    (5, 'MUHAMMAD AGIL DWI PUTRA','XI TJKT 2', '2008-07-09','L','furina@gmail.com','085454578','Setu','3.99','2025-02-25 00:00:00.000','TRUE');
-- cek hasil insert 
   
update profil_siswa ps 
set kelas = 'XI TJKT 2';

select *
from profil_siswa ;

alter table profil_siswa 
add kelas varchar(10);


-- DROP TABLE jika sudah tidak diperlukan
drop table profil_siswa ;