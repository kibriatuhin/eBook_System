<%--
  Created by IntelliJ IDEA.
  User: tuhin
  Date: 12/1/21
  Time: 7:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Address</title>
    <%@include file="allComponent/allCss.jsp"%>

</head>
<body style="background-color: #F8F9FA;">
<%@include file="allComponent/navBar.jsp"%>

<main>

    <div class=" container pt-5 pb-5">
        <div class="row justify-content-center">
            <div class="registration  col-lg-7 col-md-7  shadow-lg p-5 mb-6 bg-white rounded">
                <h4 class="text-center" style="font-weight: 600; color: #4558C6;">Edit Address</h4>
                <form class="formcontrol">
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputEmail">Address : </label>
                            <input type="text" class="form-control" id="inputEmail" readonly="readonly">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputPassword1">Landmark :</label>
                            <input type="email" class="form-control" id="inputPassword1"  readonly="readonly">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-4">
                            <label for="inputEmail3">City: </label>
                            <input type="text" class="form-control" id="inputEmail3" required >
                        </div>
                        <div class="form-group col-md-4">
                            <label for="inputPassword4">State :</label>
                            <input type="text" class="form-control" id="inputPassword4" required >
                        </div>
                        <div class="form-group col-md-4">
                            <label for="inputPassword5">Zip :</label>
                            <input type="number" class="form-control" id="inputPassword5"  required>
                        </div>
                    </div>


                    <div class="row justify-content-center">
                        <button type="submit" class="btn btn-warning text-white " style="font-weight: 600;">Update</button>
                    </div>

                </form>
            </div>
        </div>
    </div>
</main>

<%@include file="allComponent/footer.jsp"%>

</body>
</html>
