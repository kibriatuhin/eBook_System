package com.user.servlet;

import com.DAO.BookOrderDAOImpl;
import com.DAO.CartDAO;
import com.DAO.CartDAOImpl;
import com.com.DB.DBConnection;
import com.entity.BookDtls;
import com.entity.Book_order;
import com.entity.Cart;
import sun.security.pkcs11.Secmod;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

@WebServlet("/order")
public class OrderServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            int id = Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String district = request.getParameter("district");
            String address = request.getParameter("address");
            String road = request.getParameter("road");
            String house = request.getParameter("house");
            String payment = request.getParameter("payment");
            HttpSession httpSession = request.getSession();
            String fullAddress = district +"," + address + ",RoadNo: " + road + ",HouseNo: " + house ;

            System.out.println(name + " " + email + " " + phone + " " + fullAddress + " " + payment);
            CartDAOImpl dao =new  CartDAOImpl(DBConnection.getConn());
            List<Cart> blist =  dao.getBookByUser(id);

            if (blist.isEmpty()){
                httpSession.setAttribute("failed","Please add book");
                String context = request.getContextPath();
                response.sendRedirect(context +"/Checkout.jsp");

            }else {
                BookOrderDAOImpl dao1 = new BookOrderDAOImpl(DBConnection.getConn());
                /*int i = dao1.getOrderNo();*/
                Book_order order = null;
                ArrayList<Book_order> orderList = new ArrayList<>();
                Random random = new Random();


                for (Cart c : blist){
                    order = new Book_order();

                    //System.out.println(c.getBookName() + " " + c.getAuthor() + " " + c.getPrice());
                    order.setOrderId("BOOK-ORD-" + random.nextInt(1000));
                    order.setUser_name(name);
                    order.setEmail(email);
                    order.setPhone(phone);
                    order.setFulladd(fullAddress);
                    order.setBookName(c.getBookName());
                    order.setAuthor(c.getAuthor());
                    order.setPrice(c.getPrice()+"");
                    order.setPaymentType(payment);
                    orderList.add(order);

                }


                if ("nonselect".equals(payment)){
                    httpSession.setAttribute("failed","Please select payment type..");
                    String context = request.getContextPath();
                    response.sendRedirect(context +"/Checkout.jsp");

                }else {
                    boolean f =dao1.saveOrder(orderList);
                    if (f){
                        String context = request.getContextPath();
                        response.sendRedirect(context +"/Order_success.jsp");
                    }else {
                        httpSession.setAttribute("failed","Some thing wrong...");
                        String context = request.getContextPath();
                        response.sendRedirect(context +"/Checkout.jsp");
                    }
                }
            }


        }catch (Exception e){
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
