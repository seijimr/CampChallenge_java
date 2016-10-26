package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import login.sec;

public final class register_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");

    sec s = new sec();
    s.sessionj(request, response);
    String reg = (String) session.getAttribute("reg");

      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>商品登録</title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"form.css\">\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "\\WEB-INF\\header.jsp", out, false);
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <br><br>\n");
      out.write("        <div id=\"form\">\n");
      out.write("            <form method = \"post\" action=\"register\">\n");
      out.write("                <p>商品名</p>\n");
      out.write("                <p class=\"name\"><input type=\"text\" name=\"name\" /></p>\n");
      out.write("                <p>価格</p>\n");
      out.write("                <p class=\"price\"><input type=\"number\" name=\"price\" />円</p>\n");
      out.write("                <p>在庫</p>\n");
      out.write("                <p class=\"stock\"><input type=\"number\" name=\"stock\" />個</p>\n");
      out.write("                    ");

                        //入力漏れと登録成功時の処理
                        if (reg != null) {
                            if (reg.equals("miss")) {
                                out.print("<font color = red>必ず全ての項目を入力してください。</font>");
                            } else if (reg.equals("success")) {
                                out.print("<font color = red>登録に成功しました。</font>");
                            }
                            session.removeAttribute("reg");
                        }
                    
      out.write("\n");
      out.write("                <p class=\"submit\"><input type=\"submit\" value=\"登録\" />\n");
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
