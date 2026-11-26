-- 1. Create a new database named "CompanyDB."
CREATE DATABASE CompanyDB;
GO

USE CompanyDB;
GO

-- 2. Create a schema named "Sales" within the "CompanyDB" database.
CREATE SCHEMA Sales;
GO

-- 3. Create a table named "employees" with columns:
--    * employee_id (INT) - use sequence instead of identity,
--    * first_name (VARCHAR),
--    * last_name (VARCHAR),
--    * salary (DECIMAL)
--    * Within the "Sales" schema.
CREATE SEQUENCE Sales.seq_employee_id
    AS INT
    START WITH 1
    INCREMENT BY 1;
GO

CREATE TABLE Sales.employees (
    employee_id INT NOT NULL
        CONSTRAINT DF_employees_employee_id
        DEFAULT (NEXT VALUE FOR Sales.seq_employee_id),
    first_name  VARCHAR(50)    NOT NULL,
    last_name   VARCHAR(50)    NOT NULL,
    salary      DECIMAL(10,2)  NULL,
    CONSTRAINT PK_employees PRIMARY KEY (employee_id)
);
GO

-- 4. Alter the "employees" table to add a new column named "hire_date" with the data type DATE.
ALTER TABLE Sales.employees
ADD hire_date DATE NULL;
GO

-- 5. Add mock data to this table using Mockaroo (https://www.mockaroo.com/).
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Carlie', 'Habershaw', 76264.4, '2019/11/11');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Morganne', 'Haslehurst', 44906.2, '2021/04/30');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Cary', 'McLuckie', 27059.0, '2020/03/31');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Bee', 'Finding', 77285.1, '2015/11/11');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Rodger', 'Baysting', 38612.5, '2017/09/29');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Langsdon', 'Ruilton', 53872.5, '2015/01/30');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Vidovic', 'Girton', 78694.5, '2023/02/15');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Lacie', 'Eakins', 68465.7, '2020/07/18');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Ryon', 'Gullyes', 69535.1, '2023/04/27');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Randene', 'Leebetter', 36189.2, '2024/12/23');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Zulema', 'Le feuvre', 26798.2, '2020/07/15');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Christophe', 'Cansdall', 81432.5, '2015/11/19');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Isahella', 'Catherick', 58652.1, '2023/07/09');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Creigh', 'Perview', 60303.1, '2022/07/22');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Goran', 'Clinning', 36949.2, '2016/02/02');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Billy', 'Starkings', 26206.7, '2016/01/30');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Giulio', 'Cowles', 42613.8, '2020/09/29');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Harland', 'Wisedale', 55234.9, '2019/11/25');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Les', 'Brittle', 31975.0, '2017/06/19');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Drucy', 'Ianni', 64292.4, '2015/09/16');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Clerkclaude', 'Stollen', 84968.5, '2019/01/06');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Gwendolin', 'Di Maria', 75225.7, '2023/03/08');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Gussi', 'Vasiljevic', 70191.3, '2019/01/19');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Laney', 'Blakeley', 49320.2, '2021/05/17');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Brose', 'Skillett', 79215.0, '2017/08/11');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Boone', 'Kippax', 57382.1, '2023/05/10');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Hedy', 'Cressy', 30181.1, '2016/09/25');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Adey', 'Philippet', 72107.6, '2015/08/27');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Erda', 'Bhar', 88936.9, '2023/08/04');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Adolphus', 'Jachtym', 57533.0, '2017/08/24');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Sollie', 'Koppelmann', 44572.9, '2021/12/21');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Emile', 'Charon', 32807.6, '2015/02/05');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Dayna', 'Freshwater', 58104.1, '2015/10/23');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Arielle', 'Goodfield', 48684.3, '2019/06/19');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Torie', 'Janout', 36240.7, '2023/09/09');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Oates', 'Bernli', 47016.7, '2020/04/10');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Lucho', 'Fominov', 86977.3, '2024/04/06');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Sonny', 'Klesse', 69614.7, '2018/03/12');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Seline', 'Chown', 66705.3, '2019/09/10');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Naomi', 'Davenhall', 75233.3, '2018/06/15');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Yorgos', 'Fuzzard', 44865.1, '2019/05/20');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Dorice', 'Gamlen', 81127.6, '2016/08/26');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Nestor', 'Reddy', 66617.8, '2024/10/08');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Aarika', 'Chasle', 53930.1, '2018/04/18');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Ferdinande', 'Burgin', 85908.8, '2021/05/02');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Muffin', 'Battell', 62412.3, '2015/04/28');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Tracey', 'Reynault', 42026.8, '2023/06/18');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Gordy', 'Bestman', 79954.4, '2020/02/21');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Meryl', 'Najera', 61916.1, '2017/10/20');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Krispin', 'Yearby', 31385.1, '2023/03/02');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Noel', 'Deeny', 60921.2, '2015/10/10');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Stacee', 'Duiguid', 74549.5, '2021/09/14');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Faunie', 'Huzzey', 28071.3, '2021/12/06');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Liliane', 'Eyckelbeck', 51921.4, '2017/04/14');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Lionel', 'Boland', 73256.4, '2022/08/15');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Gradeigh', 'Hoffman', 74145.9, '2020/03/14');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Kylen', 'Warrilow', 29836.1, '2021/02/24');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Cari', 'Springett', 36525.6, '2019/08/20');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Basia', 'Sperski', 41934.6, '2020/09/22');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Paulita', 'McGeechan', 74538.3, '2015/11/27');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Clemens', 'De La Cote', 27165.4, '2020/09/04');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Regina', 'Devennie', 51300.0, '2019/03/06');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Town', 'Gohn', 80345.0, '2016/11/23');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Daisy', 'Lett', 81316.4, '2024/10/28');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Rip', 'Sweetman', 80549.4, '2017/04/07');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Brett', 'Mulligan', 25051.7, '2021/11/18');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Phaedra', 'Clewlow', 48717.0, '2020/11/13');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Fania', 'Loisi', 72133.6, '2020/12/31');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Othilie', 'Kelso', 56877.5, '2019/03/22');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Juditha', 'Hesbrook', 47204.9, '2021/10/10');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Catina', 'Ord', 81436.2, '2024/05/24');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Bink', 'Merle', 44187.1, '2024/02/15');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Lila', 'Barrat', 25243.1, '2018/07/03');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Hermine', 'Esel', 28005.5, '2021/11/03');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Irving', 'Von Helmholtz', 74233.0, '2015/12/14');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Julianne', 'Guilliland', 50482.3, '2024/06/13');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Zolly', 'Attle', 23167.6, '2024/06/15');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Sherye', 'Strickler', 84423.5, '2015/01/17');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Baldwin', 'Hacon', 53669.0, '2020/02/01');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Kimble', 'Hoggins', 37734.0, '2024/04/25');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Petunia', 'Dobey', 63669.4, '2018/11/24');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Seamus', 'Zemler', 31492.7, '2018/08/12');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Phillis', 'Brymham', 34501.5, '2017/03/17');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Rafaela', 'Kristiansen', 65856.8, '2017/08/09');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Liz', 'Prinn', 36464.6, '2015/09/06');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Robyn', 'Segges', 71424.3, '2021/09/08');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Devy', 'Latour', 55445.4, '2023/09/02');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Sharla', 'Shivell', 48537.7, '2015/05/20');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Eve', 'Digweed', 44906.8, '2023/03/08');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Ollie', 'Blakey', 68944.8, '2018/12/03');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Caria', 'Olliver', 86776.6, '2020/10/13');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Shena', 'Blase', 45382.7, '2021/02/06');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Nanni', 'Willgoose', 28366.4, '2019/08/23');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Filmer', 'Smallthwaite', 52263.6, '2018/10/16');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Gerladina', 'Glasser', 51434.0, '2020/07/30');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Darline', 'Ciccetti', 50954.3, '2016/03/15');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Del', 'Pusey', 34689.5, '2019/03/01');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Giulio', 'Abrahamsen', 37424.5, '2015/09/05');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Rhetta', 'Stansby', 72427.0, '2022/08/23');
INSERT INTO Sales.employees (first_name, last_name, salary, hire_date) VALUES ('Geoffry', 'Curragh', 61568.7, '2015/03/11');

GO

SELECT * FROM Sales.employees;