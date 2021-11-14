<%--
  Created by IntelliJ IDEA.
  User: tuhin
  Date: 11/13/21
  Time: 11:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin : Add Book</title>
    <%@include file="allCss.jsp"%>
</head>
<body style="background-color: #f7f7f7;">
<%@include file="navBar.jsp"%>
<%--------main-------%>
<main>

    <div class=" container pt-5 pb-5">
        <div class="row justify-content-center">
            <div class="registration  col-lg-7 col-md-7  shadow-lg p-5 mb-6 bg-white rounded">
                <h4 class="text-center" style="font-weight: 600; color: #4558C6;">Add Book</h4>
                <form class="formcontrol">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Book Name*</label>
                        <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter name" required>

                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail2">Author Name*</label>
                        <input type="email" class="form-control" id="exampleInputEmail2" aria-describedby="emailHelp" placeholder="Enter email" required>

                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail3">Price*</label>
                        <input type="number" name="price" class="form-control" id="exampleInputEmail3" aria-describedby="emailHelp" placeholder="Enter phone" required>

                    </div>




                    <div class="form-group">
                        <label for="inputState1">Book Categories</label>
                        <select name="btype" id="inputState1" class="form-control">
                            <option selected>--Select--</option>
                            <option value="New">New Book</option>

                        </select>
                    </div>
                    <div class="form-group">
                        <label for="inputState2">Book Status</label>
                        <select name="btype" id="inputState2" class="form-control">
                            <option selected>--Select--</option>
                            <option value="Active">Active</option>
                            <option value="Inactive">Inactive</option>

                        </select>
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlFile1">Upload Photo</label>
                        <input type="file" name="bimg" class="form-control-file" id="exampleFormControlFile1">
                    </div>

                    <div class="row justify-content-lg-center">
                        <button type="submit" class="btn btn-dark " style="font-weight: 600;">Add Book</button>
                    </div>

                </form>
            </div>
        </div>
    </div>
</main>

<%-----footer-------%>
<footer id="foot" >
    <img src="img/wave2.png" alt="" class="footer-imge">
</footer>


</body>
</html>
