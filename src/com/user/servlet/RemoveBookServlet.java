package com.user.servlet;

import com.DAO.CartDAOImpl;
import com.com.DB.DBConnection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
@WebServlet("/Remove_Book")
public class RemoveBookServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int bid = Integer.parseInt(request.getParameter("bid"));
        int uid = Integer.parseInt(request.getParameter("uid"));
        int cid = Integer.parseInt(request.getParameter("cid"));

        CartDAOImpl dao = new CartDAOImpl(DBConnection.getConn());
        boolean f = dao.deleteBook(bid,uid,cid);
        HttpSession session = request.getSession();
        String context = request.getContextPath();

        if (f){
            session.setAttribute("succMsg" , "Book remove from cart.");

            response.sendRedirect(context + "/Checkout.jsp");
        }else {
            session.setAttribute("failedMsg" ,"Something wrong on server..");
            response.sendRedirect(context +"/Checkout.jsp");
        }


    }
}
