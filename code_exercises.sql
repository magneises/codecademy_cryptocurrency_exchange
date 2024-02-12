 -- EXERCISE 1
 -- TABLE INFORMATION
SELECT *
FROM transactions;

-- EXERCISE 2
 -- TABLE NAME: transactions
 -- TABLE COLUMNS: id, user_id, date, currency, money_in, money_out
 -- total money out: 15047
 -- total money in: 6000

 -- EXERCISE 3
 -- find total money in and out
SELECT SUM(money_in) AS 'Total Money In', SUM(money_out) AS 'Total Money Out'
FROM transactions;


-- EXERCISE 4
-- how many money-in transactions are in this table? how many money_in transactions are in this table where 'BIT' is the currency? 
SELECT COUNT(money_in) AS 'Money In Transactions'
FROM transactions;

SELECT COUNT(money_in) AS 'BIT Money In Transactions'
FROM transactions
WHERE currency = 'BIT';


-- EXERCISE 5
-- What was the largest transaction in this whole table?
SELECT *
FROM transactions
LIMIT 10;

SELECT MAX(money_in), MAX(money_out)
FROM transactions;


-- EXERCISE 6
-- What is the average money_in in the table for the currency Ethereum (‘ETH’)?
SELECT AVG(money_in)
FROM transactions
WHERE currency = 'ETH';


-- EXERCISE 7
-- Let’s build a ledger for the different dates.
-- Select date, average money_in, and average money_out from the table.
-- And group everything by date.
SELECT MAX(date), MIN(date)
FROM transactions;

SELECT date, AVG(money_in), AVG(money_out)
FROM transactions
GROUP BY date;


-- EXERCISE 8
-- To make the previous query easier to read, round the averages to 2 decimal places.
-- Give the column aliases using AS for readability.

SELECT MAX(date), MIN(date)
FROM transactions;

SELECT date AS 'Date',
  ROUND(AVG(money_in),2) AS 'Avg. Money In',
  ROUND(AVG(money_out),2) AS 'Avg. Money Out'
FROM transactions
GROUP BY date;









