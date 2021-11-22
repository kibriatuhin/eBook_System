package com.admin;

import com.DAO.BookDAOImpl;
import com.com.DB.DBConnection;
import com.entity.BookDtls;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
@WebServlet("/EditBooksServlet")
public class EditBooksServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            int id = Integer.parseInt(request.getParameter("id"));
            String bookName = request.getParameter("bname");
            String author = request.getParameter("author");
            String price = request.getParameter("price");
            String status = request.getParameter("bstatus");

            BookDtls b = new BookDtls();
            b.setBookId(id);
            b.setBookName(bookName);
            b.setAuthor(author);
            b.setPrice(price);
            b.setStatus(status);

            BookDAOImpl dao = new BookDAOImpl(DBConnection.getConn());
            boolean f = dao.updateEditBooks(b);
            HttpSession session = request.getSession();
            if (f){
                session.setAttribute("succMsg","Book Update Successfully....");
                response.sendRedirect("Admin_AllBooks.jsp");
            }else {
                session.setAttribute("failedMsg","Something wrong on server....");
                response.sendRedirect("Admin_AllBooks.jsp");

            }

        }catch (Exception e){
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
