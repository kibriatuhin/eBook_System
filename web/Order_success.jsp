<%--
  Created by IntelliJ IDEA.
  User: tuhin
  Date: 12/3/21
  Time: 11:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Success</title>
    <%@include file="allComponent/allCss.jsp"%>
</head>
<body style="background-color: #F8F9FA;">
<%@include file="allComponent/navBar.jsp"%>
<main>
    <div class="container mt-5 mb-5">
        <div class="row justify-content-center">
            <div class="col-md-12 text-center mt-5">
                <i class="fas fa-check-circle fa-5x text-success"></i>
                <h1>Thank you</h1>
                <h2>Your order successfully</h2>
                <h3>With in 7 days your book will be Delivered in your address.</h3>
                <a href="Index.jsp" class="btn btn-primary mt-3">Home</a>
                <a href="Orders.jsp" class="btn btn-danger mt-3">View Order</a>
            </div>
        </div>


    </div>
</main>
<%@include file="allComponent/footer.jsp"%>


</body>
</html>
