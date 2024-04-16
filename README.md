The environment used in the project:
- python3.7
- MySQL5.7

1.import the database file(db_book.sql)in the folder
1.1 we use Navicat for MySql(your computer should install MySql firstly)
1.2 create db_book as a new local database
1.3 run db_book.sql in local database 'db_book'
1.4 Default super administrator account：admin admin123456
The project needs to install pycharm Professional or Community Edition
- Install the corresponding module, or use the configured virtual environment 
 
The main functional module of the project
1, user login, registration, modify personal information and other data
2. Library management, book review, publishing house management, classification management
3. Loan management, loan and return books
4. Member management
5, rights management (super administrator and general administrator, different permissions)
6. Chart data analysis (bar chart, pie chart, line chart, etc.)
7, some other functions (weather crawler, global search, automatic retrieval, etc.) 

 
Project structure BookMS:
- api Indicates the api management module
- authentication Indicates permission authentication and login to the registration module
- book Book loan management module
- BookMS main module
- comment Book review module
- datacenter folder in which downloaded data tables are stored
- logging Indicates log files
- media Uploads the profile picture folder
- static Static file (js,css,image, etc.)
- templates front-end file (html)
- util tool functions and SQLite driver files
- venv project virtual environment
- db.sqlite3 database file
- manage.py project management file, project entry
- requirements.txt Specifies the module list file required by the project
