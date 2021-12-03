<%--
  Created by IntelliJ IDEA.
  User: tuhin
  Date: 12/1/21
  Time: 6:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Edit Profile</title>
    <%@include file="allComponent/allCss.jsp"%>

</head>
<body style="background-color: #F8F9FA;">
<c:if test="${ empty userObj}" >

    <c:redirect url="Login.jsp"></c:redirect>

</c:if>
<%@include file="allComponent/navBar.jsp"%>

<main>

    <div class=" container pt-5 pb-5">
        <div class="row justify-content-center">
            <div class="registration  col-lg-7 col-md-7  shadow-lg p-5 mb-6 bg-white rounded">
                <h4 class="text-center" style="font-weight: 600; color: #4558C6;">Edit Profile</h4>
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
                <form class="formcontrol" action="update_profile" method="post">
                    <input type="hidden" value="${userObj.id}" name="id">
                    <div class="form-group">
                        <label for="exampleInputEmail">Full Name </label>
                        <input type="text" name="name" value="${userObj.name}" class="form-control" id="exampleInputEmail" aria-describedby="emailHelp"  required>

                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail2">Email address </label>
                        <input type="email" name="email" value="${userObj.email}" class="form-control" id="exampleInputEmail2" aria-describedby="emailHelp" readonly="readonly"  required>

                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Phone No </label>
                        <input type="number" name="phone" value="${userObj.phone}" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"  required>

                    </div>





                    <div class="form-group">
                        <label for="exampleInputEmail5">Password*</label>
                        <input type="password" name="password" class="form-control" id="exampleInputEmail5" aria-describedby="emailHelp" placeholder="Enter password" required>

                    </div>

                    <div class="row justify-content-center">
                        <button type="submit" class="btn btn-dark " style="font-weight: 600;">Update</button>
                    </div>

                </form>
            </div>
        </div>
    </div>
</main>

<%@include file="allComponent/footer.jsp"%>

</body>
</html>
