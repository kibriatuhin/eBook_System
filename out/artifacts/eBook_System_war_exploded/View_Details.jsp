<%@ page import="com.DAO.BookDAOImpl" %>
<%@ page import="com.com.DB.DBConnection" %>
<%@ page import="com.entity.BookDtls" %><%--
  Created by IntelliJ IDEA.
  User: tuhin
  Date: 11/24/21
  Time: 11:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Vew Books</title>
    <%@include file="allComponent/allCss.jsp"%>
</head>
<body style="background-color: #F8F9FA;">
<%@include file="allComponent/navBar.jsp"%>
<%
    int id = Integer.parseInt(request.getParameter("bid"));
    BookDAOImpl dao = new BookDAOImpl(DBConnection.getConn());
    BookDtls b = dao.getBookById(id);

%>
<main>

    <div class="container p-5">
        <div class="row ">
            <div class="col-md-6 p-5 text-center border bg-white">
                <img src="books/<%=b.getPhotoName()%>" alt="" style="height: 200px; width: 180px;"><br>
                <h4 class="mt-4">Book Name : <span class="text-success"><%=b.getBookName()%></span></h4>
                <h4>Author name : <span class="text-success"><%=b.getAuthor()%></span>  </h4>
                <h4>Category : <span class="text-success"><%=b.getBookCategory()%></span> </h4>
                <h4>Price : <span class="text-success">$<%=b.getPrice()%></span> </h4>
            </div>
            <div class="col-md-6 p-5 text-center border bg-white">
                <h2 class="pt-3"><%=b.getBookName()%></h2>
                <%
                    if ("Old".equals(b.getBookCategory()))
                    {%>
                    <h5 class="text-primary">Contact To Seller.</h5>
                     <h5 class="text-primary"><i class="fas fa-envelope"></i> Email: <%=b.getEmail()%></h5>


                 <%   }
                %>
                <div class="row">
                    <div class="col-md-4 text-danger text-center p-2">
                        <i class="fas fa-money-bill-wave-alt fa-2x"></i><br>
                        <p>Cash On Delivery</p>
                    </div>
                    <div class="col-md-4 text-danger text-center p-2">
                        <i class="fas fa-undo-alt fa-2x"></i> <br>
                        <p>Return Available</p>
                    </div>
                    <div class="col-md-4 text-danger text-center p-2">
                        <i class="fas fa-truck-moving fa-2x"></i><br>
                        <p>Free Shoping</p>
                    </div>






                </div>
                <%
                    if ("Old".equals(b.getBookCategory()))
                    {%>

                <div class="row justify-content-center">

                    <a href="Index.jsp" class="buy-btn btn btn-dark  mt-md-1"><i class="fas fa-cart-plus"></i> Continue Shopping</a>
                    <a href="#" class="buy-btn btn btn-dark  mt-md-1  ml-1"><i class="fas fa-dollar-sign"></i> <%=b.getPrice()%></a>


                </div>
                   <% }else {%>
                <div class="row justify-content-center">

                    <a href="#" class="buy-btn btn btn-dark  mt-md-1"><i class="fas fa-cart-plus"></i> Add Card</a>
                    <a href="#" class="buy-btn btn btn-dark  mt-md-1  ml-1"><i class="fas fa-dollar-sign"></i> <%=b.getPrice()%></a>


                </div>
                  <% }
                %>


            </div>
        </div>
    </div>



</main>
<!-- -------footer----- -->
<%@include file="allComponent/footer.jsp"%>

</body>
</html>
