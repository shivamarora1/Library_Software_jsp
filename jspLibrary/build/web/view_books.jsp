<%-- 
    Document   : view_books
    Created on : May 24, 2017, 3:59:38 PM
    Author     : Shivam
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="header.jsp" %>
<h2>Books in the Library</h2>
        <table>
            <tr>
                <th>Book ID</th>
                <th>Name</th>
                <th>Author</th>
                <th>Description</th>
                <th>Price</th>
                <th>Copies</th>
            </tr>
            <%Class.forName("com.mysql.jdbc.Driver");
Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","password");
Statement stmt=(Statement) con.createStatement();
ResultSet rs=stmt.executeQuery("SELECT * FROM books");
                while(rs.next()){
                %>
                <tr bgcolor="#DEB887">
                    <td><%=rs.getString("book_id")%></td>
                    
                    <td><%=rs.getString("book_name")%></td>
                    <td><%=rs.getString("author")%></td>
                    <td><%=rs.getString("summary")%></td>
                    <td><%=rs.getString("price")%></td>
                    <td><%=rs.getString("copies")%></td>
                </tr>
                <%}%>
        </table>
        
        <b><table class="bottom_bar"><tr><td><a href="addBookForm.jsp">Add New Book</a>
        </td><td><a href="deleteBookForm.jsp">Delete Book</a>
    </td><td><a href="updateLibraryForm.jsp">Update Book</a>
    </td></tr></table></b>
        
<%@include file="footer.jsp" %>