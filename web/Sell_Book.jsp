<%--
  Created by IntelliJ IDEA.
  User: tuhin
  Date: 12/1/21
  Time: 6:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Sell Book</title>
    <%@include file="allComponent/allCss.jsp"%>

</head>
<body style="background-color: #F8F9FA;">
<c:if test="${empty userObj}">
    <c:redirect url="Login.jsp"></c:redirect>
</c:if>
<%@include file="allComponent/navBar.jsp"%>

<main>

    <div class=" container pt-5 pb-5">
        <div class="row justify-content-center">
            <div class="registration  col-lg-7 col-md-7  shadow-lg p-5 mb-6 bg-white rounded">
                <h4 class="text-center" style="font-weight: 600; color: #4558C6;">Sell Old Book</h4>
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
                    <c:remove var="succMsg" scope="session"/>

                </c:if>


                <%-- -----------jstl end----- --%>
                <form class="formcontrol" enctype="multipart/form-data" action="add_old_book" method="post">

                    <input type="hidden" value="${userObj.email}" name="useremail">
                    <div class="form-group">
                        <label for="exampleInputEmail">Book Name*</label>
                        <input type="text" name="bname" class="form-control" id="exampleInputEmail" aria-describedby="emailHelp" placeholder="Enter name" required>

                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail2">Author Name*</label>
                        <input type="text" name="author" class="form-control" id="exampleInputEmail2" aria-describedby="emailHelp" placeholder="Enter email" required>

                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Price*</label>
                        <input type="number" name="price" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter phone" required>

                    </div>





                    <div class="form-group">
                        <label for="exampleFormControlFile1">Upload Photo</label>
                        <input type="file" name="bimg" class="form-control-file" id="exampleFormControlFile1">
                    </div>

                    <div class="row justify-content-center">
                        <button type="submit" class="btn btn-dark " style="font-weight: 600;">Sell</button>
                    </div>

                </form>
            </div>
        </div>
    </div>
</main>

<%@include file="allComponent/footer.jsp"%>

</body>
</html>
