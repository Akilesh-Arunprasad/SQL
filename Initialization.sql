CREATE DATABASE Employee;
SHOW databases;
USE Employee;
CREATE TABLE employees (
    emp_no      INT             NOT NULL,  -- UNSIGNED AUTO_INCREMENT??
    birth_date  DATE            NOT NULL,
    first_name  VARCHAR(14)     NOT NULL,
    last_name   VARCHAR(16)     NOT NULL,
    gender      ENUM ('M','F')  NOT NULL,  -- Enumeration of either 'M' or 'F'  
    hire_date   DATE            NOT NULL,
    PRIMARY KEY (emp_no)                   -- Index built automatically on primary-key column
                                           -- INDEX (first_name)
                                           -- INDEX (last_name)
);

SELECT * FROM employees;

INSERT INTO employee.employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
VALUES 
('2', '2020-08-11', 'Adam', 'zen', 'M', '2024-08-11'),
('3', '2015-08-11', 'Sam', 'dan', 'M', '2023-05-11'),
('4', '2017-08-11', 'alice', 'gi', 'F', '2024-03-11'),
('5', '2018-08-11', 'jino', 'ven', 'F', '2022-07-11'),
('6', '2021-08-11', 'ben', 'affleck', 'M', '2024-12-11');

CREATE DATABASE DataAnalyst;
USE DataAnalyst;
USE Employee;
describe employees;

select emp_no, first_name, gender
from employees
where gender in ('M');

USE DataAnalyst;
CREATE TABLE SalesData(
			invoice_no INT NOT NULL,
			customer_id VARCHAR(250) NOT NULL,
			category varchar(250) ,
			quantity INT ,
			price FLOAT,
			invoice_date DATE,
			shopping_mall VARCHAR(200)
            );

describe SalesData;

INSERT INTO dataanalyst.SalesData (invoice_no,	customer_id,	category,	quantity,	price,	invoice_date,	shopping_mall)
VALUES 
	(138884,'C241288','Clothing',5,1500.5,'2022-04-11','Kanyon');
    
INSERT INTO dataanalyst.SalesData (invoice_no,	customer_id,	category,	quantity,	price,	invoice_date,	shopping_mall)
VALUES
(317333, 'C111565', 'Shoes', 3, 1800.51, '2021-12-12', 'Forum Istanbul'),
(127801, 'C266599', 'Clothing', 1, 300.08, '2021-11-09', 'Metrocity'),
(173702, 'C988172', 'Shoes', 5, 3000.85, '2021-05-16', 'Metropol AVM'),
(337046, 'C189076', 'Books', 4, 60.6, '2021-10-24', 'Kanyon'),
(227836, 'C657758', 'Clothing', 5, 1500.4, '2022-05-24', 'Forum Istanbul'),
(121056, 'C151197', 'Cosmetics', 1, 40.66, '2022-03-13', 'Istinye Park'),
(293112, 'C176086', 'Clothing', 2, 600.16, '2021-01-13', 'Mall of Istanbul'),
(293455, 'C159642', 'Clothing', 3, 900.24, '2021-11-04', 'Metrocity'),
(326945, 'C283361', 'Clothing', 2, 600.16, '2021-08-22', 'Kanyon'),
(306368, 'C240286', 'Food & Beverage', 2, 10.46, '2022-12-25', 'Metrocity'),
(139207, 'C191708', 'Books', 1, 15.15, '2022-10-28', 'Emaar Square Mall'),
(640508, 'C225330', 'Toys', 4, 143.36, '2022-07-31', 'Metrocity'),
(179802, 'C312861', 'Clothing', 2, 600.16, '2022-11-17', 'Cevahir AVM'),
(336189, 'C555402', 'Clothing', 2, 600.16, '2022-06-03', 'Kanyon'),
(688768, 'C362288', 'Shoes', 5, 3000.85, '2021-11-07', 'Viaport Outlet'),
(294687, 'C300786', 'Books', 2, 30.3, '2021-01-16', 'Metrocity'),
(195744, 'C330667', 'Food & Beverage', 3, 15.69, '2022-01-05', 'Zorlu Center'),
(993048, 'C218149', 'Clothing', 2, 600.16, '2021-07-26', 'Metropol AVM'),
(992454, 'C196845', 'Toys', 4, 143.36, '2023-03-07', 'Cevahir AVM'),
(183746, 'C220180', 'Clothing', 1, 300.08, '2023-02-15', 'Emaar Square Mall'),
(412481, 'C125696', 'Food & Beverage', 1, 5.23, '2021-05-01', 'Cevahir AVM'),
(823067, 'C322947', 'Clothing', 2, 600.16, '2022-06-18', 'Cevahir AVM'),
(252275, 'C313348', 'Technology', 5, 5250, '2021-10-26', 'Kanyon'),
(174250, 'C204553', 'Books', 5, 75.75, '2022-12-16', 'Metrocity'),
(195396, 'C285161', 'Toys', 2, 71.68, '2021-05-16', 'Istinye Park'),
(196704, 'C289625', 'Cosmetics', 5, 203.3, '2022-04-20', 'Mall of Istanbul'),
(217053, 'C192344', 'Shoes', 4, 2400.68, '2022-10-10', 'Emaar Square Mall'),
(655874, 'C447138', 'Shoes', 3, 1800.51, '2022-08-23', 'Cevahir AVM'),
(209744, 'C251229', 'Cosmetics', 3, 121.98, '2021-04-29', 'Istinye Park'),
(161949, 'C159164', 'Toys', 3, 107.52, '2022-07-04', 'Mall of Istanbul'),
(331891, 'C501658', 'Clothing', 1, 300.08, '2021-11-21', 'Emaar Square Mall'),
(768348, 'C176727', 'Shoes', 3, 1800.51, '2022-02-23', 'Kanyon'),
(109053, 'C232624', 'Clothing', 4, 1200.32, '2021-07-11', 'Metrocity'),
(167211, 'C164092', 'Shoes', 4, 2400.68, '2022-08-30', 'Zorlu Center'),
(339732, 'C276887', 'Food & Beverage', 1, 5.23, '2023-01-04', 'Emaar Square Mall'),
(147062, 'C245456', 'Clothing', 5, 1500.4, '2022-06-21', 'Kanyon'),
(187519, 'C450287', 'Clothing', 2, 600.16, '2022-07-08', 'Metrocity'),
(106674, 'C204279', 'Clothing', 2, 600.16, '2022-02-27', 'Kanyon'),
(473411, 'C452806', 'Clothing', 1, 300.08, '2022-12-19', 'Metropol AVM'),
(246550, 'C716788', 'Food & Beverage', 3, 15.69, '2021-09-10', 'Zorlu Center'),
(138674, 'C155059', 'Cosmetics', 2, 81.32, '2022-02-14', 'Metropol AVM'),
(752693, 'C306662', 'Cosmetics', 3, 121.98, '2022-04-28', 'Metrocity'),
(826174, 'C607615', 'Shoes', 4, 2400.68, '2022-06-20', 'Metrocity'),
(296025, 'C120164', 'Shoes', 3, 1800.51, '2022-04-21', 'Kanyon'),
(117291, 'C134449', 'Books', 5, 75.75, '2022-12-09', 'Zorlu Center'),
(267193, 'C317818', 'Cosmetics', 3, 121.98, '2023-01-12', 'Mall of Istanbul'),
(205366, 'C241642', 'Clothing', 4, 1200.32, '2022-11-07', 'Zorlu Center'),
(269690, 'C126436', 'Cosmetics', 3, 121.98, '2022-02-07', 'Zorlu Center'),
(304265, 'C653385', 'Books', 5, 75.75, '2021-06-13', 'Forum Istanbul'),
(246562, 'C227070', 'Cosmetics', 5, 203.3, '2021-08-23', 'Emaar Square Mall'),
(202367, 'C317478', 'Books', 3, 45.45, '2023-02-24', 'Istinye Park'),
(664787, 'C237330', 'Cosmetics', 2, 81.32, '2023-01-12', 'Istinye Park'),
(160777, 'C626042', 'Technology', 4, 4200, '2022-02-22', 'Metrocity'),
(137794, 'C133687', 'Food & Beverage', 3, 15.69, '2021-03-12', 'Viaport Outlet'),
(148377, 'C841663', 'Clothing', 1, 300.08, '2022-01-02', 'Istinye Park'),
(258195, 'C213742', 'Toys', 2, 71.68, '2021-11-26', 'Kanyon'),
(300213, 'C962515', 'Clothing', 4, 1200.32, '2021-04-21', 'Kanyon'),
(263803, 'C112279', 'Food & Beverage', 3, 15.69, '2021-06-23', 'Kanyon'),
(335713, 'C158837', 'Books', 4, 60.6, '2021-12-14', 'Kanyon');

INSERT INTO dataanalyst.SalesData (invoice_no,	customer_id,	category,	quantity,	price,	invoice_date,	shopping_mall)
VALUES
(317339, 'C113987', 'Shoes', null, 1800.51, null, 'Forum Istanbul'),
(317456, 'C111321', 'books', 1, null, '2024-08-25', 'Yajoor city');

delete from salesdata where invoice_no = 317333;

select * from SalesData;
select count(*) from SalesData;

select * from SalesData where quantity >=5 order by price desc;

select * from salesdata where invoice_no like '33%';
select * from salesdata where shopping_mall like 'metro%';

select customer_id, category, price, shopping_mall from salesdata order by price desc limit 25;
 
 select * from salesdata where price between 1000 and 1500;
 select * from salesdata where invoice_date between year(2021) and year(2022);
 select * from salesdata where invoice_date like '2021%'; 
 select * from salesdata where invoice_date = year(2021); 
 
 select * from salesdata where category in ('toys', 'books', 'clothing');
 select customer_id, invoice_date from salesdata where invoice_date in ('2022-07-31', '2021-05-16');
select * from salesdata where invoice_date in ('2022-07-31', '2021-05-16');
 USE dataanalyst;
select quantity from salesdata where price is not null;
select * from dataanalyst.salesdata where price is null;
select * from salesdata where quantity OR invoice_date is null;
 
alter table salesdata -- this command is used when you didnt define the primary key while creating table and then want to make any column as primary key
add 
primary key
(invoice_no);
 

 


