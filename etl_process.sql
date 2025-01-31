-- etl_process.sql
-- Step 1: Create a table to store raw data
CREATE TABLE raw_data (
    Name VARCHAR(50),
    Age INT,
    City VARCHAR(50)
);

-- Step 2: Insert sample data into the table
INSERT INTO raw_data (Name, Age, City)
VALUES
    ('Alice', 25, 'New York'),
    ('Bob', 30, 'Los Angeles'),
    ('Charlie', 35, 'Chicago');

-- Step 3: Create a table to store processed data
CREATE TABLE processed_data (
    Name VARCHAR(50),
    Age INT,
    City VARCHAR(50),
    Age_Next_Year INT
);

-- Step 4: Transform and load data into the processed table
INSERT INTO processed_data (Name, Age, City, Age_Next_Year)
SELECT
    Name,
    Age,
    City,
    Age + 1 AS Age_Next_Year
FROM raw_data;

-- Step 5: Query the processed data
SELECT * FROM processed_data;