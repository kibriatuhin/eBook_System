<%--
  Created by IntelliJ IDEA.
  User: tuhin
  Date: 11/12/21
  Time: 1:40 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>eBook: Registration</title>
    <%@include file="allComponent/allCss.jsp"%>
</head>
<body style="background-color: #F8F9FA;">
<%@include file="allComponent/navBar.jsp"%>
<div class=" container pt-5 pb-5">
    <div class="row justify-content-center">
        <div class="login  col-lg-7 col-md-7  shadow-lg p-5 mb-6 bg-white rounded">
            <h4 class="text-center" style="font-weight: 700; color:#4558C6 ">Registration</h4>
            <%-----using JSTL------%>

            <c:if test="${not empty succMsg}">
                <p class="text-center text-success" style="font-weight: 500">
                    ${succMsg}
                </p>
                <c:remove var="succMsg" scope="session"/>

            </c:if>
            <%--ne null--%>
            <c:if test="${not empty failedMsg }">
                <p class="text-center text-danger" style="font-weight: 500">
                    ${failedMsg}
                </p>
                <c:remove var="failedMsg" scope="session"/>
            </c:if>

            <%-----end JSTL------%>

            <form class="formcontrol" action="RegisterServlet" method="post">
                <div class="form-group">
                    <label for="name">Full Name</label>
                    <input type="text" class="form-control" name="fname" id="name" aria-describedby="emailHelp" placeholder="Enter name" required>

                </div>
                <div class="form-group">
                    <label for="email">Email address</label>
                    <input type="email" class="form-control" name="email" id="email" aria-describedby="emailHelp" placeholder="Enter email" required>

                </div>
                <div class="form-group">
                    <label for="phone">Phone Number</label>
                    <input type="text" class="form-control" id="phone" name="phone" aria-describedby="emailHelp" placeholder="Enter phone" required>

                </div>



                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" name="password" class="form-control" id="password" required placeholder="Enter password">
                </div>
                <div class="form-group">
                    <label for="repassword">Re-Password</label>
                    <input type="password" class="form-control" id="repassword" required placeholder="Re Enter password">
                </div>
                <div class="form-group form-check">
                    <input name="check" type="checkbox" class="form-check-input" id="exampleCheck1" >
                    <label class="form-check-label" for="exampleCheck1">Agree & Terms  Condition</label>
                </div>
                <div class="row justify-content-lg-center">
                    <button type="submit" class="btn btn-dark " style="font-weight: 600;">Registration</button>
                </div>
            </form>
        </div>
    </div>
</div>

<%@include file="allComponent/footer.jsp"%>

</body>
</html>
