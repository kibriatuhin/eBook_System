<%--
  Created by IntelliJ IDEA.
  User: tuhin
  Date: 11/13/21
  Time: 1:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin: Home</title>
    <%@include file="allCss.jsp"%>
</head>
<body style="background-color: #f7f7f7;">
<%@include file="navBar.jsp"%>
<%--------main-------%>
<main>
    <section class="container " style="margin-top: 12%;">
        <div class="row" >
            <div class="col-md-3 ">
                <a href="Add_Books.jsp" style="text-decoration: none;">
                    <div class="card shadow-lg">
                        <div class="card-body text-center" >
                            <i class="fas fa-plus-square fa-3x" style="color: #4558C6;"></i><br>
                            <h4>Add Books</h4>
                            ---------
                        </div>
                    </div>
                </a>

            </div>
            <div class="col-md-3">
                <a href="All_Books.jsp" style="text-decoration: none;">
                    <div class="card shadow-lg">
                        <div class="card-body text-center" >
                            <i class="fas fa-book-open fa-3x" style="color: #4558C6;"></i><br>
                            <h4>All Books</h4>
                            ---------
                        </div>
                    </div>
                </a>

            </div>
            <div class="col-md-3">
                <a href="Orders.jsp" style="text-decoration: none;">
                    <div class="card shadow-lg">
                        <div class="card-body text-center" >
                            <i class="fas fa-box-open fa-3x" style="color: #4558C6;"></i><br>
                            <h4>Orders</h4>
                            ---------
                        </div>
                    </div>
                </a>

            </div>
            <div class="col-md-3">
                <a href="#" style="text-decoration: none;">
                    <div class="card shadow-lg">
                        <div class="card-body text-center" >
                            <i class="fas fa-sign-out-alt fa-3x" style="color: #4558C6;"></i><br>
                            <h4>Logout</h4>
                            ---------
                        </div>
                    </div>
                </a>

            </div>
        </div>

    </section>

</main>

<%------footer part-------%>
<%@include file="footer.jsp"%>

</body>
</html>
