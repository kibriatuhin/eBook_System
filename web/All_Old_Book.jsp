<%@ page import="com.DAO.BookDAOImpl" %>
<%@ page import="com.com.DB.DBConnection" %>
<%@ page import="com.entity.BookDtls" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: tuhin
  Date: 11/24/21
  Time: 9:58 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Old Book</title>
    <%@include file="allComponent/allCss.jsp"%>
</head>
<body style="background-color: #f7f7f7;">
<%@include file="allComponent/oldBookNavbar.jsp"%>
<!-- -------Recent-book start----- -->

<section id="old-book" class="my-5 pb-5">
    <div class="container-fluid text-center mt-2 py-5">
        <h3>Old Book</h3>
        <hr class="mx-auto">

    </div>
    <div class="container">
        <div class="row ">
            <%
                BookDAOImpl dao3 = new BookDAOImpl(DBConnection.getConn());
                List<BookDtls> list3 = dao3.getAllOldBook();
                for (BookDtls b3 : list3){%>
            <div class="col-lg-3 col-md-4 col-12 text-center product">
                <div class="card">
                    <div class="card-body">
                        <img class="img-fluid mb-3" src="books/<%=b3.getPhotoName()%>" alt="">
                        <div class="star">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <p>
                            <%=b3.getBookName()%>
                        </p>
                        <p>
                            <%=b3.getAuthor()%>

                        </p>
                        <p>
                            Categories: <%=b3.getBookCategory()%>
                        <p>
                        <h4>
                            $<%=b3.getPrice()%>
                        </h4>
                        <div class="row justify-content-center">

                            <a href="View_Details.jsp?bid=<%=b3.getBookId()%>" class="buy-btn btn btn-dark btn-sm mt-md-1  ml-1">View Details</a>
                        </div>
                        <!-- <button class="buy-btn btn btn-dark">Buy Now</button> -->
                    </div>

                </div>



            </div>
            <%}
            %>


        </div>





    </div>




</section>
<!-- -------Recent-book end----- -->
<!-- -------footer----- -->
<%@include file="allComponent/footer.jsp"%>


</body>
</html>
