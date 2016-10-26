package login;

import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class sec {

    //ログインしていない状態でのアクセスを禁止するメソッド
    public void sessionj(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession(true);
        String log = (String) session.getAttribute("loginnow");
        if (log == null) {
            response.sendRedirect("loginpage.jsp");
        } else if (session.getAttribute("loginnow").equals("NO")) {
            response.sendRedirect("loginpage.jsp");
        }
    }
}
