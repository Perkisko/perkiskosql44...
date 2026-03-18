source dizin/load_adr_.sql
source dizin/load_adr_emp

SELECT * FROM address LIMIT 20;
SELECT * FROM adr_emp LIMIT 20;

SELECT COUNT(*) address_count FROM address;
SELECT COUNT(*) AS adr_emp_count FROM adr_emp;


ALTER TABLE adr_emp
DROP FOREIGN KEY name;

ALTER TABLE address
MODIFY adr_no INT NOT NULL AUTO_INCREMENT;
ALTER TABLE address AUTO_INCREMENT = 91001;


INSERT CODES


ALTER TABLE adr_emp
ADD CONSTRAINT name
FOREIGN KEY(adr_no) REFERENCES address(adr_no);

SELECT ALL FROM address WHERE adr_no>91000;


ALTER RABLE adr_emp
DROP FOREIGN KEY name;

INSERT CODES

ALTER TABLE adr_emp
ADD_CONSTRAINT name
FOREIGN KEY(adr_no) REFERENCES address(adr_no);



UPDATE address 
SET city = "Gydnia",
	street="Swietojanska",
	house_no="55"	
WHERE adr_no = 91001;



UPDATE address
SET city = "Bialystok",
street="Lipowa",
house_no="18"
WHERE adr_no=91002;



UPDATE adr_emp
SET adr_type ="T"
WHERE adr_no IN(91001,91002) AND adr_type="P";



UPDATE adr_emp
SET adr_type="P"
WHERE adr_no IN(91002,91001) AND adr_type="T";



UPDATE adr_emp
SET adr_type = CASE
	WHEN adr_type = "P" THEN "T"
	WHEN adr_type = "T" THEN "P"
END
WHERE adr_no IN (91001, 91002);





ALTER TABLE adr_emp
DROP FOREIGN KEY name;

ALTER TABLE adr_emp
ADD CONSTRAINT name
FOREIGN KEY(adr_no) REFERENCES address(adr_no) ON DELETE CASCADE;

DELETE FROM address
WHERE adr_no IN (90139, 90791);



SELECT * FROM adr_emp ORDER BY emp_no LIMIT 10;


DELETE FROM employees
WHERE emp_no IN(10001, 10002);

SELECT * FROM adr_emp WHERE emp_no IN (10001, 10002);


the rows in adr_emp for these employees disappear automatically 

because adr_emp.emp_no is a foreign key to employees(emp_no) with ON DELETE CASCADE. 


DELETE FROM address WHERE adr_no IN(9001,9002);

SELECT *
FROM address
ORDER BY adr_no
LIMIT 10;


all assignments in adr_emp for these addresses are automatically removed 

because adr_emp.adr_no references address(adr_no) with ON DELETE CASCADE. 











