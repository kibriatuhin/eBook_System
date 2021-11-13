<%--
  Created by IntelliJ IDEA.
  User: tuhin
  Date: 11/13/21
  Time: 1:01 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>User: Home</title>
</head>
<body>
<h1>User Home</h1>
<c:if test="${not empty userObj}">
    <h1>Name : ${userObj.name}</h1>
    <h1>Email : ${userObj.email}</h1>


</c:if>

</body>
</html>
