/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jums;

import base.querybeans;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author morita
 */
public class DeleteCollectivelyConfirm extends HttpServlet {

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
        try {
            HttpSession session = request.getSession(true);
            //アクセスルートチェック
            String accesschk = request.getParameter("acd");
            if(accesschk ==null || (Integer)session.getAttribute("acd")!=Integer.parseInt(accesschk)){
                throw new Exception("不正なアクセスです");
            }
            
            ArrayList<UserDataDTO> list;
            list = (ArrayList<UserDataDTO>) session.getAttribute("resultData");
            ArrayList<UserDataDTO> deletelist = new ArrayList<UserDataDTO>();

            for (int i = 0; i < list.size(); i++) {
                session.setAttribute("user" + i, false);
                if (request.getParameter("user" + i) != null) {//削除したいユーザーをtrueにする
                    deletelist.add(list.get(i));
                    session.setAttribute("user" + i, true);
                }
            }
            if (deletelist.isEmpty()) {//チェックが一つも入っていなければ前の画面に戻す
                response.sendRedirect("DeleteCollectively" + querybeans.getQuerysearchresult());
            } else {
                session.setAttribute("deletelist", deletelist);
                request.getRequestDispatcher("/deletecollectivelyconfirm.jsp").forward(request, response);
            }
        } catch (Exception e) {
            //何らかの理由で失敗したらエラーページにエラー文を渡して表示。想定は不正なアクセスとDBエラー
            request.setAttribute("error", e.getMessage());
            request.getRequestDispatcher("/error.jsp").forward(request, response);
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
