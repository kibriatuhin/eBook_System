<%@ page import="com.entity.Cart" %>
<%@ page import="com.DAO.CartDAO" %>
<%@ page import="com.DAO.CartDAOImpl" %>
<%@ page import="com.com.DB.DBConnection" %>
<%@ page import="com.entity.User" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: tuhin
  Date: 11/26/21
  Time: 3:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Cart</title>
    <%@include file="allComponent/allCss.jsp"%>
</head>
<body style="background-color: #f7f7f7;">
<%@include file="allComponent/navBar.jsp"%>


<c:if test="${empty userObj}">
    <c:redirect url="Login.jsp"/>
</c:if>

<section>
    <div class="container-fluid">
        <div class="row p-2">
            <div class="col-md-6">

                <div class="card bg-whi">
                    <div class="card-body">
                        <h3 class="text-center text-success">Your Selected item</h3>

                        <%-- -----------jstl start----- --%>

                        <c:if test="${not empty failedMsg}">
                            <p class="text-center text-danger" style="font-weight: 500">
                                    ${failedMsg}
                            </p>
                            <c:remove var="failedMsg" scope="session"/>

                        </c:if>
                        <c:if test="${not empty succMsg}">
                            <p class="text-center text-danger" style="font-weight: 500">
                                    ${succMsg}
                            </p>
                            <c:remove var="succMsg" scope="session"/>

                        </c:if>

                        <%-- -----------jstl end----- --%>

                        <table class="table table-striped">
                            <thead>
                            <tr>
                                <th scope="col">Book Name</th>
                                <th scope="col">Author</th>
                                <th scope="col">Price</th>
                                <th scope="col">Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            <%
                                User user = (User) session.getAttribute("userObj");
                                CartDAOImpl dao = new CartDAOImpl(DBConnection.getConn());
                                List<Cart> cart = dao.getBookByUser(user.getId());
                                Double totalPrice=0.0;
                                for (Cart c : cart)
                                {
                                    totalPrice = c.getTotalPrice();%>
                            <tr>
                                <th scope="row"><%=c.getBookName()%></th>
                                <td><%=c.getAuthor()%></td>
                                <td><%=c.getPrice()%></td>
                                <td>
                                    <a href="Remove_Book?bid=<%=c.getBid()%>&uid=<%=c.getUid()%>&cid=<%=c.getCid()%>" class="btn btn-sm btn-danger"><i class="fas fa-trash"></i> Remove</a>
                                </td>
                            </tr>

                                <%}
                            %>
                            <tr>
                                <td colspan="3">Total Price </td>
                                <td>= <%=totalPrice%>$</td>

                            </tr>



                            </tbody>
                        </table>
                    </div>
                </div>

            </div>
            <div class="col-md-6">
                <div class="card">'
                    <div class="card-body">
                        <h3 class="text-center text-success">Your Details for Order</h3>
                        <%-- -----------jstl start----- --%>
                        <c:if test="${not empty failed}">
                            <p class="text-center text-danger" style="font-weight: 500">
                                    ${failed}
                            </p>
                            <c:remove var="failed" scope="session"/>

                        </c:if>
                       <%-- <c:if test="${not empty succMsg}">
                            <p class="text-center text-success" style="font-weight: 500">
                                    ${succMsg}
                            </p>
                            <c:remove var="succMsg" scope="session"/>

                        </c:if>--%>
                        <form action="order" method="post">
                            <input type="hidden" value="${userObj.id}" name="id" >
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="inputEmail">Full Name: </label>
                                    <input type="text" name="name" class="form-control" id="inputEmail" value="<%=user.getName()%>" readonly="readonly">
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="inputPassword1">Email :</label>
                                    <input type="email" name="email" class="form-control" id="inputPassword1" value="<%=user.getEmail()%>" readonly="readonly">
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="inputEmail2">Mobile No : </label>
                                    <input type="number" name="phone" class="form-control" id="inputEmail2" value="<%=user.getPhone()%>">
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="inputPassword3">District</label>
                                    <input type="text" name="district" class="form-control" id="inputPassword3" required >
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="inputEmail4">Address : </label>
                                    <input type="text" name="address" class="form-control" id="inputEmail4" >
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="inputPassword5">Road No : </label>
                                    <input type="number" name="road" class="form-control" id="inputPassword5" required>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-12">
                                    <label for="inputEmail6">House No : </label>
                                    <input type="number" name="house" class="form-control" id="inputEmail6" required>
                                </div>

                            </div>
                            <div class="form-group">
                                <label for="exampleFormControlSelect1">Payment Type</label>
                                <select class="form-control" id="exampleFormControlSelect1" name="payment">
                                    <option value="nonselect">---Select---</option>
                                    <option value="COD">Cash On delivary</option>

                                </select>
                            </div>

                            <div class="row justify-content-center">
                                <button type="submit" href="#" class="buy-btn btn btn-dark   mt-md-1"> Order Now</button>
                                <a href="Index.jsp" class="buy-btn btn btn-dark  mt-md-1  ml-1">Continue  Shopping..</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

    </div>
</section>


<%@include file="allComponent/footer.jsp"%>


</body>
</html>
