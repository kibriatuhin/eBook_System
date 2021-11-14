<%--
  Created by IntelliJ IDEA.
  User: tuhin
  Date: 11/13/21
  Time: 11:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin : ALL Book</title>
    <%@include file="allCss.jsp"%>
</head>
<body style="background-color: #f7f7f7;">
<%@include file="navBar.jsp"%>
<%--------main-------%>
<main>

    <div class="table-responsive mt-5">
        <!--Table-->
        <table class="table table-striped">
            <caption style="caption-side: top; text-align: center; font-weight: 700;color: #4558C6"">All Books</caption>

            <!--Table head-->
            <thead class="table-dark">
            <tr>
                <th scope="col">Id</th>
                <th scope="col">Book Name</th>
                <th scope="col">Author Name</th>
                <th scope="col">Book Categories</th>
                <th scope="col">Status</th>
                <th scope="col">Action</th>

            </tr>
            </thead>
            <!--Table head-->

            <!--Table body-->
            <tbody>
            <tr>
                <th scope="row">1</th>
                <td>Kate</td>
                <td>Moss</td>
                <td>USA / The United Kingdom / China </td>
                <td>New York City / Warsaw / Lodz / </td>
                <td>
                    <a href="#" class="btn btn-sm btn-primary">Edit</a>
                    <a href="#" class="btn btn-sm btn-danger">Delete</a>
                </td>

            </tr>

            </tbody>
            <!--Table body-->
        </table>
        <!--Table-->
    </div>
</main>

<%-----footer-------%>


</body>
</html>
