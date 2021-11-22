<%@ page import="com.DAO.BookDAO" %>
<%@ page import="com.DAO.BookDAOImpl" %>
<%@ page import="com.com.DB.DBConnection" %>
<%@ page import="com.entity.BookDtls" %><%--
  Created by IntelliJ IDEA.
  User: tuhin
  Date: 11/20/21
  Time: 7:20 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Admin : Add Book</title>
    <%@include file="allComponent/Admin_allCss.jsp"%>
</head>
<body style="background-color: #f7f7f7;">
<%@include file="allComponent/Admin_navBar.jsp"%>
<c:if test="${empty userObj}">
    <c:redirect url="Login.jsp"/>
</c:if>
<%--------main-------%>
<main>

    <div class=" container pt-5 pb-5">
        <div class="row justify-content-center">
            <div class="registration  col-lg-7 col-md-7  shadow-lg p-5 mb-6 bg-white rounded">
                <h4 class="text-center" style="font-weight: 600; color: #4558C6;">Edit Book</h4>



                <%
                    int id = Integer.parseInt(request.getParameter("id"));
                    BookDAOImpl dao = new BookDAOImpl(DBConnection.getConn());
                    BookDtls b = dao.getBookById(id);

                %>

                <form class="formcontrol"  action="EditBooksServlet" method="post" >
                    <input type="hidden" name="id" value="<%=b.getBookId()%>">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Book Name*</label>
                        <input type="text" name="bname" value="<%=b.getBookName()%>" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter name" required>

                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail2">Author Name*</label>
                        <input type="text" name="author" value="<%=b.getAuthor()%>" class="form-control" id="exampleInputEmail2" aria-describedby="emailHelp" placeholder="Enter author name " required>

                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail3">Price*</label>
                        <input type="number" name="price" value="<%=b.getPrice()%>" class="form-control" id="exampleInputEmail3" aria-describedby="emailHelp" placeholder="Enter price" required>

                    </div>


                    <div class="form-group">
                        <label for="inputState2">Book Status</label>
                        <select name="bstatus" id="inputState2" class="form-control">

                            <%
                                if ("Active".equals(b.getStatus())){ %>
                                    <option value="Active">Active</option>
                                    <option value="Inactive">Inactive</option>
                                <%
                                }else { %>
                            <option value="Inactive">Inactive</option>
                            <option value="Active">Active</option>
                               <% }
                            %>



                        </select>
                    </div>


                    <div class="row justify-content-lg-center justify-content-center">
                        <button type="submit" class="btn btn-dark " style="font-weight: 600;">Update</button>
                    </div>

                </form>
            </div>
        </div>
    </div>
</main>

<%-----footer-------%>
<footer id="foot" >
    <img src="admin/img/wave2.png" alt="" class="footer-imge">
</footer>


</body>
</html>
