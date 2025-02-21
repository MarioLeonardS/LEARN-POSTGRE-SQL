-- sama dengan

select 1 = 1;
select 1 = 2;

select *
from actor a 
where first_name = 'John'

-- tidak sama dengan
select 1 != 1;
select 1 != 2;
select 1 <> 1;

select *
from address a 
where district != 'Texas' --Mencari District Selain Texas

-- lebih besar 

select title , length 
from film f 
where length > 60; --Mencari durasi film yang lebih dari 60 menit

-- lebih besar dari atau sama dengan

select title , length
from film f 
where length >= 60

-- lebih kecil

select title , length 
from film f 
where length < 60; --Mencaari film yang berdurasi kurang dari 60 menit

-- lebih kecil dari atau sama dengan

select title , length 
from film f 
where length <= 60; --Mencari film yang berdurasi kurang dari atau sama dengan 60 menit