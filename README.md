# CLI employee-database
C-based command-line interface tool for managing a simple file database of employee records
## Features
- Saves data to a binary file format
- CRUD Operations: 
> Create: initializes a new db file 

> Add: insert new employees records (Name, Address, Hours) 

> List: Read and displays all current records in the database 

> Update: Modify existing records by searching for an employee name

- CLI parsing using getopt to handle command-line flags and arguments
## How to build and run:
1.) Clone the repository

```git clone https://github.com/zasut/employee-database```
 
2,) Compile the project using pre-existing makefile 
```make```

3.) Run the Tool

**General syntax**
> ./bin/dbview -n -f <database_file> <cli_flags>

## Examples
- **Create a new database:**

```./bin/dbview -f <db_name> -n```

- **Add a new employee:**

```./bin/dbview -f  <db_file> -a "First Name,123 Address, 0"``` (name, address, hours worked)

- **Update an employee:**

```./bin/dbview -f  <db_file> -u "First Name"  -a "Updated Name,123 Updated Address, 0"``` (finds the first name match in the index then put -a with the "updated name, updated address, updated hours worked")

- **Lists all employees in DB:**

```./bin/dbview -f  <db_file> -l```

- **Delete an employee:**

```./bin/dbview -f  <db_file> -d "First Name"```  (deletes first match in the index)

## Lessons Learned:
- How to use the getopt library to parse command-line arguments
- Learnt the differene between modifying data in memory vs persisting it to disk
- How to configure a makefile 
