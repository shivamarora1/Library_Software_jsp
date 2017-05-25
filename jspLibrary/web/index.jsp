<%-- 
    Document   : login
    Created on : May 24, 2017, 3:20:08 PM
    Author     : Shivam
--%>
<jsp:include page="header.jsp"/>
<h3>Welcome</h3>
<form method="POST" action="val_login.jsp">
    <h4>UserName: <input type="text" name="u_name">
        <br>
        <br>
        \
    Password:  <input type="password" name="paswd">
    <br>
    <br>
    <input type="submit" value="Login">    
</form>
<jsp:include page="footer.jsp"/>
