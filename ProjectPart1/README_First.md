# Database_MYSQL_Project_Part1

Steps to run PAPER_REVIEWS database using given .sql file(paper_reviews.sql):

1. Download Mysql: https://dev.mysql.com/doc/mysql-getting-started/en/
2. Create a database named test (you can give any name you want): CREATE DATABASE test;
3. Check to see if it's empty:  1. USE test
                                2. SHOW TABLES; // shows all tables of that database. here, shows tables of test
4. Now, we need to import paper_reviews.sql file to mysql.
   - Open cmd (run in administration mode just to avoid "Access denied")
   - Now, navigate to the location where you installed mysql and copy the PATH. e.g C:\Program Files\MySQL\MySQL Server 8.0\bin 
   - In cmd, type: 
       1. cd "<PATH>" (cd "C:\Program Files\MySQL\MySQL Server 8.0\bin") // This will change it's directory. 
       2. mysql -u root -p <database name you just set>  <  <PATH to .sql file>
          (mysql -u root -p test < C:\Users\tpage\Desktop\paper_reviews.sql)
       3. Now, the terminal will ask you password. Enter the password you set while installing mysql. 
         // [ The file will be successfully imported if the process has been coompleted without any error.]
5. Now, open mysql command line
   - In mysql command line, type:
       1. use test;  // to select or use the database we created previously
       2. show tables; // it should show all 5 tables - author, paper, topic, review, reviewer
       3. describe <table_name>; // can be used to describe the table
       4. select * from <table_name>; // can be used to shows all data entries in that table
