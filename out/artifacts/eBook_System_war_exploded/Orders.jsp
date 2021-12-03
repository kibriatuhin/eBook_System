<%@ page import="com.entity.User" %>
<%@ page import="com.entity.Book_order" %>
<%@ page import="com.DAO.BookOrderDAOImpl" %>
<%@ page import="com.com.DB.DBConnection" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: tuhin
  Date: 12/1/21
  Time: 7:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Orders</title>
    <%@include file="allComponent/allCss.jsp"%>
</head>
<body style="background-color: #F8F9FA;">
<c:if test="${empty userObj}">
    <c:redirect url="Login.jsp"></c:redirect>
</c:if>
<%@include file="allComponent/navBar.jsp"%>
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
                <th scope="col"> Book Name</th>
                <th scope="col"> Address</th>
                <th scope="col">Price </th>
                <th scope="col">Payment Type</th>


            </tr>
            </thead>
            <!--Table head-->

            <!--Table body-->
            <tbody>

            <%
                User user= (User) session.getAttribute("userObj");
                BookOrderDAOImpl dao = new BookOrderDAOImpl(DBConnection.getConn());
                List<Book_order> blist = dao.getBook(user.getEmail());

                for (Book_order b:blist){%>
            <tr>
                <td scope="row"><%=b.getOrderId()%></td>
                <td><%=b.getUser_name()%></td>
                <td><%=b.getBookName()%></td>
                <td><%=b.getFulladd()%></td>
                <td><%=b.getPrice()%></td>
                <td><%=b.getPaymentType()%></td>


            </tr>
                <%}
            %>


            </tbody>
            <!--Table body-->
        </table>
        <!--Table-->
    </div>
</main>



</body>
</html>
