# Databases
## Spreadsheets on steroids

---

# You know spreadsheets, right?

* Our CSV from the Week 1 lab was a spreadsheet
* Microsoft Excel makes spreadsheets
* Spreadsheets have `rows` and `columns`

---

# Now imagine you have a bunch of spreadsheets

---

# And they're linked together

---

# That's a database

* Each spreadsheet is a `table`
* Each table has `rows` and `columns`

---

# Why bother with databases?

* To _persist_ data.
* Like our `Post`'s from the Lab
* If you want to have data stick around when an app restarts, _you need a database_
* If you want to update data and have it stick around, _you need a database_
* Most of the web these days is powered by databases

---

# SQLite

* You already have a database in your Rails apps
* SQLite is muss-free and file-based.
* Perfect for development and small projects

---

# Other databases

* **MySQL:** The old standby. If you've run a Wordpress site, you've likely used it.
* **PostgreSQL:** The new standard for most Rails apps (and Heroku). Lots of nifty features, rock-solid stability, less rough edges than MySQL.

---

# Notice a theme here?

---

# SQL

* Structured Query Language
* A standard way to "query" a database
* You query a database to get records back out of it

---

# Let's make a database!

* `sqlite3 staff`
* `CREATE TABLE staff (id INTEGER, name TEXT, title TEXT, salary INTEGER);`
* We need records in there before we can query for them.
* `INSERT INTO staff(id, name, title, salary) VALUES(1, "Chuck", "Director", 10000);`

---

 # Our table

 ```
 staff
 ------------------------------------------------
 | id	|	name	|	title		|	salary	|
 ------------------------------------------------
 | 1	|	Chuck	|	Director	|	10000	|
 | 2	|	Tom		|	Actor		|	8000	|
 | 3	|	Matt	|	Actor		|	7500	|
 | 4	|	Mary	|	Actor		|	9000	|
 | 5	|	Chris	|	Producer	|	12000	|
 ------------------------------------------------

 ```

---

# Let's ask some questions ...

* Which is record #4?
	* `SELECT * FROM staff WHERE id = 4;`
* How about all the names that start with `M`?
	* `SELECT * FROM staff WHERE name LIKE 'M%';`
* Who's getting paid the most?
	* `SELECT * FROM staff ORDER BY salary DESC LIMIT 1;`

---

# Parts of a `SELECT` statement

* SELECT (what)
* FROM (table)
* [WHERE (conditions)]
* [ORDER (columns DESC/ASC)]
* [LIMIT (number)]

---

# More questions

* How many staff members do we have?
	* `SELECT COUNT(*) FROM  staff;`
* How many actors do we have?
	* `SELECT COUNT(*) FROM staff WHERE title = 'Actor';`
* Actors names?
	* `SELECT name FROM staff WHERE title = 'Actor';`

---

# Grouping records

`SELECT COUNT(*) as name_count, first_name FROM users GROUP BY first_name ORDER BY name_count DESC;`

---

# Unique indexes

`CREATE UNIQUE INDEX user_email ON users(email)`

This version will not throw an error if an index with that name already exists.

`CREATE UNIQUE INDEX IF NOT EXISTS user_email ON users(email)`
