<%@ page import="com.DAO.BookDAOImpl" %>
<%@ page import="com.com.DB.DBConnection" %>
<%@ page import="java.util.List" %>
<%@ page import="com.entity.BookDtls" %><%--
  Created by IntelliJ IDEA.
  User: tuhin
  Date: 11/13/21
  Time: 11:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Admin : Edit Book</title>
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

            <%-----start JSTL------%>
            <c:if test="${not empty succMsg}">
                <h5 class="text-center text-success" style="font-weight: 500">
                        ${succMsg}
                </h5>
                <c:remove var="succMsg" scope="session"/>

            </c:if>
            <%--ne null--%>
            <c:if test="${not empty failedMsg }">
                <h5 class="text-center text-danger" style="font-weight: 500">
                        ${failedMsg}
                </h5>
                <c:remove var="failedMsg" scope="session"/>
            </c:if>


            <%-----end JSTL------%>

            <caption style="caption-side: top; text-align: center; font-weight: 700;color: #4558C6">All Books</caption>

            <!--Table head-->
            <thead class="table-dark">
            <tr>
                <th scope="col">Id</th>
                <th scope="col">Image</th>
                <th scope="col">Book Name</th>
                <th scope="col">Author</th>
                <th scope="col">Price</th>
                <th scope="col">Categories</th>
                <th scope="col">Status</th>
                <th scope="col">Action</th>

            </tr>
            </thead>
            <!--Table head-->

            <!--Table body-->
            <tbody>
            <%
                BookDAOImpl bookDAO = new BookDAOImpl(DBConnection.getConn());
                List<BookDtls> list =  bookDAO.getALlBooks();
                for (BookDtls b : list)
                {
            %>
            <tr>
                <th scope="row"><%= b.getBookId() %></th>
                <td> <img src="books/<%= b.getPhotoName()%>" style="width: 50px;height: 50px;"> </td>
                <td><%= b.getBookName()%></td>
                <td><%= b.getAuthor()%> </td>
                <td><%=b.getPrice() %></td>
                <td><%= b.getBookCategory() %></td>
                <td><%=b.getStatus() %></td>

                <td>
                    <a href="Admin_EditBook.jsp?id=<%=b.getBookId() %>" class="btn btn-sm btn-primary"><i class="fas fa-edit"></i> Edit</a>
                    <a href="delete?id=<%=b.getBookId()%>" class="btn btn-sm btn-danger"><i class="fas fa-trash"></i> Delete</a>
                </td>

            </tr>

                <%
                }
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
