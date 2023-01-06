import java.sql.*; 
public class GetTable
{ 
public static void main(String args[]) 
{ 
try 
{ 
Class.forName("com.mysql.cj.jdbc.Driver"); 
Connection con = 
DriverManager.getConnection("jdbc:mysql://localhost:3306/studentinfo","root",""); 
Statement st=con.createStatement(); 
ResultSet rs = st.executeQuery("select * from student"); 
System.out.println("The Student Details are \n"); 
while(rs.next()) 
{ 
System.out.println(rs.getInt(1)+":"+rs.getString(2)+":"+ rs.getString(3)+":"+rs.getString(4) 
+":" + rs.getInt(5)); 
} 
con.close(); 
} 
catch(Exception e) 
{ 
System.out.println(e); 
} 
} 
} 
