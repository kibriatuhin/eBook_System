<%@ page import="com.DAO.BookDAOImpl" %>
<%@ page import="com.com.DB.DBConnection" %>
<%@ page import="com.entity.User" %>
<%@ page import="java.util.List" %>
<%@ page import="com.entity.BookDtls" %><%--
  Created by IntelliJ IDEA.
  User: tuhin
  Date: 12/2/21
  Time: 9:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Old Book</title>
    <%@include file="allComponent/allCss.jsp"%>
</head>
<body style="background-color: #F8F9FA;">
<%@include file="allComponent/navBar.jsp"%>
<main>
    <div class="container-fluid">
        <div class="row">
            <div class="table-responsive mt-5">
                <!--Table-->
                <table class="table table-striped">
                    <h2><caption style="caption-side: top; text-align: center; font-weight: 700; color: #4558C6">All o rder old book</caption></h2>
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

                    <!--Table head-->
                    <thead class="table-dark">

                    <tr>
                        <th scope="col">Book Name</th>
                        <th scope="col"> Author</th>
                        <th scope="col">Price </th>
                        <th scope="col">Category </th>
                        <th scope="col">Action</th>


                    </tr>
                    </thead>
                    <!--Table head-->

                    <!--Table body-->
                    <tbody>
                    <%
                        User user = (User) session.getAttribute("userObj");
                        String email = user.getEmail();
                        BookDAOImpl dao = new BookDAOImpl(DBConnection.getConn());
                        List<BookDtls> list =  dao.getBookByOld(email,"old");
                        for (BookDtls b : list){%>
                    <tr>
                        <th scope="row"><%=b.getBookName()%></th>
                        <td><%=b.getAuthor()%></td>
                        <td><%=b.getPrice()%></td>
                        <td><%=b.getBookCategory()%></td>
                        <td>
                            <a href="delete_oldBook?em=<%=email%>&id=<%=b.getBookId()%>" class="btn btn-sm btn-danger"><i class="fas fa-trash"></i> Remove</a>
                        </td>



                    </tr>

                    <% }

                    %>


                    </tbody>
                    <!--Table body-->
                </table>
                <!--Table-->
            </div>
        </div>

    </div>


</main>



</body>
</html>
