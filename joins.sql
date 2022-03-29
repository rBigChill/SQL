# How to combine tables

# AS statement allows to create an alias for a column or result
# executed and end of query
SELECT column AS new_name
FROM table

SELECT SUM(column) AS new_name
FROM table

# INNER JOIN returns the set of records marching both tables
# [INNER]JOIN
SELECT * FROM TableA
INNER JOIN TableB
ON TableA.col = Table.col

# Example
SELECT * FROM Registrations
INNER JOIN Logins
ON Registraions.name = Logins.name

# OUTER JOINs: deal with values present in 1 table

# FULL OUTER JOIN: grabs everything
SELECT * FROM TableA
FULL OUTER JOIN TableB
ON TableA.col = TableB.col

# FULL OUTER JOIN with WHERE: rows unique to either table
# opposite of INNER JOIN
SELECT * FROM TalbeA
FULL OUTER JOIN TableB
ON TableA.col = TableB.col
WHERE TableA.id IS null OR TableB.id IS null

# LEFT OUTER JOIN: returns set of records in left table
# LEFT [OUTER] JOIN
SELECT * FROM TableA
LEFT OUTER JOIN TableB
ON TableA.col = TableB.col

# returns unique items in LEFT table 
SELECT * FROM TableA
LEFT OUTER JOIN TableB
ON TableA.col = TableB.col
WHERE TableB.id IS nul

# RIGHT OUTER JOIN returns set of records in right table
# RIGHT [OUTER] JOIN
SELECT * FROM TableA
RIGHT OUTER JOIN TableB
ON TableA.col = TableB.col

# returns unique items in right table 
SELECT * FROM TableA
RIGHT OUTER JOIN TableB
ON TableA.col = TableB.col
WHERE TableA.id IS nul

# UNION: combine results of two or more SELECT statements
SELECT column_name(s) FROM table1
UNION
SELECT column_name(s) FROM table2
