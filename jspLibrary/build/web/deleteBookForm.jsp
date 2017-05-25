<%-- 
    Document   : deleteBookForm
    Created on : May 24, 2017, 4:38:14 PM
    Author     : Shivam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="header.jsp"%>
        <h2>Delete Book form Library</h2>
        <form method="POST" action="deleteBook.jsp">
            <table><tr><td>Book Name:</td><td><input type="text" name="b_name"></td></tr>
            <tr><td>Book ID:</td><td><input type="text" name="b_id"></td></tr>
            </table>
            <input type="submit" value="Delete Book Record">
            
        </form>
        
   <b><table class="bottom_bar"><tr><td><a href="addBookForm.jsp">Add New Book</a>
        </td><td><a href="deleteBookForm.jsp">Delete Book</a>
    </td><td><a href="updateLibraryForm.jsp">Update Book</a>
    </td></tr></table></b>
        <%@include file="footer.jsp"%>
