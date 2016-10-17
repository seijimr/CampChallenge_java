import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.text.SimpleDateFormat;

public class task11 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        Connection db_con = null;
        PreparedStatement db_st = null;
        SimpleDateFormat birthday = new SimpleDateFormat("yyyy-MM-dd");
         
        try {
            request.setCharacterEncoding("UTF-8");
            int id = Integer.parseInt(request.getParameter("ID"));
            String name = request.getParameter("name");
            String tell = request.getParameter("tell");
            String year = request.getParameter("year");
            String month = request.getParameter("month");
            String day = request.getParameter("day");
            String age = request.getParameter("age");
            
           Class.forName("com.mysql.jdbc.Driver").newInstance();
           db_con = DriverManager.getConnection("jdbc:mysql://localhost:3306/challenge_db","seiji","adernx");
            
           db_st = db_con.prepareStatement("update profiles set name=?,tell=?,age=?,birthday=? where profilesID = ?" );
           db_st.setInt(5,id);
           db_st.setString(1, name);
           db_st.setString(2,tell);
           db_st.setString(3, age);
           db_st.setDate(4,new java.sql.Date(birthday.parse(year + "-" + month + "-" + day).getTime()));
            db_st.executeUpdate();
            
            out.print("ID:"+ id + "の登録情報を更新しました");
            
           db_st.close();
           db_con.close();
           
        } catch (SQLException e_sql) {
           out.println("SQLのエラーが発生しました："+e_sql.toString());
        }catch(Exception e){
            out.println("接続時にエラーが発生しました："+e.toString());
        } finally {
            if(db_con != null){
                try{
                    db_con.close();
                }catch(Exception e_con){
                    System.out.println(e_con.getMessage());
                }
            }
        }
    }

// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
