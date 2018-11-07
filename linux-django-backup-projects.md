**Backing Up the Project Essential Files**\
Backup the Project Database pgdump(PostgreSQL) (MySQL)\
  MySQL can Backup Specific Tables (Reommended make two backups one for all database and the other just for the essential project) 
  PostgreSQL\
Compress (zip) the project main directory or keep it sync with GitHub

**Restoring the Project (As Is)**\
Create the Database (MySQL or PostgreSQL)\
Verify the Database User is already created and have Full Rights Granted as owner of the database.\
  Project User should have only rights to access the database localy for security reasons.\
Import the created SQL backup to the target database MySQL() or PostgreSQL(pg_restore)\
Unzip the Project Directory into the main project Folder.\
Restart Project Services

**Restoring the Project (Reset Migrations or Start Fresh)**\

Unzip the Project Directory into the main project Folder.\
  Remove all contents of migrations directories inside django appplications directories.\
  (Except the __init__.py file).\
  In other words make sure to keep this \project\app\migrations\__init__.py

Create the Database (MySQL or PostgreSQL)\
Verify the Database User is already created and have Full Rights Granted as owner of the database.\
  Project User should have only rights to access the database localy for security reasons.\
Import the created SQL backup to the target database MySQL() or PostgreSQL(pg_restore)\
  Import only the data of the application tables and django core application tables (Order is Important Depending of the table relationships)


Restart Project Services
