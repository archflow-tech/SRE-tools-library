# Mysql Cheat Sheet

 
## Data Definition Language (DDL)

| Command | Description |
| --- | --- |
| CREATE DATABASE | Creates a new database |
| ALTER DATABASE | Modifies a database |
| DROP DATABASE | Deletes a database |
| CREATE TABLE | Creates a new table |
| ALTER TABLE | Modifies a table structure |
| DROP TABLE | Deletes a table |
| CREATE INDEX | Creates an index on a table |
| DROP INDEX | Deletes an index from a table |

## Data Manipulation Language (DML)

| Command | Description |
| --- | --- |
| SELECT | Retrieves data from one or more tables |
| INSERT INTO | Inserts new records into a table |
| UPDATE | Modifies existing records in a table |
| DELETE FROM | Deletes records from a table |

## Data Control Language (DCL)

| Command | Description |
| --- | --- |
| GRANT | Grants privileges to a user |
| REVOKE | Revokes privileges from a user |

## Transaction Control Language (TCL)

| Command | Description |
| --- | --- |
| COMMIT | Saves the changes made in a transaction |
| ROLLBACK | Reverts the changes made in a transaction |
| SAVEPOINT | Sets a savepoint within a transaction |
| RELEASE SAVEPOINT | Removes a savepoint within a transaction |

## Data Query Language (DQL)

| Command | Description |
| --- | --- |
| WHERE | Filters records based on a condition |
| GROUP BY | Groups rows based on a column |
| HAVING | Filters groups based on a condition |
| ORDER BY | Sorts the result set |
| JOIN | Combines rows from two or more tables based on a related column |
| UNION | Combines the result sets of two or more SELECT statements |
| LIMIT | Limits the number of rows returned in a result set |
| DISTINCT | Returns unique values in a column |
| AVG | Calculates the average value of a column |
| SUM | Calculates the sum of values in a column |
| COUNT | Counts the number of rows or non-null values in a column |
| MAX | Returns the maximum value in a column |
| MIN | Returns the minimum value in a column |
| IN | Checks if a value matches any value in a list |
| NOT IN | Checks if a value does not match any value in a list |
| BETWEEN | Checks if a value is within a range |
| LIKE | Searches for a specified pattern in a column |
| IS NULL | Checks if a value is NULL |
| IS NOT NULL | Checks if a value is not NULL |

## Data Modification Language (DML)

| Command | Description |
| --- | --- |
| TRUNCATE TABLE | Deletes all records from a table |
| DEFAULT | Sets a default value for a column |
| SET | Assigns a value to a variable |
| INSERT INTO SELECT | Inserts data from one table into another |
| REPLACE INTO | Inserts a new record or replaces an existing record |
| DELETE JOIN | Deletes rows from multiple tables |
| UPDATE JOIN | Updates rows in one table based on another table |

## Database Administration Commands

| Command | Description |
| --- | --- |
| SHOW DATABASES | Lists all databases |
| SHOW TABLES | Lists all tables in a database |
| SHOW COLUMNS | Lists all columns in a table |
| SHOW INDEXES | Lists all indexes in a table |
| SHOW CREATE TABLE | Displays the CREATE TABLE statement for a table |
| SHOW GRANTS | Displays the privileges granted to a user |
| SHOW PROCESSLIST | Lists the active database connections |
| SHOW STATUS | Provides various status information about the server |
| SHOW VARIABLES | Lists the server configuration variables |
| SHOW TABLE STATUS | Displays information about tables in a database |
| SHOW TRIGGERS | Lists all triggers in a database |
| SHOW EVENTS | Lists all scheduled events in a database |
| SHOW FUNCTION STATUS | Displays information about user-defined functions |
| SHOW PROCEDURE STATUS | Displays information about stored procedures |
| SHOW CHARACTER SET | Lists all character sets supported by the server |
| SHOW COLLATION | Lists all collations supported by the server |
| SHOW CREATE DATABASE | Displays the CREATE DATABASE statement for a database |
| SHOW CREATE FUNCTION | Displays the CREATE FUNCTION statement for a function |
| SHOW CREATE PROCEDURE | Displays the CREATE PROCEDURE statement for a procedure |
| SHOW CREATE TRIGGER | Displays the CREATE TRIGGER statement for a trigger |
| SHOW CREATE EVENT | Displays the CREATE EVENT statement for an event |
| SHOW CREATE VIEW | Displays the CREATE VIEW statement for a view |
| SHOW CREATE USER | Displays the CREATE USER statement for a user |
| SHOW GRANTS FOR | Displays the privileges granted to a specific user |
| SHOW PRIVILEGES | Lists the available privileges |
| SHOW STORAGE ENGINES | Lists the available storage engines |
| SHOW ENGINE | Provides information about a specific storage engine |
| SHOW WARNINGS | Lists the most recent warnings |
| SHOW ERRORS | Lists the most recent errors |
| SHOW BINLOG EVENTS | Displays events from the binary log |
| SHOW MASTER STATUS | Provides information about the binary log |
| SHOW SLAVE STATUS | Provides information about the replication slave |

## Backup and Restore Commands

| Command | Description |
| --- | --- |
| mysqldump | Exports the database or selected tables to a backup file |
| mysql | Restores a database or backup file into the server |

## User and Privilege Management Commands

| Command | Description |
| --- | --- |
| CREATE USER | Creates a new user account |
| DROP USER | Deletes a user account |
| ALTER USER | Modifies a user account |
| SET PASSWORD | Sets or changes the password for a user |
| GRANT | Grants privileges to a user |
| REVOKE | Revokes privileges from a user |
| FLUSH PRIVILEGES | Reloads the privilege tables |

## Table Maintenance Commands

| Command | Description |
| --- | --- |
| ANALYZE TABLE | Analyzes and stores index statistics for a table |
| OPTIMIZE TABLE | Reorganizes table storage to reclaim unused space |
| REPAIR TABLE | Repairs a corrupted table |

## Index Management Commands

| Command | Description |
| --- | --- |
| CREATE INDEX | Creates an index on a table |
| ALTER TABLE ... ADD INDEX | Adds an index to an existing table |
| ALTER TABLE ... DROP INDEX | Removes an index from a table |

## View Management Commands

| Command | Description |
| --- | --- |
| CREATE VIEW | Creates a virtual table based on the result of a query |
| ALTER VIEW | Modifies the definition of a view |
| DROP VIEW | Deletes a view |

## Stored Procedures and Functions Commands

| Command | Description |
| --- | --- |
| CREATE PROCEDURE | Creates a stored procedure |
| ALTER PROCEDURE | Modifies a stored procedure |
| DROP PROCEDURE | Deletes a stored procedure |
| CREATE FUNCTION | Creates a user-defined function |
| ALTER FUNCTION | Modifies a user-defined function |
| DROP FUNCTION | Deletes a user-defined function |

## Event Management Commands

| Command | Description |
| --- | --- |
| CREATE EVENT | Creates a scheduled event |
| ALTER EVENT | Modifies a scheduled event |
| DROP EVENT | Deletes a scheduled event |
| EVENT SCHEDULER | Starts or stops the event scheduler |

Apologies for the inconvenience. Here are additional MySQL commands:

## Database Connection and Management Commands

| Command | Description |
| --- | --- |
| USE | Specifies the database to be used |
| SHOW DATABASES | Lists all databases |
| CREATE DATABASE | Creates a new database |
| ALTER DATABASE | Modifies a database |
| DROP DATABASE | Deletes a database |

## Table and Column Management Commands

| Command | Description |
| --- | --- |
| SHOW TABLES | Lists all tables in a database |
| CREATE TABLE | Creates a new table |
| ALTER TABLE | Modifies a table structure |
| DROP TABLE | Deletes a table |
| TRUNCATE TABLE | Deletes all records from a table |
| ADD COLUMN | Adds a new column to an existing table |
| MODIFY COLUMN | Modifies the properties of a column |
| DROP COLUMN | Deletes a column from a table |
| RENAME TABLE | Renames a table |

## Data Retrieval Commands

| Command | Description |
| --- | --- |
| SELECT | Retrieves data from one or more tables |
| WHERE | Filters records based on a condition |
| GROUP BY | Groups rows based on a column |
| HAVING | Filters groups based on a condition |
| ORDER BY | Sorts the result set |
| LIMIT | Limits the number of rows returned in a result set |
| JOIN | Combines rows from two or more tables based on a related column |
| UNION | Combines the result sets of two or more SELECT statements |
| DISTINCT | Returns unique values in a column |
| IN | Checks if a value matches any value in a list |
| BETWEEN | Checks if a value is within a range |
| LIKE | Searches for a specified pattern in a column |
| IS NULL | Checks if a value is NULL |
| IS NOT NULL | Checks if a value is not NULL |

## Data Manipulation Commands

| Command | Description |
| --- | --- |
| INSERT INTO | Inserts new records into a table |
| UPDATE | Modifies existing records in a table |
| DELETE FROM | Deletes records from a table |

## Aggregate Functions

| Command | Description |
| --- | --- |
| AVG | Calculates the average value of a column |
| SUM | Calculates the sum of values in a column |
| COUNT | Counts the number of rows or non-null values in a column |
| MAX | Returns the maximum value in a column |
| MIN | Returns the minimum value in a column |

## Miscellaneous Commands

| Command | Description |
| --- | --- |
| DESCRIBE | Provides information about the columns in a table |
| SHOW INDEX | Lists the indexes in a table |
| SHOW CREATE TABLE | Displays the CREATE TABLE statement for a table |
| SET | Assigns a value to a variable |
| DELIMITER | Changes the delimiter used in stored procedures |
| COMMIT | Saves the changes made in a transaction |
| ROLLBACK | Reverts the changes made in a transaction |

Please note that this is not an exhaustive list of all MySQL commands, but it covers many commonly used ones. It's recommended to consult the official MySQL documentation for more details and specific use cases.