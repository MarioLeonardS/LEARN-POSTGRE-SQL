-- Membuat Tabel

CREATE TABLE events (
    event_id SERIAL PRIMARY KEY, -- id event
    event_name VARCHAR(255), -- nama event / acara 
    event_date DATE, -- tanggal acara
    event_time TIME, -- waktu acara
    event_datetime TIMESTAMP, -- waktu dan tanggal acara
    event_time_with_tz TIMETZ, -- waktu acara disertai zona waktu
    event_datetime_with_tz TIMESTAMPTZ, -- waktu dan tanggal acara disertai zona waktu
    event_duration interval -- lama / durasi acara
);

-- Memasukkan Data ke dalam Tabel
INSERT INTO events (event_name, event_date, event_time, event_datetime, event_time_with_tz, event_datetime_with_tz, event_duration)
VALUES
    ('Meeting', '2023-09-18', '14:30:00', '2023-09-18 14:30:00', '14:30:00+02', '2023-09-18 14:30:00+02', '1 hour 30 minutes'),
    ('Webinar', '2023-09-20', '10:00:00', '2023-09-20 10:00:00', '10:00:00-05', '2023-09-20 10:00:00-05', '2 hours'),
    ('Workshop', '2023-09-22', '09:00:00', '2023-09-22 09:00:00', '09:00:00+08', '2023-09-22 09:00:00+08', '3 days 4 hours');

-- Lihat isi tabel
SELECT * FROM events;

-- cara lain menulis data type interval
INSERT INTO events (event_name, event_date, event_time, event_datetime, event_time_with_tz, event_datetime_with_tz, event_duration)
VALUES
    ('Meeting', '2023-09-18', '14:30:00', '2023-09-18 14:30:00', '14:30:00+02', '2023-09-18 14:30:00+02', '01:30:00'),
    ('Workshop', '2023-09-22', '09:00:00', '2023-09-22 09:00:00', '09:00:00+08', '2023-09-22 09:00:00+08', '3 days 04:00:00'),
   	('Workshop', '2023-09-22', '09:00:00', '2023-09-22 09:00:00', '09:00:00+08', '2023-09-22 09:00:00+08', '76:00:00');


-- Menggunakan data type interval untuk menghitung waktu berakhir sebuah event
select 
event_datetime as start_time, 
event_duration,
event_datetime + event_duration as event_finishtime
from events;

-- DROP TABLE
drop table events;