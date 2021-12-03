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
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            //System.out.println(email + " " + password);

            UserDAOImpl userDAO = new UserDAOImpl(DBConnection.getConn());
            HttpSession httpSession = request.getSession();


            if ("admin@gmail.com".equals(email) && "admin".equals(password)){
                User user = new User();
                user.setName("Admin");

                httpSession.setAttribute("userObj",user );

                String context = request.getContextPath();
                response.sendRedirect(context + "/Admin_Home.jsp");
            } else {
                String context = request.getContextPath();
                User user = userDAO.login(email,password);
                if (user != null){
                    httpSession.setAttribute("userObj",user);
                    response.sendRedirect(context +"/Index.jsp");
                }else {
                    httpSession.setAttribute("failedMsg" ,"Email & Password Invalid");
                    response.sendRedirect(context +"/Login.jsp");
                }


                response.sendRedirect(context + "/Home.jsp");
            }

        }catch (Exception e){
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
