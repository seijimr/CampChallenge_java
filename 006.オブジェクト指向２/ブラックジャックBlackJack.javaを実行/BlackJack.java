
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BlackJack extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            Dealer d= new Dealer();
            User u=new User();
            
            d.cards();
            d.setCard(d.deal());
            u.setCard(d.deal());
            
    out.print("ユーザーのカードは"+u.card()+"と"+u.card2()+"です<br>");
    out.print("ディーラーのカードは"+d.card()+"と"+d.card2()+"です<br>");
 out.print("ユーザーのカードの合計は"+u.open()+"です。");
 out.print("ディーラーのカードの合計は"+d.open()+"です。");
 if(d.open()>u.open()&&d.open()>=17){
     out.print("次のカードを引きますか？<br>ディーラー:"+d.answer()+"<br>ユーザー:YES<br>");
       }else{
 out.print("次のカードを引きますか？"+"<br>"+"ディーラー:"+d.answer()+"<br>ユーザー:"+u.answer()+"<br>");
 }
    
 
 while(d.checkSum()||u.checkSum()){ //ユーザーとディーラーどちらかがtrueである間
     if(d.checkSum()){
         d.setCard(d.hit());
     }else if(u.checkSum()){
         if(d.open()>21){
             break;
         }  //ディーラーがバストしていた場合処理を終了
         u.setCard(d.hit());
     }
     
     out.print("ユーザーのカードの合計は"+u.open()+"です。");
     out.print("ディーラーのカードの合計は"+d.open()+"です。");
      if(d.open()>21){
      out.print("次のカードを引きますか？<br>ディーラー:"+d.answer()+"<br>ユーザー:NO<br>");
         }else if(d.open()>u.open()&&d.open()<=21&&d.open()>=17){
     out.print("次のカードを引きますか？<br>ディーラー:"+d.answer()+"<br>ユーザー:YES<br>");
       }else{
              out.print("次のカードを引きますか？<br>ディーラー:"+d.answer()+"<br>ユーザー："+u.answer()+"<br>");
         }
      }
 if(d.open()>u.open()&&d.open()<=21&&d.open()>=17){
         u.setCard(d.hit());
     out.print("ユーザーのカードの合計は"+u.open()+"です。");
     out.print("ディーラーのカードの合計は"+d.open()+"です。");
      if(d.open()>u.open()){
      out.print("次のカードを引きますか？<br>ディーラー:NO<br>ユーザー：YES<br>");
         }else{
    out.print("次のカードを引きますか？<br>ディーラー:NO<br>ユーザー：NO<br>");      
      }
      }
 out.print("<br>◆結果◆<br>");
 
 out.print("ユーザーのカードの合計は"+u.open()+"です");
 if(u.open()>21){
     out.print("【Busted!】");
 }else if(u.open()==21){
     out.print("【Blackjack!!!】");
 }
 
  out.print("<br>ディーラーのカードの合計は"+d.open()+"です");
 if(d.open()>21){
     out.print("【Busted!】");
 }else if(d.open()==21){
     out.print("【Blackjack!!!】");
 }
 if(u.open()>21){
     out.print("<br>ディーラーの勝利です");//ユーザーはバストしないため使用しない処理
 }else if(u.open()<=21&&d.open()>21){
     out.print("<br>ユーザーの勝利です");
 }else if(u.open()==d.open()){
     out.print("<br>引き分けです");
 }else if(u.open()>d.open()){
     out.print("<br>ユーザーの勝利です");
 }else if(u.open()<d.open()){
     out.print("<br>ディーラーの勝利です");
 }
 
 
        } finally {
            out.close();
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
