# CASE: execute code when a condition is met
    # General case statement
    CASE
    WHEN condition1 THEN result1
    WHEN condition2 THEN result2
    ELSE some_other_result
    END

    SELECT a,
    CASE 
    WHEN a = 1 THEN 'one'
    WHEN a = 2 THEN 'two'
    ELSE 'other' AS label
    END
    FROM test

    # Case expression statement
    CASE expression
    WHEN value1 THEN result1
    WHEN value2 THEN result2
    ELSE some_other_result
    END

    SELECT a,
    CASE a 
    WHEN 1 THEN 'one'
    WHEN 2 THEN 'two'
    ELSE 'other'
    END
    FROM test

# COALESCE: Accepts unlimited number of arguments.
    returns first argument that is not null

    SELECT COALESCE (1, 2)

    SELECT item, (price - COALESCE(discount,0))
    AS final FROM table

# CAST: convert 1 data type to another
    
    Syntax for CAST function
    SELECT CAST('5' AS INTEGER)

    PostgreSQL CAST operator
    SELECT '5'::INTEGER

# NULLIF: takes in 2 inputs and returns NULL if both are equal
    else it will return 1st argument passed
    NULLIF(arg1, arg2)

# VIEW: create a view of a query
    
    CREATE VIEW name_of_view AS
    query

    CREATE OR REPLACE VIEW created_view AS
    query

    DROP VIEW created_view

    DROP VIEW IF EXISTS created_view

    ALTER VIEW created_view RENAME to new_view_name

# import and export

    # create the table to match the file
    CREATE TABLE simple(
    a INTEGER
    b INTEGER
    c INTEGER
    )

    Import the file using the import tool...
    Same with export
