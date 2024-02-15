package org.apache.jsp.Worker;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class WorkerProfile_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write('\n');
      DB.ConnectionClass con = null;
      synchronized (_jspx_page_context) {
        con = (DB.ConnectionClass) _jspx_page_context.getAttribute("con", PageContext.PAGE_SCOPE);
        if (con == null){
          con = new DB.ConnectionClass();
          _jspx_page_context.setAttribute("con", con, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Worker Profile</title>\n");
      out.write("    </head>\n");
      out.write("        <body>\n");
      out.write("            ");

          String selqry = "select*from tbl_worker where worker_id='"+session.getAttribute("wid")+"'";  
          ResultSet rs2 = con.selectCommand(selqry);
          if(rs2.next())
          {
        
      out.write("\n");
      out.write("        <form method=\"post\">\n");
      out.write("        <table border=\"3\" align=\"center\">\n");
      out.write("               <tr>\n");
      out.write("                    <td colspan=\"2\" align=\"right\"><img src=\"../Assets/Files/Workerphoto/");
      out.print(rs2.getString("worker_photo"));
      out.write("\" height=\"120\" width=\"120\"</td>\n");
      out.write("               </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Name</td>\n");
      out.write("                    <td>");
      out.print(rs2.getString("worker_name"));
      out.write("\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Contact</td>\n");
      out.write("                    <td>");
      out.print(rs2.getString("worker_contact"));
      out.write("\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Email</td>\n");
      out.write("                    <td>");
      out.print(rs2.getString("worker_email"));
      out.write("\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                 <tr><td>Address</td>\n");
      out.write("                     <td>");
      out.print(rs2.getString("worker_address"));
      out.write("\n");
      out.write("                 </tr>\n");
      out.write("            ");

          }
            
      out.write("     \n");
      out.write("        </table>\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
