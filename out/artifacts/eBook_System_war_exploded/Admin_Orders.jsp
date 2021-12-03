<%@ page import="com.DAO.BookOrderDAOImpl" %>
<%@ page import="com.com.DB.DBConnection" %>
<%@ page import="java.util.List" %>
<%@ page import="com.entity.Book_order" %><%--
  Created by IntelliJ IDEA.
  User: tuhin
  Date: 11/13/21
  Time: 11:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Admin : Orders</title>
    <%@include file="allComponent/Admin_allCss.jsp"%>
</head>
<body style="background-color: #f7f7f7;">
<%@include file="allComponent/Admin_navBar.jsp"%>
<c:if test="${empty userObj}">
    <c:redirect url="Login.jsp"/>
</c:if>
<%--------main-------%>
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
                <th scope="col"> Email</th>
                <th scope="col"> Address</th>
                <th scope="col">Phone No </th>
                <th scope="col">Book Name</th>
                <th scope="col">Author</th>
                <th scope="col">Price</th>
                <th scope="col">Payment Type</th>

            </tr>
            </thead>
            <!--Table head-->

            <!--Table body-->
            <tbody>
            <%
                BookOrderDAOImpl dao = new BookOrderDAOImpl(DBConnection.getConn());
               List<Book_order> list =  dao.getAllBook();
               for (Book_order b: list){%>
            <tr>
                <th scope="row"><%=b.getOrderId()%></th>
                <td><%=b.getUser_name()%></td>
                <td><%=b.getEmail()%></td>
                <td><%=b.getFulladd()%></td>
                <td><%=b.getPhone()%></td>
                <td><%=b.getBookName()%></td>
                <td><%=b.getAuthor()%></td>
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

<%-----footer-------%>


</body>
</html>
