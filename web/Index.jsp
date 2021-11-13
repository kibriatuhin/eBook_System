<%@ page import="static java.lang.System.out" %>
<%@ page import="com.com.DB.DBConnection" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.*" %>


<%--
  Created by IntelliJ IDEA.
  User: tuhin
  Date: 11/9/21
  Time: 4:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EBook: Home</title>
    <%@include file="allComponent/allCss.jsp"%>

</head>
<body style="background-color: #f7f7f7;">
 <%@include file="allComponent/navBar.jsp"%>



<main>
    <!---------------------------banner start---------------------- -->
    <section id="banner">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <p class="promo-title"> BEST BOOK STORE </p>
                    <p>
                        A e-book has a team of experts that specialize in modern book store . So instead
                        of traditional marketing they provide services geared towards the use
                        of technology.
                    </p>

                </div>
                <div class="col-md-6 text-center">
                    <img src="img/home2.png" class="img-fluid" alt="">
                </div>
            </div>
        </div>
        <img src="img/wave1.png" alt="" class="bottom-img">
    </section>
    <!---------------------------banner end---------------------- -->
    <!-- -------Recent-book start----- -->

    <section id="recent-book" class="my-5 pb-5">
        <div class="container text-center mt-2 py-5">
            <h3>Recent Book</h3>
            <hr class="mx-auto">

        </div>
        <div class="container">
            <div class="row ">
                <div class="col-lg-3 col-md-4 col-12 text-center product">
                    <div class="card">
                        <div class="card-body">
                            <img class="img-fluid mb-3" src="books/book1.jpg" alt="">
                            <div class="star">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                            <p>
                                java
                            </p>
                            <p>
                                E Balagurusamy

                            </p>
                            <p>
                                Categories: New
                            <p>
                            <h4>
                                $92.00
                            </h4>
                            <div class="row justify-content-center">
                                <a href="#" class="buy-btn btn btn-dark btn-sm  mt-md-1"><i class="fas fa-cart-plus"></i> Add Card</a>
                                <a href="#" class="buy-btn btn btn-dark btn-sm mt-md-1  ml-1">Buy Now</a>
                            </div>
                            <!-- <button class="buy-btn btn btn-dark">Buy Now</button> -->
                        </div>

                    </div>



                </div>
                <div class="col-lg-3 col-md-4 col-12 text-center product">
                    <div class="card">
                        <div class="card-body">
                            <img class="img-fluid mb-3" src="books/book2.jpg" alt="">
                            <div class="star">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>

                            </div>
                            <p class="p-name">
                                C++
                            </p>
                            <p>
                                Siddhartha Rao
                            </p>
                            <p>
                                Categories: New
                            <p>
                            <h4 class="p-price">
                                $82.00
                            </h4>
                            <div class="row justify-content-center">
                                <a href="#" class="buy-btn btn btn-dark btn-sm mt-md-1"><i class="fas fa-cart-plus"></i> Add Card</a>
                                <a href="#" class="buy-btn btn btn-dark btn-sm mt-md-1 ml-1">Buy Now</a>
                            </div>
                        </div>
                    </div>




                </div>
                <div class="col-lg-3 col-md-4 col-12 text-center product">

                    <div class="card">
                        <div class="card-body">
                            <img class="img-fluid mb-3" src="books/book3.jpg" alt="">

                            <div class="star">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                            <p class="p-name">
                                Networking
                            </p>
                            <p>
                                Keveh Pahlavan
                            </p>
                            <p>
                                Categories: New
                            <p>
                            <h4 class="p-price">
                                $22.00
                            </h4>
                            <div class="row justify-content-center">
                                <a href="#" class="buy-btn btn btn-dark btn-sm mt-md-1"><i class="fas fa-cart-plus"></i> Add Card</a>
                                <a href="#" class="buy-btn btn btn-dark btn-sm mt-md-1  ml-1">Buy Now</a>
                            </div>
                        </div>
                    </div>



                </div>
                <div class="col-lg-3 col-md-4 col-12 text-center product">

                    <div class="card">
                        <div class="card-body">
                            <img class="img-fluid mb-3" src="books/book4.jpg" alt="">
                            <div class="star">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>

                            </div>
                            <p class="p-name">
                                Database System
                            </p>
                            <p>
                                Elmasri/ Navathe
                            </p>
                            <p>
                                Categories: New
                            <p>
                            <h4 class="p-price">
                                $12.00
                            </h4>
                            <div class="row justify-content-center">
                                <a href="#" class="buy-btn btn btn-dark btn-sm mt-md-1"><i class="fas fa-cart-plus"></i> Add Card</a>
                                <a href="#" class="buy-btn btn btn-dark btn-sm mt-md-1  ml-1">Buy Now</a>
                            </div>
                        </div>
                    </div>


                </div>
            </div>

            <div class="row justify-content-center">
                <a href="" class="buy-btn btn btn-dark" > View All</a>
            </div>



        </div>




    </section>
    <!-- -------Recent-book end----- -->

    <!-- -------New book start----- -->

    <section id="New-book" class="my-5 pb-5">
        <div class="container text-center mt-2 py-5">
            <h3>New Book</h3>
            <hr class="mx-auto">

        </div>
        <div class="container">
            <div class="row ">
                <div class="col-lg-3 col-md-4 col-12 text-center product">
                    <div class="card">
                        <div class="card-body">
                            <img class="img-fluid mb-3" src="books/book1.jpg" alt="">
                            <div class="star">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                            <p>
                                java
                            </p>
                            <p>
                                E Balagurusamy

                            </p>
                            <p>
                                Categories: New
                            <p>
                            <h4>
                                $92.00
                            </h4>
                            <div class="row justify-content-center">
                                <a href="#" class="buy-btn btn btn-dark btn-sm  mt-md-1"><i class="fas fa-cart-plus"></i> Add Card</a>
                                <a href="#" class="buy-btn btn btn-dark btn-sm mt-md-1  ml-1">Buy Now</a>
                            </div>
                            <!-- <button class="buy-btn btn btn-dark">Buy Now</button> -->
                        </div>

                    </div>



                </div>
                <div class="col-lg-3 col-md-4 col-12 text-center product">
                    <div class="card">
                        <div class="card-body">
                            <img class="img-fluid mb-3" src="books/book2.jpg" alt="">
                            <div class="star">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>

                            </div>
                            <p class="p-name">
                                C++
                            </p>
                            <p>
                                Siddhartha Rao
                            </p>
                            <p>
                                Categories: New
                            <p>
                            <h4 class="p-price">
                                $82.00
                            </h4>
                            <div class="row justify-content-center">
                                <a href="#" class="buy-btn btn btn-dark btn-sm mt-md-1"><i class="fas fa-cart-plus"></i> Add Card</a>
                                <a href="#" class="buy-btn btn btn-dark btn-sm mt-md-1 ml-1">Buy Now</a>
                            </div>
                        </div>
                    </div>




                </div>
                <div class="col-lg-3 col-md-4 col-12 text-center product">

                    <div class="card">
                        <div class="card-body">
                            <img class="img-fluid mb-3" src="books/book3.jpg" alt="">

                            <div class="star">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                            <p class="p-name">
                                Networking
                            </p>
                            <p>
                                Keveh Pahlavan
                            </p>
                            <p>
                                Categories: New
                            <p>
                            <h4 class="p-price">
                                $22.00
                            </h4>
                            <div class="row justify-content-center">
                                <a href="#" class="buy-btn btn btn-dark btn-sm mt-md-1"><i class="fas fa-cart-plus"></i> Add Card</a>
                                <a href="#" class="buy-btn btn btn-dark btn-sm mt-md-1  ml-1">Buy Now</a>
                            </div>
                        </div>
                    </div>



                </div>
                <div class="col-lg-3 col-md-4 col-12 text-center product">

                    <div class="card">
                        <div class="card-body">
                            <img class="img-fluid mb-3" src="books/book4.jpg" alt="">
                            <div class="star">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>

                            </div>
                            <p class="p-name">
                                Database System
                            </p>
                            <p>
                                Elmasri/ Navathe
                            </p>
                            <p>
                                Categories: New
                            <p>
                            <h4 class="p-price">
                                $12.00
                            </h4>
                            <div class="row justify-content-center">
                                <a href="#" class="buy-btn btn btn-dark btn-sm mt-md-1"><i class="fas fa-cart-plus"></i> Add Card</a>
                                <a href="#" class="buy-btn btn btn-dark btn-sm mt-md-1  ml-1">Buy Now</a>
                            </div>
                        </div>
                    </div>


                </div>
            </div>

            <div class="row justify-content-center">
                <a href="" class="buy-btn btn btn-dark" > View All</a>
            </div>



        </div>




    </section>
    <!-- -------New book end----- -->
    <!-- -------Old start----- -->

    <section id="Old-book" class="my-5 pb-5">
        <div class="container text-center mt-2 py-5">
            <h3>Old Book</h3>
            <hr class="mx-auto">

        </div>
        <div class="container">
            <div class="row ">
                <div class="col-lg-3 col-md-4 col-12 text-center product">
                    <div class="card">
                        <div class="card-body">
                            <img class="img-fluid mb-3" src="books/book1.jpg" alt="">
                            <div class="star">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                            <p>
                                java
                            </p>
                            <p>
                                E Balagurusamy

                            </p>
                            <p>
                                Categories: New
                            <p>
                            <h4>
                                $92.00
                            </h4>
                            <div class="row justify-content-center">

                                <a href="#" class="buy-btn btn btn-dark btn-sm mt-md-1  ml-1">View Details</a>
                            </div>
                            <!-- <button class="buy-btn btn btn-dark">Buy Now</button> -->
                        </div>

                    </div>



                </div>
                <div class="col-lg-3 col-md-4 col-12 text-center product">
                    <div class="card">
                        <div class="card-body">
                            <img class="img-fluid mb-3" src="books/book2.jpg" alt="">
                            <div class="star">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>

                            </div>
                            <p class="p-name">
                                C++
                            </p>
                            <p>
                                Siddhartha Rao
                            </p>
                            <p>
                                Categories: New
                            <p>
                            <h4 class="p-price">
                                $82.00
                            </h4>
                            <div class="row justify-content-center">

                                <a href="#" class="buy-btn btn btn-dark btn-sm mt-md-1 ml-1">View Details</a>
                            </div>
                        </div>
                    </div>




                </div>
                <div class="col-lg-3 col-md-4 col-12 text-center product">

                    <div class="card">
                        <div class="card-body">
                            <img class="img-fluid mb-3" src="books/book3.jpg" alt="">

                            <div class="star">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                            <p class="p-name">
                                Networking
                            </p>
                            <p>
                                Keveh Pahlavan
                            </p>
                            <p>
                                Categories: New
                            <p>
                            <h4 class="p-price">
                                $22.00
                            </h4>
                            <div class="row justify-content-center">

                                <a href="#" class="buy-btn btn btn-dark btn-sm mt-md-1  ml-1">View Details</a>
                            </div>
                        </div>
                    </div>



                </div>
                <div class="col-lg-3 col-md-4 col-12 text-center product">

                    <div class="card">
                        <div class="card-body">
                            <img class="img-fluid mb-3" src="books/book4.jpg" alt="">
                            <div class="star">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>

                            </div>
                            <p class="p-name">
                                Database System
                            </p>
                            <p>
                                Elmasri/ Navathe
                            </p>
                            <p>
                                Categories: New
                            <p>
                            <h4 class="p-price">
                                $12.00
                            </h4>
                            <div class="row justify-content-center">

                                <a href="#" class="buy-btn btn btn-dark btn-sm mt-md-1  ml-1">View Details</a>
                            </div>
                        </div>
                    </div>


                </div>
            </div>

            <div class="row justify-content-center">
                <a href="" class="buy-btn btn btn-dark" > View All</a>
            </div>



        </div>




    </section>
    <!-- -------Old book end----- -->

    <!-- -------footer----- -->
    <%@include file="allComponent/footer.jsp"%>


</main>
</body>
</html>
