package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("  <title>Book Store</title>\n");
      out.write("  <meta charset=\"utf-8\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("  <link rel=\"shortcut icon\" type=\"image/png\" href=\"favicon.ico\"/>\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("  <style>\n");
      out.write("    /* Remove the navbar's default rounded borders and increase the bottom margin */\n");
      out.write("    .navbar {\n");
      out.write("      margin-bottom: 50px;\n");
      out.write("      border-radius: 0;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    /* Remove the jumbotron's default bottom margin */ \n");
      out.write("     .jumbotron {\n");
      out.write("      margin-bottom: 0;\n");
      out.write("    }\n");
      out.write("   \n");
      out.write("    /* Add a gray background color and some padding to the footer */\n");
      out.write("    footer {\n");
      out.write("      background-color: #f2f2f2;\n");
      out.write("      padding: 25px;\n");
      out.write("    }\n");
      out.write("  </style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<div class=\"jumbotron\">\n");
      out.write("  <div class=\"container text-center\">\n");
      out.write("    <h1>Online Book Store</h1>      \n");
      out.write("    <p>Books are your best friend</p>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<nav class=\"navbar navbar-inverse\">\n");
      out.write("  <div class=\"container-fluid\">\n");
      out.write("    <div class=\"navbar-header\">\n");
      out.write("      <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#myNavbar\">\n");
      out.write("        <span class=\"icon-bar\"></span>\n");
      out.write("        <span class=\"icon-bar\"></span>\n");
      out.write("        <span class=\"icon-bar\"></span>                        \n");
      out.write("      </button>\n");
      out.write("      <a class=\"navbar-brand\" href=\"#\">Book Store</a>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"myNavbar\">\n");
      out.write("      <ul class=\"nav navbar-nav\">\n");
      out.write("        <li class=\"active\"><a href=\"index.jsp\">Home</a></li>\n");
      out.write("        <li><a href=\"#\">Categories</a></li>\n");
      out.write("        <li><a href=\"contactPage.jsp\">Contact Us</a></li>\n");
      out.write("   <form class=\"navbar-form navbar-left\" method=\"post\" action=\"books.jsp\">\n");
      out.write("      <div class=\"form-group\">\n");
      out.write("        <input type=\"text\" name=\"sbook\" class=\"form-control\" placeholder=\"Search\" name=\"search\">\n");
      out.write("      </div>\n");
      out.write("      <button type=\"submit\" class=\"btn btn-default\">Search</button>\n");
      out.write("    </form>\n");
      out.write("      </ul>\n");
      out.write("      <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("        <li><a href=\"loginPage.jsp\"><span class=\"glyphicon glyphicon-user\"></span> Your Account</a></li>\n");
      out.write("        <li><a href=\"#\"><span class=\"glyphicon glyphicon-shopping-cart\"></span>Your Books</a></li>\n");
      out.write("      </ul>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("\n");
      out.write("<div class=\"container\">    \n");
      out.write("  <div class=\"row\">\n");
      out.write("    <div class=\"col-sm-4\">\n");
      out.write("      <div class=\"panel panel-primary\">\n");
      out.write("        <div class=\"panel-heading\">Book1</div>\n");
      out.write("        <div class=\"panel-body\"><img src=\"cd.jpg\" class=\"img-responsive\" style=\"width:100%\" alt=\"Image\"></div>\n");
      out.write("        <div class=\"panel-footer\"><a href=\"cd.pdf\"><button type=\"button\" class=\"btn btn-info\">Read</button></a></div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"col-sm-4\"> \n");
      out.write("      <div class=\"panel panel-primary\">\n");
      out.write("        <div class=\"panel-heading\">Book2</div>\n");
      out.write("        <div class=\"panel-body\"><img src=\"se.jpg\" class=\"img-responsive\" style=\"width:100%\" alt=\"Image\"></div>\n");
      out.write("        <div class=\"panel-footer\"><a href=\"se.pdf\"><button type=\"button\" class=\"btn btn-info\">Read</button></a></div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"col-sm-4\"> \n");
      out.write("      <div class=\"panel panel-primary\">\n");
      out.write("        <div class=\"panel-heading\">Book3</div>\n");
      out.write("        <div class=\"panel-body\"><img src=\"cn.jpg\" class=\"img-responsive\" style=\"width:100%\" alt=\"Image\"></div>\n");
      out.write("        <div class=\"panel-footer\"><a href=\"cn.pdf\"><button type=\"button\" class=\"btn btn-info\">Read</button></a></div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</div><br><br>\n");
      out.write("\n");
      out.write("<footer class=\"container-fluid text-center\">\n");
      out.write(" <div class=\"container\">                  \n");
      out.write("  <ul class=\"pager\">\n");
      out.write("  <li><a href=\"#\">Previous</a></li>\n");
      out.write("  <li><a href=\"#\">Next</a></li>\n");
      out.write("</ul>\n");
      out.write("</div>\n");
      out.write("  <p>&copy Online Book Store</p>\n");
      out.write("    <a href=\"signUpPage.jsp\"><button type=\"button\" class=\"btn btn-danger\">Sign Up</button></a>\n");
      out.write("  </form>\n");
      out.write("</footer>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
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
