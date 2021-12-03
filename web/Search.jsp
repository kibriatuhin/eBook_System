<%@ page import="com.entity.User" %>
<%@ page import="com.DAO.BookDAOImpl" %>
<%@ page import="com.entity.BookDtls" %>
<%@ page import="com.com.DB.DBConnection" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: tuhin
  Date: 12/4/21
  Time: 1:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Recent Book</title>
    <%@include file="allComponent/allCss.jsp"%>
</head>
<body style="background-color: #f7f7f7;">
<%
    User user = (User) session.getAttribute("userObj");
%>
<%@include file="allComponent/recentBookNavbar.jsp"%>

<!-- -------Recent-book start----- -->

<section id="recent-book" class="my-5 pb-5">
    <div class="container-fluid text-center mt-2 py-5">
        <h3>Recent Book</h3>
        <hr class="mx-auto">

    </div>
    <div class="container">
        <div class="row ">

            <%
                String ch = request.getParameter("search");
                BookDAOImpl dao1 = new BookDAOImpl(DBConnection.getConn());
                List<BookDtls> list1 = dao1.getBookBySearch(ch);
                for (BookDtls b1 : list1){%>
            <div class="col-lg-3 col-md-4 col-12 text-center product">
                <div class="card">
                    <div class="card-body">
                        <img class="img-fluid mb-3" src="books/<%=b1.getPhotoName()%>" alt="">
                        <div class="star">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <p>
                            <%=b1.getBookName()%>
                        </p>
                        <p>
                            <%=b1.getAuthor()%>

                        </p>
                        <p>
                            Categories: <%=b1.getBookCategory()%>
                                <%
                                    if (b1.getBookCategory().equals("Old"))
                                    { %>
                        <h4>
                            $<%=b1.getPrice()%>
                        </h4>
                        <div class="row justify-content-center">

                            <a href="View_Details.jsp?bid=<%=b1.getBookId()%>" class="buy-btn btn btn-dark btn-sm mt-md-1  ml-1">View Details</a>
                        </div>

                        <%} else {%>
                        <h4>
                            $<%=b1.getPrice()%>
                        </h4>
                        <div class="row justify-content-center">
                            <%
                                if (user==null)
                                {%>
                            <a href="Login.jsp" class="buy-btn btn btn-dark btn-sm  mt-md-1"><i class="fas fa-cart-plus"></i> Add Card</a>

                            <%  } else {%>
                            <a href="cartServlet?bid=<%=b1.getBookId()%>&uid=<%=user.getId()%> " class="buy-btn btn btn-dark btn-sm  mt-md-1"><i class="fas fa-cart-plus"></i> Add Card</a>

                            <% }
                            %>
                            <a href="View_Details.jsp?bid=<%=b1.getBookId()%>" class="buy-btn btn btn-dark btn-sm mt-md-1  ml-1">View Details</a>
                        </div>

                        <%}
                        %>

                        <p>

                            <!-- <button class="buy-btn btn btn-dark">Buy Now</button> -->
                    </div>

                </div>



            </div>
            <%  }
            %>



        </div>





    </div>




</section>
<!-- -------Recent-book end----- -->
<!-- -------footer----- -->
<%@include file="allComponent/footer.jsp"%>
</body>
</html>
