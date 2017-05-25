<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="header.jsp" %>
<h2>Change Properties of Book in Library</h2>
<form method="POST" action="update_process.jsp">
    
    <table>
            <% 
                int id=Integer.parseInt(request.getParameter("id"));
                Class.forName("com.mysql.jdbc.Driver");
Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","password");
Statement stmt=(Statement) con.createStatement();
ResultSet rs=stmt.executeQuery("SELECT * FROM books where book_id="+id);
                if(rs.next()){
                %>
                <input type="hidden" name="id" value=<%=id%>>
    <tr>
        <td>Book Name:</td>
        <td><input type="text" name="b_name" value="<%=rs.getString("book_name")%>"></td>
    </tr>
<tr>
        <td>Book Price::</td>
        <td><input type="text" name="b_price" value="<%=rs.getString("price")%>"></td>
    </tr>
<tr>
        <td>Name of Author:</td>
        <td><input type="text" name="b_author" value="<%=rs.getString("author")%>"></td>
    </tr>
<tr>
        <td>Description of Book:</td>
        <td><input type="textfield" name="b_summary" value="<%=rs.getString("summary")%>">
            </td>
    </tr>
<tr>
        <td>No of Copies:</td>
        <td> <input type="text" name="b_copies" value="<%=rs.getString("copies")%>"></td>
    </tr>  
    <%}%>
    
           
                
</table>
     <input type="submit" value="Update..." >
</form>
        
        <b><table class="bottom_bar"><tr><td><a href="addBookForm.jsp">Add New Book</a>
        </td><td><a href="deleteBookForm.jsp">Delete Book</a>
    </td><td><a href="deleteBookForm.jsp">Update Book</a>
    </td></tr></table></b>
        
<%@include file="footer.jsp" %>