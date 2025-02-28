-- CREATE TABLE DENGAN NUMERICAL DATA TYPE
create table test_table (
	primary_key SERIAL not null,
	smallint_col smallint,
	int_col int,
	bigint_col bigint,
	room_temperature decimal(4,2),
	real_number real,
	double_prec double precision
);

-- INSERT DATA KE TABLE
insert into test_table (smallint_col, int_col, bigint_col, room_temperature, real_number, double_prec)
values 
	(-32768,-2147483648,-9223372036854775808,36.25, 12345.12345, 3.1415926535993721837127389217313),
	(32767,2147483647,9223372036854775807, 99.99, 54321.12345, 3.12314155)
;

-- CONTOH ERROR
insert into test_table (smallint_col, int_col, bigint_col, room_temperature, real_number, double_prec)
values 
	(40000,2147483647,9223372036854775807, 99.99, 54321.12345, 3.12314155)

-- MELIHAT ISI TABEL
select *
from test_table;

	
drop table test_table;