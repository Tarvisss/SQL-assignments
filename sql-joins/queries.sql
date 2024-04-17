-- write your queries here


--Query One
--Join the two tables so that every column and record appears, regardless of if there is not an owner_id .
-- Your output should look like this:
-- o is an alias for owner, this is a short hand method for writing queries
--  v is an alias for vehicles, this is a short hand method for writing queries
SELECT * FROM owners o  FULL JOIN vehicles v ON o.id = v.owner_id;

--Query Two
--Count the number of cars for each owner. Display the owners first_name , last_name and count of vehicles. 
--The first_name should be ordered in ascending order. Your output should look like this:

SELECT first_name, last_name, COUNT(owner_id)
-- o is an alias for owner, this is a short hand method for writing queries
FROM owners o 
--  v is an alias for vehicles, this is a short hand method for writing queries
JOIN vehicles v on o.id=v.owner_id 
GROUP BY (first_name, last_name) 
ORDER BY first_name;

--Query three
--Count the number of cars for each owner and display the average price for each of the cars as integers. 
--Display the owners first_name , last_name, average price and count of vehicles. 
--The first_name should be ordered in descending order. Only display results with more than one vehicle and an average price greater than 10000. 

--the ROUND() function is commonly used to round a numeric value to a specified number of decimal places.
--AVG() function in SQL is used to calculate the average value of a set of values within a column. 
--It's commonly used in conjunction with the SELECT statement to retrieve the average of a specific column in a table.
SELECT first_name, last_name, ROUND(AVG(price)) as average_price, COUNT(owner_id) 
FROM owners o 
JOIN vehicles v on o.id=v.owner_id 
GROUP BY (first_name, last_name) 
HAVING COUNT(owner_id) > 1 AND ROUND(AVG(price)) > 10000 
ORDER BY first_name DESC;