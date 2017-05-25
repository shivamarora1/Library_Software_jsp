<%-- 
    Document   : val_login.jsp
    Created on : May 24, 2017, 3:27:47 PM
    Author     : Shivam
--%>
<%@page import="java.sql.*" %>
<% 
    String u_name=request.getParameter("u_name");
    
    String paswd=request.getParameter("paswd");
    Class.forName("com.mysql.jdbc.Driver");
Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","password");
Statement stmt=(Statement) con.createStatement();
ResultSet rs=stmt.executeQuery("select * from admin where u_name='"+u_name+"' and password='"+paswd+"'");
if(rs.next())
{
  out.print("<h2>Login Successful!!!<br>Please Wait....</h2>");
  String redirect="view_books.jsp";
  response.sendRedirect(redirect);
}
else
{
    out.println("<script type=\"text/javascript\">");  
out.println("alert('deadbeef');");  
out.println("</script>");
String redirect="login.jsp";
  response.sendRedirect(redirect);
}
%>