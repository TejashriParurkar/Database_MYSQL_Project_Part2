# Database_MYSQL_Project_Part2
1. Download and import attached Paper_Review_Updated.sql file.
   ( How to import .sql file to MYSQL server - https://www.youtube.com/watch?v=HYVW5RlM6b0 )
   I have updated the database as per query requirement. The changes I have made are:
      1. Added another column named Author_Email in table paper as a constraint in order to JOIN table Author and table Paper.
      2. Updated Recommendation column's data from table Review. 
 2. Now, download .java file attached herewith. 
    This java file contains all the executed queries.
      1. Get a submitted paper’s details by the author’s Primary Key. The query should return the
         following data (columns): Paper.Id, Paper.Title, Paper.Abstract, Author.EmailAddress,
         Author.FirstName, Author.LastName
      2. Get all reviews for a paper by the paper’s Id, where the paper was recommended to be
         published. The query should return the following data (columns): All columns from the
         Review table.
      3. Get a count of all papers submitted.
      4. Create a new paper submission. Remember this includes creating new records in both
         the Author and Paper tables.
      5. Try and Delete the first “Author” row in your Author table by the author’s id. Did you
         receive an error? If yes, print to the console the error you received. Also note in your
         message why the query failed. If it didn’t fail, print a message explaining why you were
         able to delete the row.
 3. Open this .java file in Eclipse
    These are the instructions to run CS623PaperReviewProject.java:
      1. You need to pass arguments in order to specify your username and password.
         You can do this by { Run -> Run Configurations -> Arguments -> <Pass your arguments(Username Password)> }
         
