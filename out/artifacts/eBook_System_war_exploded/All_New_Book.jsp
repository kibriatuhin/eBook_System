<%@ page import="com.DAO.BookDAOImpl" %>
<%@ page import="com.com.DB.DBConnection" %>
<%@ page import="com.entity.BookDtls" %>
<%@ page import="java.util.List" %>
<%@ page import="com.entity.User" %><%--
  Created by IntelliJ IDEA.
  User: tuhin
  Date: 11/24/21
  Time: 9:57 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>All New Book</title>
    <%@include file="allComponent/allCss.jsp"%>
    <style>
        /* toast */
        #toast {
            min-width: 300px;
            position: fixed;
            bottom: 30px;
            left: 50%;
            margin-left: -125px;
            background: #333;
            padding: 10px;
            color: white;
            text-align: center;
            z-index: 1;
            font-size: 18px;
            visibility: hidden;
            box-shadow: 0px 0px 100px #000;
        }

        #toast.display {
            visibility: visible;
            animation: fadeIn 0.5, fadeOut 0.5s 2.5s;
        }

        @keyframes fadeIn {from { bottom:0;
            opacity: 0;
        }

            to {
                bottom: 30px;
                opacity: 1;
            }

        }
        @keyframes fadeOut {form { bottom:30px;
            opacity: 1;
        }

            to {
                bottom: 0;
                opacity: 0;
            }
        }

        /* toast */

    </style>
</head>
<body style="background-color: #f7f7f7;">
<c:if test="${not empty addCart}">

    <div id="toast">${addCart}</div>

    <script type="text/javascript">
        showToast();
        function showToast(content)
        {
            $('#toast').addClass("display");
            $('#toast').html(content);
            setTimeout(() => {
                $("#toast").removeClass("display");
        },2000)
        }
    </script>
    <c:remove var="addCart" scope="session"/>

</c:if>

<%@include file="allComponent/newBookNavbar.jsp"%>
<%
    User user = (User) session.getAttribute("userObj");
%>
<!-- -------Recent-book start----- -->

<section id="new-book" class="my-5 pb-5">
    <div class="container-fluid text-center mt-2 py-5">
        <h3>New Book</h3>
        <hr class="mx-auto">

    </div>
    <div class="container">
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
                            <a href="View_Details.jsp?bid=<%=b.getBookId()%>" class="buy-btn btn btn-dark btn-sm mt-md-1  ml-1">View Details</a>
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
