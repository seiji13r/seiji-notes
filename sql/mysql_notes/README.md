# MySQL Operation NOTES

## MySQL SSL Configuration

## Loading csv File into DB
```sql
LOAD DATA INFILE [file_name]
INTO TABLE [db_name].[table_name]
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
/* IGNORE 1 ROWS; */

-- Error: ER_OPTION_PREVENTS_STATEMENT: The MySQL server is running with the --secure-file-priv option so it cannot execute this statement
```
### Check --secure-file-priv 
```sql
SELECT @@global.secure_file_priv;
```

```sql
LOAD DATA LOCAL INFILE [full_path/file_name.cvs] 
INTO TABLE [db_name].[table_name]
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';
-- UNCOMMENT BELOW IN CASE OF HEADERS ROW
/* IGNORE 1 ROWS; */ 
```

[Reference](https://www.digitalocean.com/community/tutorials/how-to-configure-ssl-tls-for-mysql-on-ubuntu-16-04)

## Show Databases
```sql
SHOW SCHEMAS;
SHOW DATABASES;
```