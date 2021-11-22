<%--
  Created by IntelliJ IDEA.
  User: tuhin
  Date: 11/13/21
  Time: 11:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Admin : Orders</title>
    <%@include file="allComponent/Admin_allCss.jsp"%>
</head>
<body style="background-color: #f7f7f7;">
<%@include file="allComponent/Admin_navBar.jsp"%>
<c:if test="${empty userObj}">
    <c:redirect url="Login.jsp"/>
</c:if>
<%--------main-------%>
<main>

    <div class="table-responsive mt-5">
        <!--Table-->
        <table class="table table-striped">
            <h2><caption style="caption-side: top; text-align: center; font-weight: 700; color: #4558C6">All Orders</caption></h2>


            <!--Table head-->
            <thead class="table-dark">
            <tr>
                <th scope="col">Order Id</th>
                <th scope="col"> Name</th>
                <th scope="col"> Email</th>
                <th scope="col"> Address</th>
                <th scope="col">Phone No </th>
                <th scope="col">Book Name</th>
                <th scope="col">Author</th>
                <th scope="col">Price</th>
                <th scope="col">Payment Type</th>

            </tr>
            </thead>
            <!--Table head-->

            <!--Table body-->
            <tbody>
            <tr>
                <th scope="row">1</th>
                <td>Kate</td>
                <td>Moss</td>
                <td>USA / The United Kingdom / China </td>
                <td>New York City / Warsaw / Lodz / </td>
                <td>New York City / Warsaw / Lodz / </td>
                <td>New York City / Warsaw / Lodz / </td>
                <td>New York City / Warsaw / Lodz / </td>
                <td>New York City / Warsaw / Lodz / </td>

            </tr>

            </tbody>
            <!--Table body-->
        </table>
        <!--Table-->
    </div>
</main>

<%-----footer-------%>


</body>
</html>
