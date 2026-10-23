-- create database
create database student_db;

-- create table
CREATE TABLE tbl_students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    birth_date DATE,
    address VARCHAR(255),
    gender CHAR(1),
    email VARCHAR(100),
    created_at DATETIME NOT NULL,
    updated_at TIMESTAMP NOT NULL
        DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT unique_id UNIQUE (id)
);

-- insert data
insert into tbl_students (first_name, last_name, birth_date, address, gender, email, created_at)
values
('Jonh', 'Nathan', '1987-12-17', 'Preksomrong Village, Takhmao Town, Kandal Province', 'M', 'johnnathan@gmail.com', NOW()),
('Christano', 'Ronaldo', '2001-03-21', 'Preksomrong Village, Takhmao Town, Kandal Province', 'M', 'christanoronaldo@gmail.com', NOW()),
('Lionel', 'Messi', '2009-12-31', 'Preksomrong Village, Takhmao Town, Kandal Province', 'M', 'Lionelmessi@gmail.com', NOW())

-- select
select * from tbl_students;

-- insert data
insert into tbl_students (first_name, last_name, birth_date, address, gender, email, created_at)
values 
('Zidan', 'Zidan', '1975-02-07', 'Angkor Ban, Kangmeas, Kompong Cham Province', 'F', 'zidan@gmail.com', NOW())

-- update data
update  tbl_students
   set  gender = 'F'
 WHERE  first_name = 'Lionel'
   and  last_name = 'Messi';
  
-- insert data
insert into tbl_students (first_name, last_name, birth_date, address, gender, email, created_at)
values 
('Pele', 'Edson', '1974-05-20', 'Svayrlom, Saang, Kandal Province', 'M', 'peleedson@gmail.com', NOW()),
('Maradona', 'Diego', '2022-12-20', 'Preksomrong Village, Takhmao Town, Kandal Province', 'F', 'maradonadiego@gmail.com', NOW());

-- fetch data
select  *
  from  tbl_students;
  
-- delete data
delete 
  from  tbl_students;
  
-- delete table
 drop  
table  tbl_students;



