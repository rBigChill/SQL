# Does not have to be capitalized

SELECT:
    # Example syntax
    SELECT column_name FROM table_name

    # Grabs all colums
    SELECT * FROM table_name

DISTINCT:
    # List unique/distinct values in a column
    SELECT DISTINCT column FROM table
    SELECT DISTINCT column FROM table

    # For clarity
    SELECT DISTINCT(column) FROM table

COUNT:
    # Returns number of input rows that match query
    # Parenthasis are necessary
    SELECT COUNT(name) FROM table
    SELECT COUNT(choice) FROM table
    SELECT COUNT(*) FROM table

WHERE:
    # Specify conditions
    SELECT column1, column2
    FROM table
    WHERE conditions

    # Comparison operators
    =, >, <, >=, <=, <>, !=

    # Logical operators
    AND, OR, NOT

    # Example
    SELECT name 
    FROM table
    WHERE name='David'

    # Example
    SELECT name, choice
    FROM table
    WHERE name='David' AND choice='Red'

ORDER BY:
    # Sort rows after filter statement
    SELECT column1, column2
    FROM table
    ORDER BY column1 [ASC || DESC]

    # Example
    SELECT company, name, sales
    FROM table
    ORDER BY company, sales

LIMIT:
    # limit the number of rows returned
    # goes at the end/bottom
    SELECT * FROM payment
    WHERE amount != 0.00
    ORDER BY payment_date DESC
    LIMIT 10

BETWEEN:
    # Match a value against a range of values
    # value BETWEEN low AND high
    # combine value NOT BETWEEN low AND high
    SELECT * FROM payment
    WHERE amount BETWEEN 8 and 9

    SELECT * FROM payment
    WHERE amount NOT BETWEEN 8 and 9

IN:
    # Check for multiple possible value options
    SELECT color FROM table
    WHERE color IN('red','blue)

    SELECT color FROM table
    WHERE color NOT IN('red','blue)

LIKE and ILIKE:
    # Pattern matching against string data
    # ILIKE is case-insensitive

    # Percent %: Match any sequence
    WHERE name LIKE 'A%' = all names that begin with an 'A'
    WHERE name LIKE '%a' = all names that end with an 'a'

    # Underscore _: Match any single charactero
    WHERE title LIKE 'Mission Impossible _'

    # Complex patterns
    WHERE name LIKE '_her%'
    # Cheryl

    # Supports REGEX
