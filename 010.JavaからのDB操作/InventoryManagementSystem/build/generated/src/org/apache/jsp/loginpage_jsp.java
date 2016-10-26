package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class loginpage_jsp extends org.apache.jasper.runtime.HttpJspBase
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

    //ログインページにアクセスした際に既にログインしていればトップへ
    String log = (String) session.getAttribute("loginnow");
    if (log != null && log.equals("YES")) {
        response.sendRedirect("top.jsp");
    }

      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"SHORTCUT ICON\" href=\"Amazon.ico\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"form.css\">\n");
      out.write("        <title>ログインページ</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <div align=\"center\"><h1>在庫管理システム</h1></div>\n");
      out.write("\n");
      out.write("        <div id=\"form\">\n");
      out.write("            <form method = \"post\" action=\"filter\">\n");
      out.write("                <p>ユーザーID</p>\n");
      out.write("                <p class=\"ID\"><input type=\"text\" name=\"ID\" placeholder=\"userID\" /></p>\n");
      out.write("                <p>パスワード</p>\n");
      out.write("                <p class=\"pass\"><input type=\"password\" name=\"pass\" placeholder=\"password\" /></p>\n");
      out.write("                    ");

                        //ログインに失敗した時の処理
                        if (log != null && log.equals("NO")) {
                            out.print("<font color = red>IDまたはパスワードが間違っています。</font>");
                            session.invalidate();
                        }
                    
      out.write("\n");
      out.write("                <p class=\"submit\"><input type=\"submit\" value=\"ログイン\" />\n");
      out.write("\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
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
