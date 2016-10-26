<%@page import="java.sql.*"%>
<%@page import="login.sec"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    sec s = new sec();
    s.sessionj(request, response);
%>
<%
    Connection db_con = null;
    PreparedStatement db_st = null;
    ResultSet db_data = null;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>商品一覧</title>
        <jsp:include page="\WEB-INF\header.jsp"/>
    </head>
    <body>
        <!--        検索機能の実装 フォームの大きさの調整-->
        <!--        <form method = "post" action = "list"></form>
                <p>名前<br><input type = "text" name = "name"></p>
                <p>価格<br><input type="number" name="underprice" />～<input type="number" name="topprice" />円</p>
                <p>在庫数<br><input type="number" name="understock" />～<input type="number" name="topstock" />個</p>
                <p class="submit"><input type="submit" value="検索" />-->

        <%
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
        %>
    </body>
</html>
