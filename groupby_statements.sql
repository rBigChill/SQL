# Most common aggregate functions:
    AVG(): returns average value as floating point
    COUNT(): returns number of values
    MAX(): retunrs maximum value
    MIN(): returns minimum value
    SUM(): returns the sum of all values

# Happens only in SELECT and HAVING

    # Examples
    SELECT MIN(cost) from finances 
    SELECT MAX(cost) from finances
    SELECT AVG(cost) from finances

# ROUND() takes in value to round, decimal places
    SELECT ROUND(AVG(cost),2) from finances

    SELECT SUM(cost) from finances

# GROUP BY: aggreate columns by category
# must appear right after a FROM or WHERE statements
    SELECT category_col, AGG(data_col)
    FROM table
    WHERE category_col != 'A'
    GROUP BY category_col

# WHERE should not refer to the aggregation result
    SELECT company, division, SUM(sales)
    FROM finance_table
    GROUP BY company, division

# HAVING: filter after an aggregation
    SELECT company, SUM(sales)
    FROM finance_table
    GROUP BY company
    HAVING SUM(sales) > 1000
