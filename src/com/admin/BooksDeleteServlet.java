package com.admin;

import com.DAO.BookDAOImpl;
import com.com.DB.DBConnection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/delete")
public class BooksDeleteServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            int id = Integer.parseInt(request.getParameter("id"));

            BookDAOImpl dao = new BookDAOImpl(DBConnection.getConn());
            boolean f = dao.deleteBooks(id);
            HttpSession session = request.getSession();
            if (f){
                session.setAttribute("succMsg","Book Delete Successfully....");
                response.sendRedirect("Admin_AllBooks.jsp");
            }else {
                session.setAttribute("failedMsg","Something wrong on server....");
                response.sendRedirect("Admin_AllBooks.jsp");

            }

        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
