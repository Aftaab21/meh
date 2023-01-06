import java.sql.*; 
public class CreateTable
{ 
public static void main(String args[]) 
{ 
try 
{ 
//com.mysql.cj.jdbc.Driver
Class.forName("com.mysql.cj.jdbc.Driver"); 
Connection 
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root",""); 
Statement st=con.createStatement(); 
st.executeUpdate("create table csed ( rollno varchar(10), name varchar(20))"); 
System.out.println("Table Created"); 
con.close(); 
} 
catch(Exception e) 
{ 
System.out.println(e); 
} 
} 
} 
1. download mysql-connector-java-5.1.48 zip file - extract 
2. mysql-connector-java-5.0.8-bin.jar and copy in 
C:\Program Files(x86)\Java\jre7\lib\ext folder of java.
3. Set classpath for the jar file in environment variables
Variable name:Classpath
Variable Value:C:\Program Files (x86)\Java\jre7\lib\ext\mysql-connector-java-5.1.48-
bin.jar;.;
