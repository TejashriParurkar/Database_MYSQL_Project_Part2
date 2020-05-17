# Database_MYSQL_Project_Part2
1. Download and import the [Paper_Review_Updated.sql](https://raw.githubusercontent.com/mitya367/Database_MYSQL_Project_Part2/master/Project%20Part%202/Paper_Review_Updated.sql) file.
   ( How to import .sql file to MYSQL server - https://www.youtube.com/watch?v=HYVW5RlM6b0 )

   I have updated the database as per query requirement. The changes I have made are:
      1. Added another column named **Author_Email** in table paper as a constraint in order to JOIN table Author and table Paper.
      2. Updated Recommendation column data from table Review. 

2. Download the  [PaperReview.java](https://raw.githubusercontent.com/mitya367/Database_MYSQL_Project_Part2/master/Project%20Part%202/PaperReviewDriver.java) file. 


3. Compile the java file using following command,

      ```
      javac PaperReviewDriver.java
      ```

4. The above command should produce the class file. For ease, I have also uploaded the compiled class file [here](https://github.com/mitya367/Database_MYSQL_Project_Part2/blob/master/Project%20Part%202/PaperReviewDriver.class?raw=true).

5. The source code has a single dependency on jar `mysql-connector-java-8.0.19.jar` for SQL connection. Please download the jar file [here](https://github.com/mitya367/Database_MYSQL_Project_Part2/blob/master/Project%20Part%202/mysql-connector-java-8.0.19.jar?raw=true).

6. Once the jar file is downloaded, run the program using following command,

      ```
      java -cp ".;./mysql-connector-java-8.0.19.jar" PaperReviewDriver <your_db_username> <your_db_password>
      ```

7. You will notice that I have used `;` in the classpath, because I ran the program on Windows machine. For Linux/Mac, please set the classpath as `.:./mysql-connector-java-8.0.19.jar`

8. The program expects two arguments,

   1. `username`  - which is database username
   2. `password`  - which is database password

   **Note**: If you don't provide the arguments, the program will assign empty string to both username and password. If you provide just one argument, then the program will assign username but will keep password as empty string.

