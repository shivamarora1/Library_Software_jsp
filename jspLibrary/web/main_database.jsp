<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");
Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","password");
Statement stmt=(Statement) con.createStatement();
ResultSet rs=stmt.executeQuery("select * from books");
while(rs.next())
{
  out.print(rs.getString("book_id"));
  
  out.print(rs.getString("summary"));
  
}
%>
<html>
    <head>
        <title>
        hello
    </title>
    </head>
    <body>
        
    </body>
</html>