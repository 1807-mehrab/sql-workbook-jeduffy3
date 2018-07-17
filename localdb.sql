-- SELECT
SELECT * FROM chinook.employee WHERE lastname = 'King';

SELECT * FROM chinook.employee WHERE firstname = 'Andrew' AND reportsto IS null;

-- ORDER BY
SELECT * FROM chinook.album ORDER BY title DESC;

SELECT firstname FROM chinook.customer ORDER BY city;

SELECT * FROM chinook.genre;

-- INSERT INTO
INSERT INTO chinook.genre(genreid, genre.name) VALUES (26, 'Rock Jazz');
INSERT INTO chinook.genre(genreid, genre.name) VALUES (27, 'Soft Jazz');

SELECT * FROM chinook.genre;

SELECT * FROM chinook.customer;

INSERT INTO chinook.customer(customerid, firstname, lastname, company, address, city, state, country, postalcode, phone, fax, email, supportrepid) 
VALUES(60, 'John', 'Smith', 'Microsoft', '18 Springfield Rd', 'Charleston', 'SC', 'United States', 29464, '+1 843 881-5555', null, 'fake@email.com', 5);
INSERT INTO chinook.customer(customerid, firstname, lastname, company, address, city, state, country, postalcode, phone, fax, email, supportrepid) 
VALUES(61, 'Joe', 'Jackson', 'Oracle', '18 Fake Rd', 'Mount Pleasant', 'SC', 'United States', 29464, '+1 843 555-5555', null, 'fake@email.com', 4);

-- UPDATE
UPDATE chinook.customer SET firstname = 'Robert', lastname = 'Walter' WHERE firstname = 'Aaron' AND lastname = 'Mitchell';

SELECT * FROM chinook.customer;

SELECT * FROM chinook.artist;

UPDATE chinook.artist SET name = 'CCR' WHERE name = 'Creedence Clearwater Revival';

SELECT * FROM chinook.employee;

-- LIKE
SELECT * FROM chinook.invoice WHERE billingaddress LIKE 'T%';

-- BETWEEN
SELECT * FROM chinook.invoice WHERE total BETWEEN 15 AND 50;

SELECT * FROM chinook.employee WHERE hiredate BETWEEN '01-JUN-2003' AND '01-MAR-2004';

-- DELETE
SELECT * FROM chinook.customer WHERE (lastname = 'Walter') AND (firstname = 'Robert');
SELECT * FROM chinook.invoice WHERE customerid = (SELECT customerid FROM chinook.customer WHERE (lastname = 'Walter') AND (firstname = 'Robert'));
SELECT * FROM chinook.invoiceline;

-- System Defined Functions
SELECT CURRENT_TIMESTAMP;

SELECT * FROM chinook.mediatype;

-- System Defined Aggregate Functions
SELECT AVG(total) FROM chinook.invoice;

SELECT MAX(unitprice) FROM chinook.track;

-- User Defined Scalar Functions
SELECT AVG(unitprice) FROM chinook.invoiceline;

-- User Defined Table Valued Functions
SELECT * FROM chinook.employee;