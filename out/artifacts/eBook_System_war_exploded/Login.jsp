<%--
  Created by IntelliJ IDEA.
  User: tuhin
  Date: 11/12/21
  Time: 2:07 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>eBook: Login</title>
    <%@include file="allComponent/allCss.jsp"%>
</head>
<body style="background-color: #F8F9FA;">
<%@include file="allComponent/navBar.jsp"%>
<div class=" container pt-5 pb-5">
    <div class="row justify-content-center">
        <div class="login  col-lg-7 col-md-7  shadow-lg p-5 mb-6 bg-white rounded">
            <h4 class="text-center " style="font-weight: 700;color:#4558C6 ">Login here</h4>
            <%-- -----------jstl start----- --%>
            <c:if test="${not empty failedMsg}">
                <p class="text-center text-danger" style="font-weight: 500">
                    ${failedMsg}
                </p>
                <c:remove var="failedMsg" scope="session"/>

            </c:if>
            <c:if test="${not empty succMsg}">
                <p class="text-center text-success" style="font-weight: 500">
                        ${succMsg}
                </p>
                <c:remove var="failedMsg" scope="session"/>

            </c:if>


            <%-- -----------jstl end----- --%>
            <form class="formcontrol" action="LoginServlet" method="post">

                <div class="form-group">
                    <label for="exampleInputEmail1">Email address</label>
                    <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" required>

                </div>




                <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <input type="password" name="password" class="form-control" id="exampleInputPassword1" required placeholder="Enter password">
                </div>



                <div class="text-center  pt-2">
                    <button type="submit" class="btn btn-dark " style="font-weight: 600;">Login</button><br><br>
                    <a href="Registration.jsp" class="text-white " style="font-weight: 600;">Create Account</a>

                </div>
            </form>
        </div>
    </div>
</div>

<%@include file="allComponent/footer.jsp"%>

</body>
</html>
