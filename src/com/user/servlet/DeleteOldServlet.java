package com.user.servlet;

import com.DAO.BookDAOImpl;
import com.com.DB.DBConnection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
@WebServlet("/delete_oldBook")
public class DeleteOldServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String email = request.getParameter("em");
            int id = Integer.parseInt(request.getParameter("id"));
            BookDAOImpl dao = new BookDAOImpl(DBConnection.getConn());
            boolean b = dao.OldBookDelete(email , "Old",id);

            HttpSession session = request.getSession();
            String context = request.getContextPath();

            if (b){
                session.setAttribute("succMsg" , "Old book remove from cart.");

                response.sendRedirect(context + "/Old_Book.jsp");
            }else {
                session.setAttribute("failedMsg" ,"Something wrong on server..");
                response.sendRedirect(context +"/Old_Book.jsp");
            }
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
