package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class addBook_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
 
    String b_name=request.getParameter("b_name");
    
    String b_author=request.getParameter("b_author");
    
    String b_summary=request.getParameter("b_summary");
    
    String b_price=request.getParameter("b_price");
    
    String b_copies=request.getParameter("b_copies");
    Class.forName("com.mysql.jdbc.Driver");
Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","password");
String inst="insert into books(book_id,book_name,price,author,summary,copies) values(?,?,?,?,?,?)";
PreparedStatement pstmt=con.prepareStatement(inst);
pstmt.setString(1,b_name);
pstmt.setString(2,b_author);
pstmt.setString(3,b_summary);
pstmt.setString(4,b_price);
pstmt.setString(5,b_copies);
pstmt.setString(6,"Hellodd");
out.println("UPDATED");

    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
