package com.user.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            HttpSession session = request.getSession();
            session.removeAttribute("userObj");

            HttpSession session1 = request.getSession();
            session.setAttribute("succMsg" ,"Logout successfully.");
            String context = request.getContextPath();
            response.sendRedirect(context +"/Login.jsp");

        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
