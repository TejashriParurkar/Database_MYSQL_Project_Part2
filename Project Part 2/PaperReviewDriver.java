//STEP 1. Import required packages
import java.sql.*;
import java.util.Properties;

public class PaperReviewDriver {
   // JDBC driver name and database URL
   static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
   static final String DB_URL = "jdbc:mysql://localhost/EMP";

   //  Database credentials
   static final String USER = "tejashri";
   static final String PASS = "MySQLpass@123";
   
   public static void UtilityFunction() {
	   Connection conn = null;
	   Statement stmt = null;
	   try{
		   Class.forName("com.mysql.cj.jdbc.Driver");
		   System.out.println("Connecting to database...");	      
	      String url = "jdbc:mysql://localhost:3306/test";
	      Properties info = new Properties();

	      conn = DriverManager.getConnection(url, info);
	      if (conn != null) {
	          System.out.println("Connected to the database test");
	      }}
	      catch(SQLException se){
	            //Handle errors for JDBC
	            se.printStackTrace();
	         }
	         catch(Exception e){
	            //Handle errors for Class.forName
	            e.printStackTrace();
	         }
	         finally{
	            //finally block used to close resources
	            try{
	               if(stmt!=null)
	                  stmt.close();
	            }catch(SQLException se2){
	            }// nothing we can do
	            try{
	               if(conn!=null)
	                  conn.close();
	            }catch(SQLException se){
	               se.printStackTrace();
	            }
	         }
	      
   }
   
   public static void GetPaperDetail(Connection conn, String authorEmail) throws SQLException {
	   Statement stmt = null;
	   String query = String.format("SELECT Paper.id, Paper.Title, Paper.Abstract, Author.EmailAddr, Author.FirstName, Author.LastName FROM Paper JOIN Author ON Paper.Author_Email = Author.EmailAddr where Author.EmailAddr=\"%s\"", authorEmail);
       
	   System.out.println("\nGetting details of paper by Author's EmailAddr(Primary Key) -");
		   try {
		        stmt = conn.createStatement();
		        ResultSet rs = stmt.executeQuery(query);
		        while (rs.next()) {
		        	String EmailAddr = rs.getString("EmailAddr");
		            String AuthorFirstName = rs.getString("FirstName");
		            String AuthorLastName = rs.getString("LastName");
		            String PaperId = rs.getString("id");
		            String Title = rs.getString("Title");
		            String Abstract = rs.getString("Abstract");
		            System.out.println("EmailAddr: " + EmailAddr + "\nAuthor FirstName: " + AuthorFirstName + "\nAuthor LastName: " + AuthorLastName + "\n" + "Paper id: " + PaperId + "\nPaper Title: " + Title + "\nAbstract: " + Abstract);
		        }}
		        finally{
		            try{
		               if(stmt!=null)
		                  stmt.close();
		            }catch(SQLException se2){
		            }		        
		         }
		       }
		        
   public static void GetAllReviews(Connection conn, Integer paperId) throws SQLException {
	   Statement stmt = null;
	   String query = String.format("SELECT paper.id, review.id, review.ReviewerId, review.Recommendation, review.MeritScore, review.ReadabilityScore, review.OriginalityScore, review.RelevanceScore  FROM review, paper WHERE paper.id = review.PaperId and review.Recommendation ='Y' and review.PaperId= %d", paperId);
	   System.out.println("\nGetting reviews for a paper by the PaperId, where the paper was recommended to be\r\n" + 
	   		"published -");
 
	   try {
	        stmt = conn.createStatement();
	        ResultSet rs = stmt.executeQuery(query);
	        boolean hasFound = false;
	        while (rs.next()) {	            
	        	hasFound = true;
	            String Recommendation = rs.getString("Recommendation");
	            String PaperId = rs.getString("id");
	            String ReviewId = rs.getString("id");
            	String MeritScore = rs.getString("MeritScore");
	            String ReadabilityScore = rs.getString("ReadabilityScore");
	            String OriginalityScore = rs.getString("OriginalityScore");
	            String RelevanceScore = rs.getString("RelevanceScore");
	            System.out.println("Paper id: " + PaperId + "\nReview id: " + ReviewId + "\nRecommendation: " + Recommendation + "\nMeritScore: " + MeritScore + "\nReadabilityScore: " + ReadabilityScore + "\nOriginalityScore: " + OriginalityScore + "\nRelevanceScore: " + RelevanceScore);        
	        }
	        
	        if (!hasFound) {
	            System.out.println("This paper is not recommended!");	
	        }
		  
		  }
	        finally{
	            try{
	               if(stmt!=null)
	                  stmt.close();
	            }catch(SQLException se2){
	            }	        
	         }
	       }
   
   
   public static void GetPaperCount(Connection conn) throws SQLException {
	   Statement stmt = null;
	   try {
	   stmt = conn.createStatement();
	   ResultSet rs = stmt.executeQuery("SELECT COUNT(*) AS rowcount FROM paper");
	   while (rs.next()) {
	   int count = rs.getInt("rowcount") ;
	   System.out.println("\nCount of all papers submitted is: " + count + " row(s).");
	   }} finally{
           try{
              if(stmt!=null)
              stmt.close();
           }catch(SQLException se2){
           }
        }	    
      }	
   
   public static void NewPaperSubmission(Connection conn) throws SQLException {
	   Statement stmt = null;
	   try {
	   stmt = conn.createStatement();
	   String record1="INSERT INTO author (EmailAddr, FirstName, LastName)"
		          + "VALUES ('joe.brad@gmail.com','Joseph','Bradley')";
	   stmt.executeUpdate(record1);
	   
	   String record2="INSERT INTO paper (id, Title, FileName, Abstract, Author_Email)"
		          + "VALUES (6, 'Simulated framework for cluster-based web services','New Addition', 'We propose a simulation framework namely CWebSim specifically designed for the performance evaluation and capacity planning of cluster-based Web services. A broad variety of Web cluster configurations can be simulated through CWebSim.', 'joe.brad@gmail.com')";
	   stmt.executeUpdate(record2);
	   
       System.out.println("\nRecords Successfully inserted");
       
	   }
       finally{
           try{
              if(stmt!=null)
              stmt.close();
           }catch(SQLException se2){
           }
        }	    
      }	
   
      
   public static void FirstAuthorRowDeletion(Connection conn, String authorEmail) throws SQLException{
	   Statement stmt = null;
	   try {
		   stmt = conn.createStatement();
		   String sql = String.format("Delete from Author where EmailAddr=\"%s\"", authorEmail);
		   stmt.executeUpdate(sql);
		   System.out.println("Record deleted successfully");
	   }catch (Exception e) {
		   System.out.println("\nWhen tried deleting first row from Author, an error showed up!");
		   System.out.println("Error message:\r" + e.getMessage());
		   System.out.println("Reason behind this error is:");
		   System.out.println("Basically, The reason behind this error is when we try to delete a tuple which has primary key (table Author) \n& that primary key is used in another table(table Paper) as a foreign key. In that case, in order to delete data From table Author,\nwe will have to remove this data from table Authohr(in which foreign key is used). ");
		   
	} finally{
           try{
               if(stmt!=null)
               stmt.close();
            }catch(SQLException se2){
            	System.out.println(se2.getMessage());
            }
           catch (Exception e) {
        	   System.out.println(e.getMessage());		
        	   }
         }
   }

   
   public static void main(String[] args){
	   Connection conn = null;
	   
	   String username = "";
	   String password = "";
	   
	   if (args.length == 0) {
		   System.out.println("DB Username and Password not specified, using empty values");
	   } else if (args.length == 1) {
		   username = args[0];
	   } else if (args.length == 2) {
		   username = args[0];
		   password = args[1];		   
	   }   

	   try {
		  Class.forName("com.mysql.cj.jdbc.Driver");
		  System.out.println("Connecting to database...");	      
	      String url = "jdbc:mysql://localhost:3306/test";
	      Properties info = new Properties();
	      info.put("user", username);
	      info.put("password", password);
	      conn = DriverManager.getConnection(url, info);
	      if (conn != null) {
	          System.out.println("Connected to the database test");
	      }
	      System.out.println("connection successful");
		  GetPaperDetail(conn,"christian123@google.com");
		  GetAllReviews(conn,5);
		  GetPaperCount(conn);
		  NewPaperSubmission(conn);
		  FirstAuthorRowDeletion(conn, "campnari.stefano@gmail.com");

	   } catch (ClassNotFoundException | SQLException e) {
		   // TODO Auto-generated catch block
		   e.printStackTrace();
		}

   }

}

