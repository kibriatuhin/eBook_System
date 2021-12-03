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
@WebServlet("/update_profile")
public class UpdateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            int id = Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String password = request.getParameter("password");

            System.out.println(id + " " + name + " " + email + " " + phone + " " + password);
            User user = new User();
            user.setId(id);
            user.setName(name);
            user.setEmail(email);
            user.setPhone(phone);
            HttpSession httpSession = request.getSession();
            UserDAOImpl dao = new UserDAOImpl(DBConnection.getConn());
            boolean f =  dao.checkPassword(id,password);
            if (f){
                boolean b =dao.updateProfile(user);
                if (b){
                    httpSession.setAttribute("succMsg","Update profile successfull..");
                    String context = request.getContextPath();

                    response.sendRedirect(context +"/Edit_Profile.jsp");
                }else {
                    httpSession.setAttribute("failedMsg","Something wrong on server..");
                    String context = request.getContextPath();
                    response.sendRedirect(context +"/Edit_Profile.jsp");

                }

            }else {
                httpSession.setAttribute("failedMsg","Your password incorrect..");
                String context = request.getContextPath();
                response.sendRedirect(context +"/Edit_Profile.jsp");
            }

        }catch (Exception e){
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
