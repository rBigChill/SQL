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

# example
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

# example
INSERT INTO account(username, password, email, create_on)
values
('Jose', 'password', 'jose@mail.com', CURRENT_TIMESTAMP)

# UPDATE: change values in column
UPDATE table
SET column1 = value1, column2 = value2, ...,
WHERE
condition

# example
UPDATE account
SET last_login = CURRENT_TIMESTAMP
WHERE last_login IS NULL
