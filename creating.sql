# Return
RETURNING value

# Data Types
    Boolean
    Character
    Numeric
    Temporal
    SERIAL: create sequence object PK

    UUID
    Array
    JSON
    Hstore
    network address
    geometric data

# Consider which data types should be used
# Plan for long term storage

# Primary key: column or a group of columns used to identify a row
# Foreign key: uniquely identifies a row in another table

# Constraints: fules enfored on data columns
# to prevent invalid data from being entered
# Column constraints
# Table constraints
# NOT NULL: column cannot have null value
# UNIQUE: ensures values in a column are different
# CHECK: values in a column satisfy certain conditions
# EXCLUSION: if two+ rows are compared on specified column or expression
    using specififed operator, not all comparisons return TRUE

# Table constraints
    CHECK(conditions): check a condition when inserting or updating data
    REFERENCES: constrain the value stored in the column that must exist in
        a column in another table
    UNIQUE(column_list): unique within multiple columns
    PRIMARY KEY(column_list): define PK that consist of multiple columns

# CREATE: create a table
    CREATE TABLE table_name(
    column_name TYPE column_contraints,
    column_name TYPE column_contraints,
    table_constraint table_constraint
    ) INHERITS existing_table_name

<<<<<<< HEAD
    # example
=======
# example
>>>>>>> 7460623c9831e941809c13061caa2ec65dd06bbb
    CREATE TABLE players(
    player_id SERIAL PRIMARY KEY,
    age SMALLINT NOT NULL,
    table_constraint table_constraint
    ) INHERITS existing_table_name

    CREATE TABLE account_job(
    user_id INTEGER REFERENCES account(user_id),
    job_id INTEGER REFERENCES job(job_id),
    hire_date TIMESTAMP
    )

# INSERT: add rows to table
    INSERT INTO table (column1, column2, ...)
    VALUES
        (value1, value2, ...)
        (value1, value2, ...)

<<<<<<< HEAD
    # example
=======
# example
>>>>>>> 7460623c9831e941809c13061caa2ec65dd06bbb
    INSERT INTO account(username, password, email, create_on)
    values
    ('Jose', 'password', 'jose@mail.com', CURRENT_TIMESTAMP)

# UPDATE: change values in column
    UPDATE table
    SET column1 = value1, column2 = value2, ...,
    WHERE
    condition
<<<<<<< HEAD

    # example
    UPDATE account
    SET last_login = CURRENT_TIMESTAMP
    WHERE last_login IS NULL
=======

# example
    UPDATE account
    SET last_login = CURRENT_TIMESTAMP
    WHERE last_login IS NULL

# DELETE: remove rows
    DELETE FROM table
    WHERE row_id = 1

# ALTER: changes to existing table structure
    ALTER TABLE table_name
    action

# example
    ALTER TABLE information
    RENAME TO new_info

    ALTER TABLE information
    RENAME COLUMN person TO people

    ALTER TABLE new_info
    ALTER COLUMN people DROP NOT NULL

# DROP: remove column from table
    ALTER TABLE table_name
    DROP COLUMN col_name

    ALTER TABLE table_name
    DROP COLUMN col_name CASCADE

    ALTER TABLE table_name
    DROP COLUMN IF EXISTS col_name

    ALTER TABLE table_name
    DROP COLUMN col_one,
    DROP COLUMN col_two

# CHECK: create customized constraints that adhere to certain condition
    CREATE TABLE example(
    ex_id SERIAL PRIMARY KEY,
    age SMALLINT CHECK (age > 21),
    parent_age SMALLINT CHECK(
    parent_age > age)
    )
>>>>>>> 7460623c9831e941809c13061caa2ec65dd06bbb
