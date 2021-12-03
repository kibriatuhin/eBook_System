<%--
  Created by IntelliJ IDEA.
  User: tuhin
  Date: 12/1/21
  Time: 5:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Setting</title>
    <%@include file="allComponent/allCss.jsp"%>
    <style>
        a{
            text-decoration: none;
            color: black;
        }
        a:hover{
            color: black;
            text-decoration: none;
        }
    </style>
</head>
<body style="background-color: #F8F9FA;">
<c:if test="${ empty userObj}" >

    <c:redirect url="Login.jsp"></c:redirect>

</c:if>
<%@include file="allComponent/navBar.jsp"%>

<div class="container">

        <h3 class="text-center"> Hello ,${userObj.name}</h3>


    <div class="row p-5">
        <div class="col-md-4">
            <a href="Sell_Book.jsp">
                <div class="card">
                    <div class="card-body text-center">
                        <div class="text-primary">
                            <i class="fas fa-book-open fa-3x"></i>
                        </div>

                        <h3>Sell Old Book</h3>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-md-4">
            <a href="Old_Book.jsp">
                <div class="card">
                    <div class="card-body text-center">
                        <div class="text-primary">
                            <i class="fas fa-book-open fa-3x"></i>
                        </div>

                        <h3>Old Book</h3>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-md-4">
            <a href="Edit_Profile.jsp">
                <div class="card">
                    <div class="card-body text-center">
                        <div class="text-primary">
                            <i class="fas fa-id-card fa-3x"></i>
                        </div>

                        <h3>Edit Profile</h3>
                    </div>
                </div>
            </a>
        </div>
    </div>
    <div class="row p-5">
        <%--<div class="col-md-4">
            <a href="User_Address.jsp">
                <div class="card">
                    <div class="card-body text-center">
                        <div class="text-warning">
                            <i class="fas fa-map-marker-alt fa-3x"></i>
                        </div>

                        <h3>Your Address</h3>
                        <p>Edit Address</p>
                    </div>
                </div>
            </a>
        </div>--%>
        <div class="col-md-6">
            <a href="Orders.jsp">
                <div class="card">
                    <div class="card-body text-center">
                        <div class="text-danger">
                            <i class="fas fa-shopping-bag fa-3x"></i>
                        </div>

                        <h3>My Order</h3>
                        <p>Track your order</p>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-md-6">
            <a href="Help_Line.jsp">
                <div class="card">
                    <div class="card-body text-center">
                        <div class="text-primary">
                            <i class="fas fa-info-circle fa-3x"></i>
                        </div>

                        <h3>Help Center</h3>
                        <p>24*7 center</p>
                    </div>
                </div>
            </a>
        </div>
    </div>
</div>

<%@include file="allComponent/footer.jsp"%>

</body>
</html>
