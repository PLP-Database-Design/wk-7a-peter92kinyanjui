Q1:
-- Step 1: Create the New Table -fFirst, we will create a new table that adheres to 1NF.

CREATE TABLE ProductDetail (
    OrderID INT,
    CustomerName VARCHAR(100),
    Products VARCHAR(100)
);

-- Step 2: Insert Data into the New Table
-- we need to insert the data into the new table, ensuring that each product is represented in its own row.

INSERT INTO ProductDetail (OrderID, CustomerName, Products) VALUES
(101, 'John Doe', 'Laptop'),
(101, 'John Doe', 'Mouse'),
(102, 'Jane Smith', 'Tablet'),
(102, 'Jane Smith', 'Keyboard'),
(102, 'Jane Smith', 'Mouse'),
(103, 'Emily Clark', 'Phone');

-- verify the data in the new table to ensure it is in 1NF.
SELECT * FROM ProductDetail;



Q2:
-- Step 1: Create the Orders Table this table will contain the unique OrderID and the associated CustomerName.
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

-- Step 2: Create the OrderProducts Table-This table will contain the OrderID, Product, and Quantity.
--  Here, OrderID and Product together will form the composite primary key.


CREATE TABLE OrderProducts (
    OrderID INT,
    Product VARCHAR(100),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
-- Step 3: Insert Data into the New Tables 

INSERT INTO Orders (OrderID, CustomerName) VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');

-- Insert into OrderProducts Table

INSERT INTO OrderProducts (OrderID, Product, Quantity) VALUES
(101, 'Laptop', 2),
(101, 'Mouse', 1),
(102, 'Tablet', 3),
(102, 'Keyboard', 1),
(102, 'Mouse', 2),
(103, 'Phone', 1);

-- verify the data in the new tables to ensure they are in 2NF.
SELECT * FROM Orders;
SELECT * FROM OrderProducts;

