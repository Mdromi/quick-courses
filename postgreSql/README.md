# PostgreSQL

PostgreSQL is an open-source relational database management system (RDBMS) that provides powerful features and functionality for managing and organizing data. It was initially released in 1989 as a project at the University of California, Berkeley, and has since evolved into a mature and robust database platform that is widely used in enterprise applications, web applications, and data warehousing.

Some of the key features of PostgreSQL include:

- ACID compliance: PostgreSQL guarantees the consistency and reliability of data through its support of the ACID (Atomicity, Consistency, Isolation, Durability) properties.

- Extensibility: PostgreSQL allows users to create custom data types, functions, and operators, enabling them to add new capabilities to the database system.

- Concurrency: PostgreSQL supports multi-version concurrency control (MVCC), which allows multiple users to access the same data simultaneously without conflicts or data loss.

- Replication: PostgreSQL supports both asynchronous and synchronous replication, enabling data to be distributed across multiple servers for high availability and scalability.

- Advanced indexing: PostgreSQL offers a wide range of indexing options, including B-tree, hash, GiST, and GIN, as well as full-text search capabilities.

- Compatibility: PostgreSQL is compatible with a wide range of programming languages, including C/C++, Java, Perl, Python, Ruby, and many others.

PostgreSQL is a popular choice for organizations that need a powerful, flexible, and reliable database management system. It is used by companies such as Apple, Cisco, Fujitsu, and the US Federal Aviation Administration, among many others.

## How to install PostgreSQL ubuntu

- Run the following command to update the package list:

  `sudo apt-get update`

- Run the following command to install PostgreSQL:

  `sudo apt-get install postgresql postgresql-contrib`

- Once the installation is complete, you can check the status of the PostgreSQL service using the following command:

  `systemctl status postgresql`

- If the service is not running, you can start it using the following command:

  `sudo systemctl start postgresql`

## To create a new PostgreSQL database and user, follow these steps:

- Open the PostgreSQL command-line interface by running the following command:

  `sudo -u postgres psql`

- Create a new database by running the following command:

  `CREATE DATABASE dbname;`

- Create a new user by running the following command:

  `CREATE USER username WITH ENCRYPTED PASSWORD 'password';`

- Grant the new user permissions to access the new database by running the following command:

  `GRANT ALL PRIVILEGES ON DATABASE dbname TO username;`

- Exit the PostgreSQL command-line interface by running the following command:

  `\q`

## how to install pgadmin4

- Add the PostgreSQL Apt Repository to your system's package sources by running the following command:

  `sudo curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo apt-key add`

- Add the pgAdmin4 repository to your system's package sources by running the following command:

  `sudo sh -c 'echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'`

- Install pgAdmin4 by running the following command:

  `sudo apt install pgadmin4`

- Open pgadmin4

  `http://localhost/pgadmin4/browser/`

## psql cmd

- Remove DB
  ```
    DROP DATABASE databasename;
  ```
- All DB
  ```
  \l
  ```
- Change DB
  ```
  \c db-name
  ```

## Table Cmd

- Describe or view current table
  ```
  \d | \d table-name
  ```
- Drop table
  `DROP TABLE table-name;`
- Just show table

  ```
  \dt
  ```

- Table Row
  ```
  SELECT * FROM table-name;
  ```
- Insert table
  ```
  \i file-path/file.sql
  ```
- Show file path
  ```
  pwd
  ```
- Sort Table col
  ```
  SELECT * FROM table-name ORDER BY col-name ASC | DESC;
  ```
- Distinct(Unique value)
  ```
  SELECT DISTINCT col-name FROM table-name ORDER BY col-name;
  ```
- Where Clause and AND
  ```
  SELECT * FROM table-name WHERE col-name = 'value' AND (col-name = 'value' OR col-name = 'value');
  ```
- Comparison Operator
  ```
  >, <>, <, =, + etc...
  ```
- Limit, Offset & Fetch
  ```
  SELECT * FROM table-name LIMIT row-value;
  SELECT * FROM table-name OFFSET row-value LIMIT row-value;
  SELECT * FROM table-name OFFSET row-value FETCH FIRST row-value ROW ONLY;
  ```
- In
  ```
  SELECT * FROM table-name WHERE col-name IN('value');
  ```
- Between
  ```
  SELECT * FROM table-name WHERE col-name BETWEEN DATE '2022-11-25' AND '2023-03-06';
  ```
- Like and iLike
  ```
  SELECT * FROM table-name WHERE col-name LIKE '%.com';
  SELECT * FROM table-name WHERE col-name LIKE '%@google.%';
  SELECT * FROM table-name WHERE col-name LIKE '________@%';
  SELECT * FROM table-name WHERE col-name ILIKE 'p%';
  ```
- Group By
  ```
  SELECT col-name, COUNT(*) FROM table-name GROUP BY col-name;
  ```
- Group By Having
  ```
  SELECT col-name, COUNT(*) FROM table-name GROUP BY col-name HAVING COUNT(*) > 5 ORDER BY col-name;
  ```
- Calculating Min, Max & Average
  ```
  SELECT MAX(col-name) FROM table-name;
  SELECT MIN(col-name) FROM table-name;
  SELECT make, model, MIN(price) FROM car GROUP BY make, model;
  SELECT make, MIN(price) FROM car GROUP BY make;
  ```
- Sum
  ```
  SELECT SUM(col-name) FROM table-name;
  SELECT col-name, SUM(col-name) FROM table-name GROUP BY col-name;
  ```
- Arithmetic Operators(ROUND)
  ```
  SELECT id, make, price, ROUND(price * .10, 2), ROUND(price - (price * .10), 2) FROM car;
  ```

### How to create table with postgres

- Table fake data generator

  ```
  https://www.mockaroo.com/
  ```

- Table structure

```
CREATE TABLE table_name (
    Column name + data type + constraints if any
);
```

- Creating table without Constraints

```
CREATE TABLE person (
    id int,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(7),
    date_of_birth TIMESTAMP / DATE
);
```

- Creating table with Constraints

```
CREATE TABLE person (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender VARCHAR(7) NOT NULL,
    date_of_birth DATE NOT NULL,
    email VARCHAR(150)
);
```

### How to insert records into tables

```
INSERT INTO person (
    first_name,
    last_name,
    gender,
    date_of_birth,
    email
)
VALUES ('Md', 'Romi', 'MALE',  date '2002-01-01', 'mdromi@email.com');
```
