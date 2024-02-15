package org.apache.jsp.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class UserRegistration_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>User Registration</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <form method=\"post\">\n");
      out.write("            <table border=\"3\" align=\"center\">\n");
      out.write("                <tr>\n");
      out.write("                    <td>Name</td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"text\" name=\"txtname\" placeholder=\"Enter Name\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Contact</td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"text\" name=\"txtcontact\" placeholder=\"Enter Contact No\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Email</td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"email\" name=\"txtemail\" placeholder=\"Enter Email-Id\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                 <tr><td>Address</td>\n");
      out.write("                     <td><textarea name=\"address\" rows=\"3\" cols=\"10\"></textarea>\n");
      out.write("                 </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <tr>\n");
      out.write("                    <td>DOB</td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"text\" name=\"txtdob\"placeholder=\"Enter DateOfBirth\" >\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <!-- <tr>\n");
      out.write("                    <td>Work Post</td>\n");
      out.write("                    <td>\n");
      out.write("                        <select name=\"ddlLoc\">\n");
      out.write("                            <option>--select--</option>\n");
      out.write("                        </select>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Title</td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"text\" name=\"txtdob\"placeholder=\"Enter Complaint Title\" >\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                 <tr><td>Content</td>\n");
      out.write("                     <td><textarea name=\"reqdetails\" rows=\"3\" cols=\"25\"></textarea>\n");
      out.write("                 </tr>\n");
      out.write("                 <tr><td>Reply</td>\n");
      out.write("                     <td><textarea name=\"reqdetails\" rows=\"3\" cols=\"20\"></textarea>\n");
      out.write("                 </tr>\n");
      out.write("                \n");
      out.write("                <tr>\n");
      out.write("                    <td>Image Gallery</td>\n");
      out.write("                    <td align=\"center\">\n");
      out.write("                        <input type=\"file\" name=\"txtphoto\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Duration</td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"text\" name=\"txtname\" placeholder=\"Enter work duration\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>-->\n");
      out.write("                <tr>\n");
      out.write("                    <td>Photo</td>\n");
      out.write("                    <td align=\"center\">\n");
      out.write("                        <input type=\"file\" name=\"txtphoto\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                  <td>Gender</td>\n");
      out.write("                    <td>\n");
      out.write("                        Male<input type=\"radio\" name=\"txtmale\">\n");
      out.write("                        Female<input type=\"radio\" name=\"txtfemale\">\n");
      out.write("                        Others<input type=\"radio\" name=\"txtothers\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("              \n");
      out.write("                <tr>\n");
      out.write("                 <tr>\n");
      out.write("                    <td>Password</td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"password\" name=\"txtpsswd\" placeholder=\"Enter Password\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>District</td>\n");
      out.write("                    <td>\n");
      out.write("                        <select name=\"ddlLoc\">\n");
      out.write("                            <option>--select--</option>\n");
      out.write("                        </select>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                    <td>Place</td>\n");
      out.write("                    <td>\n");
      out.write("                        <select name=\"ddlplace\">\n");
      out.write("                            <option>--select--</option>\n");
      out.write("                        </select>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Location</td>\n");
      out.write("                    <td>\n");
      out.write("                        <select name=\"ddlloc\">\n");
      out.write("                            <option>--select--</option>\n");
      out.write("                        </select>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <!--<tr>\n");
      out.write("                    <td>Ward</td>\n");
      out.write("                    <td>\n");
      out.write("                        <select name=\"ddlWard\">\n");
      out.write("                            <option>--select Ward--</option>\n");
      out.write("                        </select>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Password</td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"password\" name=\"txtpsswd\" placeholder=\"Enter Password\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Confirm Password</td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"password\" name=\"txtpsswd\" placeholder=\"ReEnter Password\">\n");
      out.write("                    </td>\n");
      out.write("                </tr> -->        \n");
      out.write("                <tr>\n");
      out.write("                    <td colspan=\"2\" align=\"center\">\n");
      out.write("                        <input type=\"submit\" name=\"txtsave\" value=\"Save\">\n");
      out.write("                        <input type=\"reset\" name=\"txtcancel\" value=\"Cancel\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
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
