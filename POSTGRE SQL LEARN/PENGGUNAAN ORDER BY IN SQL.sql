-- membuat tabel
CREATE TABLE library_registration (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    registration_date DATE
);

-- Insert data ke dalam tabel
INSERT INTO library_registration (id, name, age, registration_date)
VALUES
    (1, 'Alice', 28, '2023-01-15'),
    (2, 'Bob', 35, '2022-09-10'),
    (3, 'Charlie', 22, '2022-10-20'),
    (4, 'David', 31, '2022-12-05'),
    (5, 'Eva', 24, '2023-02-28'),
    (6, 'Frank', 29, '2022-11-15'),
    (7, 'Grace', 26, '2023-04-10'),
    (8, 'Hank', 32, '2022-10-20'),
    (9, 'Ivy', 23, '2022-08-15'),
    (10, 'Jack', 27, '2022-08-15');


-- order by untuk tipe data varchar
select *
from library_registration 
order by name;

select *
from library_registration 
order by name desc;

-- order by untuk tipe data numerik
select *
from library_registration 
order by age;

select *
from library_registration 
order by age desc;

-- order by untuk tipe data date
select *
from library_registration 
order by registration_date;

select *
from library_registration 
order by registration_date desc;

-- order by menggunakan lebih dari 1 kolom
select *
from library_registration 
order by registration_date desc, name, age, id ;

-- drop table / hapus tabel
drop table library_registration ;