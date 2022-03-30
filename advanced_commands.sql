# Timestamps and Extract
# Displaying current time information

    TIME: only time
    DATE: only date
    TIMESTAMP: date and time
    TIMESTAMPZ: date, time, and timezone

# Functions and operations
    TIMEZONE
    NOW
    TIMEOFDAY
    CURRENT_TIME
    CURRENT_DATE

# SHOW Requested info
    SHOW ALL
    SHOW TIMEZONE

# current timestamp info
    SELECT NOW()

# Returns above as string
    SELECT TIMEOFDAY()

    SELECT CURRENT_TIME
    SELECT CURRENT_DATE

# Extracting date and time

    EXTRACT(): extract or obtain sub-component of a date value
        Year
        Month
        Day
        Week
        Quarter

    EXTRACT(YEAR FROM date_col)

    AGE(): Calculates and returns the current age given a timestamp
    AGE(date_col)

    TO_CHAR(): convert data types to text
    TO_CHAR(date_col, 'mm-dd-yyyy')

    # Examples
    SELECT EXTRACT(YEAR FROM payment_date) AS myyear
    FROM payment

    SELECT AGE(pay_date)
    FROM payment

    SELECT TO_CHAR(pay_date, 'mm-dd-yyyy')
    FROM payment

# Math functions and operators
    See documentation

# String functions and operators
    See documentation

# SubQuery: construct complex queries; query a query
# performed first
    SELECT student, grade
    FROM test_scores
    WHERE grade > (SELECT AVG(grade)
    FROM test_scores)

    SELECT student, grade
    FROM test_scores
    WHERE student IN
    (SELECT student
    FROM honor_roll_table)

# EXISTS: test for existence of rows in a subquery
    SELECT column_name
    FROM table_name
    WHERE EXISTS
    (SELECT column_name 
    FROM table_name
    WHERE condition)

# Self-Join: table is joined to itself
# JOIN
    SELECT tableA.col, tableB.col
    FROM table AS tableA
    JOIN table AS tableB ON
    tableA.some_col = tableB.other_col

    # Example
    SELECT emp.name, report.name AS rep
    FROM employees AS emp
    JOIN employees AS report ON
    emp.emp_col = report.report_col
