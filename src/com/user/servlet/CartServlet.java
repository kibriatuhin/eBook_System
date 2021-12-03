package com.user.servlet;

import com.DAO.BookDAO;
import com.DAO.BookDAOImpl;
import com.DAO.CartDAOImpl;
import com.com.DB.DBConnection;
import com.entity.BookDtls;
import com.entity.Cart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
@WebServlet("/cartServlet")
public class CartServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            int bid = Integer.parseInt(request.getParameter("bid"));
            int uid = Integer.parseInt(request.getParameter("uid"));

            BookDAOImpl dao = new BookDAOImpl(DBConnection.getConn());
            BookDtls b = dao.getBookById(bid);

            Cart c = new Cart();
            c.setBid(bid);
            c.setUid(uid);
            c.setBookName(b.getBookName());
            c.setAuthor(b.getAuthor());
            c.setPrice(Double.parseDouble(b.getPrice()));
            c.setTotalPrice(Double.parseDouble(b.getPrice()));

            CartDAOImpl dao1 = new CartDAOImpl(DBConnection.getConn());
            boolean f = dao1.addCart(c);
            HttpSession session = request.getSession();
            if (f){
                session.setAttribute("addCart" , "Book added to cart");
                response.sendRedirect("All_New_Book.jsp");


            }else {
                session.setAttribute("failed" , "Something wrong on server");
                response.sendRedirect("All_New_Book.jsp");
            }

        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
