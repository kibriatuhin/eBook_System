<%@ page import="static java.lang.System.out" %>
<%@ page import="com.com.DB.DBConnection" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.DAO.BookDAOImpl" %>
<%@ page import="java.util.List" %>
<%@ page import="com.entity.BookDtls" %>
<%@ page import="com.entity.User" %>


<%--
  Created by IntelliJ IDEA.
  User: tuhin
  Date: 11/9/21
  Time: 4:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EBook: Home</title>
    <%@include file="allComponent/allCss.jsp"%>

</head>
<body style="background-color: #f7f7f7;">
 <%@include file="allComponent/navBar.jsp"%>
 <%
     User user = (User) session.getAttribute("userObj");
 %>



<main>
    <!---------------------------banner start---------------------- -->
    <section id="banner">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <p class="promo-title"> BEST BOOK STORE </p>
                    <p>
                        A e-book has a team of experts that specialize in modern book store . So instead
                        of traditional marketing they provide services geared towards the use
                        of technology.
                    </p>

                </div>
                <div class="col-md-6 text-center">
                    <img src="img/home2.png" class="img-fluid" alt="">
                </div>
            </div>
        </div>
        <img src="img/wave1.png" alt="" class="bottom-img">
    </section>
    <!---------------------------banner end---------------------- -->
    <!-- -------Recent-book start----- -->

    <section id="recent-book">
        <div class="container text-center mt-2 py-5">
            <h3>Recent Book</h3>
            <hr class="mx-auto">

        </div>
        <div class="container">
            <div class="row ">

                <%
                    BookDAOImpl dao1 = new BookDAOImpl(DBConnection.getConn());
                    List<BookDtls> list1 = dao1.getRecentBook();
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

                                <a href="View_Details.jsp?bid=<%=b1.getBookId()%>" class="buy-btn btn btn-dark btn-sm mt-md-1  ml-1">Vew Details</a>

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

            <div class="row justify-content-center">
                <a href="All_Recent_Book.jsp" class="buy-btn btn btn-dark" > View All</a>
            </div>



        </div>




    </section>
    <!-- -------Recent-book end----- -->

    <!-- -------New book start----- -->

    <section id="New-book">
        <div class="container text-center mt-2 py-5">
            <h3>New Book</h3>
            <hr class="mx-auto">

        </div><div class="container">
            <div class="row ">

                <%
                    BookDAOImpl dao = new BookDAOImpl(DBConnection.getConn());
                    List<BookDtls> list = dao.getNewBook();
                    for (BookDtls b : list){%>
                <div class="col-lg-3 col-md-4 col-12 text-center product">
                    <div class="card">
                        <div class="card-body">
                            <img class="img-fluid mb-3" src="books/<%=b.getPhotoName()%>" alt="">
                            <div class="star">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                            <p>
                                <%=b.getBookName()%>
                            </p>
                            <p>
                                <%=b.getAuthor()%>

                            </p>
                            <p>
                                Categories: <%=b.getBookCategory()%>
                            <p>
                            <h4>
                                $<%=b.getPrice()%>
                            </h4>
                            <div class="row justify-content-center">
                                <%
                                    if (user==null)
                                    {%>
                                        <a href="Login.jsp" class="buy-btn btn btn-dark btn-sm  mt-md-1"><i class="fas fa-cart-plus"></i> Add Card</a>

                                  <%  } else {%>
                                          <a href="cartServlet?bid=<%=b.getBookId()%>&uid=<%=user.getId()%> " class="buy-btn btn btn-dark btn-sm  mt-md-1"><i class="fas fa-cart-plus"></i> Add Card</a>

                                 <% }
                                %>

                                <a href="View_Details.jsp?bid=<%=b.getBookId()%>" class="buy-btn btn btn-dark btn-sm mt-md-1  ml-1">Vew Details</a>
                            </div>
                            <!-- <button class="buy-btn btn btn-dark">Buy Now</button> -->
                        </div>

                    </div>



                </div>
                    <%}
                %>


            </div>

            <div class="row justify-content-center">
                <a href="All_New_Book.jsp" class="buy-btn btn btn-dark" > View All</a>
            </div>



        </div>-




    </section>
    <!-- -------New book end----- -->
    <!-- -------Old start----- -->

    <section id="Old-book">
        <div class="container text-center mt-2 py-5">
            <h3>Old Book</h3>
            <hr class="mx-auto">

        </div>
        <div class="container">
            <div class="row ">
                <%
                    BookDAOImpl dao3 = new BookDAOImpl(DBConnection.getConn());
                    List<BookDtls> list3 = dao3.getOldBook();
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

            <div class="row justify-content-center">
                <a href="All_Old_Book.jsp" class="buy-btn btn btn-dark" > View All</a>
            </div>



        </div>




    </section>
    <!-- -------Old book end----- -->

    <!-- -------footer----- -->
    <%@include file="allComponent/footer.jsp"%>


</main>
</body>
</html>
