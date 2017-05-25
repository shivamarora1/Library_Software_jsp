<%-- 
    Document   : addBookForm
    Created on : May 24, 2017, 4:37:55 PM
    Author     : Shivam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

        <%@include file="header.jsp"%>
        <form method="POST" action="addBook.jsp">
            
            
<h2>Insert new Book in the Library</h2>
<table>
    <tr>
        <td>Book Name:</td>
        <td><input type="text" name="b_name"></td>
    </tr>
<tr>
        <td>Book Price::</td>
        <td><input type="text" name="b_price"></td>
    </tr>
<tr>
        <td>Name of Author:</td>
        <td><input type="text" name="b_author"></td>
    </tr>
<tr>
        <td>Description of Book:</td>
        <td><input type="textfield" name="b_summary">
            </td>
    </tr>
<tr>
        <td>No of Copies:</td>
        <td> <input type="text" name="b_copies"></td>
    </tr></table>  
            <input type="submit" value="Add New Book...">
            
        </form>
        
        <b><table class="bottom_bar"><tr><td><a href="addBookForm.jsp">Add New Book</a>
        </td><td><a href="deleteBookForm.jsp">Delete Book</a>
    </td><td><a href="updateLibraryForm.jsp">Update Book</a>
    </td></tr></table></b>
        <%@include file="footer.jsp"%>
