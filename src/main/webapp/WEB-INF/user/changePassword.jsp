<%--
  Created by IntelliJ IDEA.
  User: sean
  Date: 2017/8/20
  Time: 10:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-theme.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css">
    <%--用户新密码--%>
    <title>changePassword</title>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4">

            <form action="${pageContext.request.contextPath}/user/DealchangePassword" class="form-signin"  method="post" accept-charset="UTF-8" role="form" >
                <h2 class="form-signin-heading" align="center">修改密码</h2>
                <label for="username" class="sr-only">账户名</label>
                <input type="text" id="username" name="username" class="form-control input-lg " value="<shiro:principal/>" readonly="true">
                <label for="inputPassword" class="sr-only">新密码</label>
                <input type="password" id="inputPassword" name="newpassword" class="form-control input-lg" placeholder="新密码" required="">
                <button class="btn btn-lg btn-primary btn-block" onclick="check()">下一步</button>
            </form>
        </div>
        <div class="col-md-4"></div>
    </div>
</div>


</body>
</html>
