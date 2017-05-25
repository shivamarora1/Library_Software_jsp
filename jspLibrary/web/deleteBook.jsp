<%-- 
    Document   : deleteBook.jsp
    Created on : May 24, 2017, 4:37:39 PM
    Author     : Shivam
--%>

<%@page import="java.sql.*" %>
<% 
    String b_name=request.getParameter("b_name");
    
    String bid=request.getParameter("b_id");
    int b_id=Integer.parseInt(bid);
    Class.forName("com.mysql.jdbc.Driver");
Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","password");
PreparedStatement stmt=con.prepareStatement("delete from books where book_id='"+b_id+"' or book_name='"+b_name+"'");
int i = stmt.executeUpdate();
if(i>0){
  out.print("<h2>ROW deleted Successful!!!<br>Please Wait....</h2>");
  String redirect="view_books.jsp";
  response.sendRedirect(redirect);
}
else
{
    out.print("<h2>ROW not deleted Successful!!!<br>Please Wait....</h2>");
}
%>