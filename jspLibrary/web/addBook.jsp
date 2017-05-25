<%-- 
    Document   : addbook
    Created on : May 24, 2017, 4:36:50 PM
    Author     : Shivam
--%>

<%@page import="java.sql.*" %>
<% 
    String b_name=request.getParameter("b_name");
    
    String b_author=request.getParameter("b_author");
    
    String b_summary=request.getParameter("b_summary");
    
    String b_price=request.getParameter("b_price");
    
    String b_copies=request.getParameter("b_copies");
    Class.forName("com.mysql.jdbc.Driver");
Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","password");
String inst="INSERT INTO books(book_name,price,author,summary,copies) VALUES (?,?,?,?,?)";
PreparedStatement pstmt=con.prepareStatement(inst);
pstmt.setString(1,b_name);
pstmt.setString(2,b_price);
pstmt.setString(3,b_author);
pstmt.setString(4,b_summary);
pstmt.setString(5,b_copies);
int updateQuery = pstmt.executeUpdate();
if(updateQuery!=0){
    out.println("UPDATED");
    String redirect="view_books.jsp";
  response.sendRedirect(redirect);
}
else
{
    out.println("Not UPDATED");
}
%>