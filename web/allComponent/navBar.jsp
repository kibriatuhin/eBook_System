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


        <div class="col-lg-6 col-md-8">

            <form class="input-group mb-3 mt-2" action="Search.jsp" method="post" >

                <input type="text" name="search" class="form-control" placeholder="Search Here" aria-label="Recipient's username"
                       aria-describedby="basic-addon2">
                <div class="input-group-append">
                    <button class="btn btn-outline-dark" type="submit">Search</button>
                </div>
            </form>

        </div>
        <c:if test="${not empty userObj}">
            <div class=" col-lg-3 mt-2 ml-auto mb-2">
                <a href="Checkout.jsp" class="btn btn-dark"><i style="font-size: 22px;" class="fas fa-cart-plus carttt"> Cart</i></a>
                <a href="Setting.jsp" class="btn btn-dark"  ><i class="fas fa-user"></i> ${userObj.name}</a>
                <a href="logout" class="btn btn-dark"  ><i class="fas fa-sign-out-alt"></i> Logout</a>

            </div>
        </c:if>
<%--
        <div class=" col-lg-2 mt-2 ml-auto ">
            <a href="Login.jsp" class="btn btn-dark"  ><i class="fas fa-sign-in-alt"></i> Login</a>
            <a href="Registration.jsp" class="btn btn-dark"  ><i class="fas fa-user-plus"></i> Registration</a>

        </div>--%>
        <c:if test="${ empty userObj}">
            <div class=" col-lg-3 mt-2 ml-auto mb-2">
                <a href="Login.jsp" class="btn btn-dark"  ><i class="fas fa-sign-in-alt"></i> Login</a>
                <a href="Registration.jsp" class="btn btn-dark"  ><i class="fas fa-user-plus"></i> Registration</a>

            </div>
        </c:if>

    </div>

</div>

<header id="nav-bar">

    <nav class="navbar navbar-expand-lg navbar-light bg-custom">
        <div class="container-fluid">
            <a class="navbar-brand" href="Index.jsp">

                <h3>
                    <i class="fa fa-home text-white" aria-hidden="true"></i>
                </h3>


            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span><i id="bar" class="fas fa-bars"></i></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-5">
                    <li class="nav-item ">
                        <a class="nav-link active" href="Index.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="All_Recent_Book.jsp"><i class="fas fa-book-open"></i> Recent Book</a>
                    </li>


                    <li class="nav-item">
                        <a class="nav-link " href="All_New_Book.jsp"><i class="fas fa-book-open"></i> New Book</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="All_Old_Book.jsp"><i class="fas fa-book-open"></i> Old Book</a>
                    </li>



                </ul>
                <form action="" class=" btnn ml-auto my-2 my-lg-0 my-5">
                    <a href="Setting.jsp" class="btn btn-light my-2 my-sm-0" type="submit"><i class="fas fa-users-cog"></i> Setting </a>
                    <a class="btn btn-light my-2 my-sm-0" type="submit"><i class="fas fa-phone-square-alt"></i> Contuct Us
                    </a>
                </form>

            </div>
        </div>

    </nav>
</header>