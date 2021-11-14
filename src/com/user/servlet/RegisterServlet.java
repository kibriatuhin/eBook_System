package com.user.servlet;

import com.DAO.UserDAOImpl;
import com.com.DB.DBConnection;
import com.entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {

            String name = request.getParameter("fname");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String password = request.getParameter("password");
            String check = request.getParameter("check");

            //System.out.println(name + " " + email + " " + phone + " " + password + " " + check);
            User us = new User();
            us.setName(name);
            us.setEmail(email);
            us.setPhone(phone);
            us.setPassword(password);
           HttpSession httpSession = request.getSession();


            if (check!=null){
                UserDAOImpl userDAO = new UserDAOImpl(DBConnection.getConn());
                boolean f = userDAO.userRegistration(us);
                if (f)
                {

                    httpSession.setAttribute("succMsg","Registration successfully..");
                    String context = request.getContextPath();

                    response.sendRedirect(context +"/Registration.jsp");

                }
                //System.out.println("user Register successffull....");
                else
                {
                    httpSession.setAttribute("failedMsg","Something wrong on server..");
                    String context = request.getContextPath();
                    response.sendRedirect(context +"/Registration.jsp");
                }
                    //System.out.println("Something wrong on server");
            }else {
                httpSession.setAttribute("failedMsg","Please Check Agree & Terms Condition..");

                String context = request.getContextPath();

                response.sendRedirect(context + "/Registration.jsp");
                //System.out.println("Please Check Agree & Terms Condition");
            }

        }catch (Exception e){
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
