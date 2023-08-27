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

- Set new password:

  `sudo passwd postgres`
  
- Switch user:

  `sudo -i -u postgres`

- Show Database All Table:
  ```
    psql -h your_host -d your_database -U your_user -c "SELECT table_name FROM information_schema.tables WHERE table_schema = 'public';"
  ```
  
 - Provide User Permision:

  ```
  ALTER USER user_name WITH SUPERUSER;
  ALTER USER user_name CREATEDB;
  ALTER USER user_name CREATEROLE;
  ALTER USER user_name REPLICATION;
  ALTER USER user_name BYPASSRLS;
  ```

- Show all users:

  `sudo -u postgres psql -c "\du"` 

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
- Alias
  ```
  SELECT id, make, price AS original_price, ROUND(price * .10, 2)AS ten_percent_value, ROUND(price - (price * .10), 2) AS discount_after_ten_percent FROM car;
  ```
- Coalesce
  ```
  SELECT COALESCE(1) AS number;
  SELECT COALESCE(email, 'Email not provided') FROM person;
  ```
- NULLIF
  ```
  SELECT COALESCE(10 / NULLIF(0, 10), 0);
  ```
- Timestamps and dates
  ```
  SELECT NOW();
  SELECT NOW()::DATE;
  SELECT NOW()::TIME;
  ```
- Adding and Subtracting With Dates
  ```
  SELECT NOW() - INTERVAL '1 YEAR';
  SELECT NOW() - INTERVAL '10 MONTHS';
  SELECT (NOW() + INTERVAL '10 DAYS')::DATE;
  ```
- Extracting Fields
  ```
  SELECT EXTRACT(YEAR FROM NOW());
  SELECT EXTRACT(MONTH FROM NOW());
  SELECT EXTRACT(DAY FROM NOW());
  SELECT EXTRACT(CENTURY FROM NOW());
  ```
- Age Function
  ```
  SELECT first_name, last_name, email, gender, date_of_birth, country_of_brith, AGE(NOW(), date_of_birth) AS age FROM person;
  ```
- Understanding Primary Key
  ```
  SELECT * FROM person LIMIT 1;
  SELECT * FROM person WHERE id = 1;
  ALTER TABLE person DROP CONSTRAINT person_pkey;
  DELETE FROM person WHERE id = 1;
  ```
- Adding Primary Key
  ```
  insert into person (id, first_name, last_name, email, gender, date_of_birth, country_of_brith) values (1, 'Sofia', 'Parlor', 'sparlor0@cdbaby.com', 'Female', '2022-10-02', 'Vietnam');
  ALTER TABLE person ADD PRIMARY KEY (id);
  ```
- Unique Constraints
  ```
  SELECT email, count(*) FROM person GROUP BY email;
  SELECT email, count(*) FROM person GROUP BY email HAVING COUNT(*) > 1;
  ALTER TABLE person ADD CONSTRAINT unique_email_address UNIQUE (email);
  ```
- Check Constraints
  ```
  SELECT UNIQUE gender FROM person;
  SELECT DISTINCT gender FROM person;
  ALTER TABLE person ADD CONSTRAINT gender_constraint CHECK (gender = 'Male' OR gender = 'Female' OR gender = 'Agender');
  ```
- Delete Records
  ```
  DELETE FROM person;
  DELETE FROM person WHERE id = 1;
  ```
- Update Records
  ```
  UPDATE person SET email = 'romi@email.com' WHERE id = 1;
  UPDATE person SET first_name = 'Md', last_name = 'Romi', gender = 'Male', email = 'romi@email.com' WHERE id = 1;
  SELECT * FROM person WHERE id = 1;
  ```
- On Conflict Do Nothing
  ```
  INSERT INTO person (id, first_name, last_name, email, gender, date_of_birth, country_of_brith) values (1, 'Sofia', 'Parlor', 'sparlor0@cdbaby.com', 'Female', '2022-10-02', 'Vietnam')
  ON CONFLICT(id) DO NOTHING;
  ```
- Upset
  ```
  INSERT INTO person (id, first_name, last_name, email, gender, date_of_birth, country_of_brith) values (1, 'MD', 'Romi', 'romi@email.com.bd', 'Male', '2002-10-02', 'Bangladesh')
  ON CONFLICT(id) DO UPDATE SET first_name = EXCLUDED.first_name, last_name = EXCLUDED.last_name, email = EXCLUDED.email, gender = EXCLUDED.gender, date_of_birth = EXCLUDED.date_of_birth, country_of_brith = EXCLUDED.country_of_brith;
  ```
- Updating Foreign Keys Columns
  ```
  SELECT * FROM person;
  UPDATE person SET  car_id = 2 WHERE id = 1;
  ```
- Inner Joins
  ```
  SELECT * FROM person;
  SELECT * FROM person JOIN car ON person.car_id = car.id;
  \x
  SELECT person.first_name, car.make, car.model, car.price FROM person JOIN car ON person.car_id = car.id;
  ```
- Left Joins
  ```
  SELECT * FROM person;
  SELECT * FROM person LEFT JOIN car ON person.car_id = car.id;
  SELECT * FROM person LEFT JOIN car ON person.car_id = car.id WHERE car.* IS NULL;
  SELECT * FROM person WHERE car_id IS NULL;
  ```
- Deleting Records With Foreign
  ```
  SELECT * FROM person;
  chmod 777 /home/mdromi/Downloads/
  \copy (SELECT * FROM person LEFT JOIN car ON person.car_id = car.id) TO '/home/mdromi/Downloads/result.csv' DELIMITER ',' CSV HEADER;
  ```
- Serial & Sequences
  ```
  SELECT * FROM person;
  SELECT * FROM person_id_seq;
  SELECT nextval('person_id_seq'::regclass);
  ALTER SEQUENCE person_id_seq RESTART WITH 10;
  ```
- Extensions
  ```
  SELECT * FROM pg_a;
  SELECT * FROM pg_available_extensions;
  ```
- Understanding UUID Data Type
  ```
  CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
  \?
  \df
  SELECT uuid_generate_v4();
  \df[anptw][S+] [PATRN] list [only agg/normal/procedures/trigger/window] functions
  ```
- UUID As Primary Key
  ```
  UPDATE person SET car_uid = '70ebfc18-375f-45b2-8864-d0668398b404' WHERE person_uid = '4e4cad36-5b40-4f91-a76a-4b79f7ce8f58';
  UPDATE person SET car_uid = 'c254a8f7-6e7e-408e-b6f5-9328eb674b55' WHERE person_uid = '55d197f7-0508-4822-a53d-4188bf402c3e';
  SELECT * FROM person JOIN car ON person.car_uid = car.car_uid;
  SELECT * FROM person JOIN car USING(car_uid);
  SELECT * FROM person LEFT JOIN car USING(car_uid);
  SELECT * FROM person LEFT JOIN car USING(car_uid) WHERE car.* IS NULL;
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
