import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.text.SimpleDateFormat;

public class task12 extends HttpServlet {

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
        ResultSet db_data = null;
         SimpleDateFormat birthday = new SimpleDateFormat("yyyy-MM-dd");
         
        try {
            request.setCharacterEncoding("UTF-8");
            String name = request.getParameter("name");
            String age = request.getParameter("age");
            String year = null;
            String month = null;
            String day = null;
            //if(!request.getParameter("year").equals("")&&!request.getParameter("month").equals("")&&!request.getParameter("day").equals("")){
            year = request.getParameter("year");
            month = request.getParameter("month");
            day = request.getParameter("day");
            
            String search = request.getParameter("andor");
            
           Class.forName("com.mysql.jdbc.Driver").newInstance();
           db_con = DriverManager.getConnection("jdbc:mysql://localhost:3306/challenge_db","seiji","adernx");
           
           if(search.equals("or")){
           db_st = db_con.prepareStatement("select* from profiles where name like ? or age = ? or birthday = ?");
          }else{
           db_st = db_con.prepareStatement("select* from profiles where name like ? and age = ? and birthday = ?");
           }
           db_st.setString(1,"%"+name+"%");
           db_st.setString(2,age);
           if(!request.getParameter("year").equals("")&&!request.getParameter("month").equals("")&&!request.getParameter("day").equals("")){
           db_st.setDate(3,new java.sql.Date(birthday.parse(year + "-" + month + "-" + day).getTime()));
           }else{
               db_st.setString(3,"");
           }
           db_data = db_st.executeQuery();
           
           out.print("「検索結果」<br><br>");
           
           while(db_data.next()){
               out.print(
                "profilesID:"+ db_data.getInt("profilesID")+"<br>"+
                "名前："+ db_data.getString("name") + "<br>"+
                "年齢："+ db_data.getInt("age") + "<br>"+
                "TEL："+ db_data.getString("tell")+"<br>"+
                "誕生日："+ db_data.getDate("birthday")+"<br>");
           }
       
           db_st.close();
           db_con.close();
           db_data.close();
           
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
