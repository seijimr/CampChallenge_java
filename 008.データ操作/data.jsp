<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>プロフィール</title>
    </head>
    <body>
        <%
            request.setCharacterEncoding("UTF-8");
            String name = request.getParameter("name");
            String gender = request.getParameter("gender");
            String hobby = request.getParameter("hobby");
            out.print("名前：" + name + "<br>");
            out.print("性別：" + gender + "<br>");
            out.print("趣味：" + hobby + "<br>");
            
        HttpSession hs = request.getSession(true);
        hs.setAttribute("sName" , name);
        hs.setAttribute("sGender" , gender);
        hs.setAttribute("sHobby" , hobby);
                    %>
    </body>
</html>
