<%--
  Created by IntelliJ IDEA.
  User: tuhin
  Date: 11/13/21
  Time: 1:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Admin: Home</title>
    <%@include file="allComponent/Admin_allCss.jsp"%>
</head>
<body style="background-color: #f7f7f7;">
<%@include file="allComponent/Admin_navBar.jsp"%>
  <c:if test="${empty userObj}">
    <c:redirect url="Login.jsp"/>
  </c:if>

<%--------main-------%>
<main>
    <section class="container " style="margin-top: 12%;">
        <div class="row" >
            <div class="col-md-3 ">
                <a href="Admin_AddBooks.jsp" style="text-decoration: none;">
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
                <a href="Admin_AllBooks.jsp" style="text-decoration: none;">
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
                <a href="Admin_Orders.jsp" style="text-decoration: none;">
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
                <a href="logout" data-toggle="modal" data-target="#myModal" style="text-decoration: none;">
                    <div class="card shadow-lg">
                        <div class="card-body text-center" >
                            <i class="fas fa-sign-out-alt fa-3x" style="color: #4558C6;"></i><br>
                            <h4>Logout</h4>
                            ---------
                        </div>
                    </div>
                </a>

            </div>
            <%-- modal start--%>
            <div class="modal fade"  id="myModal" data-backdrop="static">
                <div class="modal-dialog ">
                    <div class="modal-content">
                        <div class="modal-header">

                            <button class="close" data-dismiss="modal">
                                <span>&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <h4 class="text-center">Do you want to logout?</h4>
                        </div>
                        <div class="modal-footer">
                            <button class="btn btn-danger" data-dismiss="modal"> close</button>
                            <a href="logout" type="button" class="btn btn-primary text-white">logout</a>

                        </div>
                    </div>
                </div>

            </div>

           <%-- modal end--%>
        </div>

    </section>

</main>

<%------footer part-------%>
<%@include file="allComponent/Admin_footer.jsp"%>

</body>
</html>
