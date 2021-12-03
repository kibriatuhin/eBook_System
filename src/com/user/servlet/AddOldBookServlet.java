package com.user.servlet;

import com.DAO.BookDAOImpl;
import com.com.DB.DBConnection;
import com.entity.BookDtls;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.File;
import java.io.IOException;
@MultipartConfig
public class AddOldBookServlet extends HttpServlet {
    private static String getSubmittedFileName(Part part) {
        for (String cd : part.getHeader("content-disposition").split(";")) {
            if (cd.trim().startsWith("filename")) {
                String fileName = cd.substring(cd.indexOf('=') + 1).trim().replace("\"", "");
                return fileName.substring(fileName.lastIndexOf('/') + 1).substring(fileName.lastIndexOf('\\') + 1); // MSIE fix.
            }
        }
        return null;
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String bookName = request.getParameter("bname");
            String author = request.getParameter("author");
            String price = request.getParameter("price");
            String categories = "Old";
            String status = "Active";
            String userEmail = request.getParameter("useremail");
            Part part = request.getPart("bimg");
            String fileName = getSubmittedFileName(part) ;

            BookDtls b = new BookDtls(bookName,author,price,categories,status,fileName,userEmail);

            BookDAOImpl dao = new BookDAOImpl(DBConnection.getConn());



//            String imgPath = "G:/java/Meal Management System Final 2/meal-management-system/Meal Management System/web/Images/"+ name;

            boolean f = dao.addBooks(b);
            HttpSession session = request.getSession();
            if (f){


                /*String name = "image_"+System.currentTimeMillis()+".jpg";
                File file = new File("/home/tuhin/Desktop/Java My Project/eBook System/web/books/");
                InputStream is = request.getPart("bimg").getInputStream();
                OutputStream os = new FileOutputStream(file + "/" + name);
                int len;
                byte[] b1 = new byte[1024];
                while ((len= is.read(b1)) != -1){
                    os.write(b1,0,len);
                }
                os.close();
                is.close();*/
                File file = new File("/home/tuhin/Desktop/Java My Project/eBook System/web/books/");
                String path = file.getPath();
                part.write(path + File.separator + fileName);

                session.setAttribute("succMsg" ,"Book Add Successfully");
                response.sendRedirect("Sell_Book.jsp");


            }else {
                session.setAttribute("failedMsg", "Something wrong on Server..");
                response.sendRedirect("Sell_Book.jsp");

            }

        }catch (Exception e){
            e.printStackTrace();
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
