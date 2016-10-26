package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import login.sec;

public final class list_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");

    sec s = new sec();
    s.sessionj(request, response);

      out.write('\n');

    Connection db_con = null;
    PreparedStatement db_st = null;
    ResultSet db_data = null;

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>商品一覧</title>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "\\WEB-INF\\header.jsp", out, false);
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!--        検索機能の実装-->\n");
      out.write("        <!--        <form method = \"post\" action = \"list\"></form>\n");
      out.write("                <p>名前<br><input type = \"text\" name = \"name\"></p>\n");
      out.write("                <p>価格<br><input type=\"number\" name=\"underprice\" />～<input type=\"number\" name=\"topprice\" />円</p>\n");
      out.write("                <p>在庫数<br><input type=\"number\" name=\"understock\" />～<input type=\"number\" name=\"topstock\" />個</p>\n");
      out.write("                <p class=\"submit\"><input type=\"submit\" value=\"検索\" />-->\n");
      out.write("\n");
      out.write("        ");

            try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                db_con = DriverManager.getConnection("jdbc:mysql://localhost:3306/stock", "seiji", "adernx");
                db_st = db_con.prepareStatement("select* from product");
                db_data = db_st.executeQuery();
                
//ここを綺麗に　データベースで表示したときと同じような表示に
                while (db_data.next()) {
                    out.print("商品名:" + db_data.getString("name")
                            + "　価格:" + db_data.getInt("price") + "円"
                            + "　在庫:" + db_data.getInt("stock") + "個<br><br>");
                }
                db_st.close();
                db_con.close();
                db_data.close();

            } catch (SQLException e_sql) {
                out.println("SQLのエラーが発生しました：" + e_sql.toString());
            } catch (Exception e) {
                out.println("接続時にエラーが発生しました：" + e.toString());
            } finally {
                if (db_con != null) {
                    try {
                        db_con.close();
                    } catch (Exception e_con) {
                        System.out.println(e_con.getMessage());
                    }
                }
            }
        
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
