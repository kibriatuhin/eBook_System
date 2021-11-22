<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>

<div class="container-fluid">
    <div class="row pl-5">
        <div class="col-md-3 col-lg-3">
            <h1 id="logo">
                <i class="fa fa-book" aria-hidden="true"></i>
                <span class="e">E-</span><span class="book">Book</span>
            </h1>
        </div>


        <div class="col-lg-7 col-md-6">



        </div>

        <div class=" col-lg-2 mt-2 ml-auto ">
            <c:if test="${not empty userObj}">
                <a href="#" class="btn btn-dark"  ><i class="fas fa-user"></i> ${userObj.name}</a>
                <a href="logout" class="btn btn-dark" data-toggle="modal" data-target="#myModal" ><i class="fas fa-sign-out-alt"></i> logout</a>
            </c:if>
            <c:if test="${empty userObj}">
                <a href="Login.jsp" class="btn btn-dark"  ><i class="fas fa-sign-in-alt"></i> Login</a>
                <a href="Registration.jsp" class="btn btn-dark"  ><i class="fas fa-user-plus"></i> Registration</a>

            </c:if>


        </div>
    </div>

</div>
<!-- modal start -->
<%--<button class="btn btn-primary" data-toggle="modal" data-target="#myModal">Lunch modal</button>--%>
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
<!-- modal end -->

<header id="nav-bar">

    <nav class="navbar navbar-expand-lg navbar-light bg-custom py-2">
        <div class="container-fluid">
            <a class="navbar-brand ml-5" href="Admin_Home.jsp">

                <h3>
                    <i class="fa fa-home text-white " aria-hidden="true"></i>
                </h3>


            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span><i id="bar" class="fas fa-bars"></i></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-5">
                    <li class="nav-item ">
                        <a class="nav-link " href="Admin_Home.jsp">Home</a>
                    </li>

                </ul>


            </div>
        </div>

    </nav>
</header>