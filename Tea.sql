CREATE DATABASE TEA_FACTORY_MANAGEMENT_SYSTEM;
USE TEA_FACTORY_MANAGEMENT_SYSTEM;



CREATE TABLE Factory
(
Factory_ID INT NOT NULL,
Tea_ID   INT,
Own_ID INT,
Emp_ID INT,
Sup_ID INT,
Cus_ID INT,
FOREIGN KEY (Tea_ID) REFERENCES Tea (Tea_ID) ON DELETE CASCADE,
FOREIGN KEY (Own_ID) REFERENCES Owner (Own_ID) ON DELETE CASCADE,
FOREIGN KEY (Emp_ID) REFERENCES Employees (Emp_ID) ON DELETE CASCADE,
FOREIGN KEY (Sup_ID) REFERENCES Tea_Suplies (Sup_ID) ON DELETE CASCADE,
FOREIGN KEY (Cus_ID) REFERENCES Tea_Customer (Cus_ID) ON DELETE CASCADE,
PRIMARY KEY(Factory_ID)
);




CREATE TABLE Tea
(
Tea_ID  INT NOT NULL,
Tea_name VARCHAR (200),
Price VARCHAR (500),
PRIMARY KEY(Tea_ID)
);


CREATE TABLE Owner
(
Own_ID INT NOT NULL,
Own_name VARCHAR(15) NOT NULL,
Own_Share VARCHAR(500),
Own_Email VARCHAR(222),
Own_contact VARCHAR(222),
PRIMARY KEY(Own_ID)
);



CREATE TABLE Employees
(
Emp_ID INT NOT NULL,
Emp_name VARCHAR(15) NOT NULL,
Emp_possion VARCHAR (20),
Emp_Email VARCHAR(222),
Emp_contact VARCHAR(222),
Emp_salary INT NOT NULL,
Emp_Gendar VARCHAR(10) NOT NULL,
PRIMARY KEY (Emp_ID)
);


CREATE TABLE Tea_Suplies
(
Sup_ID INT NOT NULL,
Sup_name VARCHAR(15) NOT NULL,
Sup_Location VARCHAR(255),
Sup_Email VARCHAR(222),
Sup_contact VARCHAR(222),
PRIMARY KEY(Sup_ID)
);


 CREATE TABLE Tea_Customer
(
Cus_ID INT NOT NULL,
Cus_name VARCHAR(15) NOT NULL,
Cus_Location VARCHAR(255),
Cus_Email VARCHAR(222),
Cus_contact VARCHAR(222),
PRIMARY KEY(Cus_ID)
);


INSERT INTO `Tea`
VALUES
(01,'Green-Tea',4000),
(02,'Black-Tea',7000),
(03,'White-Tea',9000),
(04,'Oolong-Tea',8000),
(05,'Instant-Tea',6000);
SELECT*FROM Tea;



INSERT INTO `Owner` VALUES
(001,'Mithu_Prodhan',15,'Mithupro98@gmail.com',01789),
(002,'Lubna_Liza',10,'lizalub95@gmail.com',017998),
(003,'Imran_Habib',10,'imran2982@gmail.com',017444),
(004,'Leon_prodhan',10,'leon9844@gmail.com',017836),
(005,'Mim',10,'mim40@gmail.com',01984);
SELECT*FROM Owner;

INSERT INTO `Employees`
VALUES
(1001,'Manuj','Manager','manujloki@gmail.com',09787878,40000,'Male'),
(1002,'Anuj','Tea_Tester','Anujbepari888@gmail.com',9007878,35000,'Male'),
(1003,'Sima','Tea_Tester','simasaji6357@gmail.com',3337878,35000,'Female'),
(1004,'Anuradha','Tea_Tester','anuradhaanu57@gmail.com',0007878,35000,'Female'),
(1005,'Asad','Tea_cullector','asadhasum657@gmail.com',8787878,30000,'Male'),
(1006,'Nijam','Tea_cullector','nijamniju657@gmail.com',53445878,30000,'Male'),
(1007,'Jamil','Worker','jamil78@gmail.com',33445878,15000,'Male');
SELECT*FROM Employees;


INSERT INTO `Tea_Suplies`
VALUES
(2001,'Maloti','Jagdol','malotidd3@gmail.com',0009483),
(2002,'Joli','Bhitorgorh','jolirr4@gmail.com',908896),
(2003,'Hanif','Jalasi','hanif00@gmail.com',234069),
(2004,'Kumar','Harivanga','kumarjj2@gmail.com',86787),
(2005,'Raju','Amtola','rajupjm9@gmail.com',9698658); 
SELECT*FROM Tea_Suplies;


INSERT INTO `Tea_Customer`
VALUES
(3001,'Golam','Sylet','golamdd3@gmail.com',00098583),
(3002,'Jolil','Dhaka','jolilyu4@gmail.com',957896),
(3003,'Hakim','Dhaka','hakimvv00@gmail.com',2989069),
(3004,'Kobir','Borishal','kobirttt@gmail.com',777787),
(3005,'Romesh','Rangpur','romeshjjj99@gmail.com',95558658);
SELECT*FROM Tea_Customer;


INSERT INTO `Factory`
VALUES
(010,01,001,1001,2001,3001),
(020,02,002,1002,2002,3002);
SELECT*FROM Factory;
