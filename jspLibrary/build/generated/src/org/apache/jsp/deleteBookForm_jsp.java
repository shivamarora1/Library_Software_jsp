package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class deleteBookForm_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/header.jsp");
    _jspx_dependants.add("/footer.jsp");
  }

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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title> Welcome to KC Library Softwares </title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"newcss.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    <center>\n");
      out.write("        <img src=\"lib_logo_2015.png\" alt=\"Library Logo\">\n");
      out.write("        \n");
      out.write("    ");
      out.write("\n");
      out.write("        <h2>Delete Book form Library</h2>\n");
      out.write("        <form method=\"POST\" action=\"deleteBook.jsp\">\n");
      out.write("            <table><tr><td>Book Name:</td><td><input type=\"text\" name=\"b_name\"></td></tr>\n");
      out.write("            <tr><td>Book ID:</td><td><input type=\"text\" name=\"b_id\"></td></tr>\n");
      out.write("            </table>\n");
      out.write("            <input type=\"submit\" value=\"Delete Book Record\">\n");
      out.write("            \n");
      out.write("        </form>\n");
      out.write("        \n");
      out.write("   <b><table class=\"bottom_bar\"><tr><td><a href=\"addBookForm.jsp\">Add New Book</a>\n");
      out.write("        </td><td><a href=\"deleteBookForm.jsp\">Delete Book</a>\n");
      out.write("    </td><td><a href=\"deleteBookForm.jsp\">Update Book</a>\n");
      out.write("    </td></tr></table></b>\n");
      out.write("        ");
      out.write("\n");
      out.write("<h5 id=\"bt\"> ALl rights Reservered</h5>\n");
      out.write("</center>   \n");
      out.write("    </body>\n");
      out.write("</html>");
      out.write('\n');
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
