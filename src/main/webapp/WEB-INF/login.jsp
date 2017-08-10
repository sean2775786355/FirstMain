<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
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
    <title>login</title>
</head>

<body >
<%--登录界面--%><br/>
<br/><br/><br/><br/><br/><br/><br/><br/>
<div class="container">
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4">

            <form action="" class="form-signin"  method="post" accept-charset="UTF-8" role="form" >
                <h2 class="form-signin-heading" align="center">登录界面</h2>
                <label for="username" class="sr-only">账户</label>
                <input type="text" id="username" name="username" class="form-control input-lg" value="<shiro:principal/>" placeholder="账户" required="" autofocus="">
                <label for="inputPassword" class="sr-only">密码</label>
                <input type="password" id="inputPassword" name="password" class="form-control input-lg" placeholder="密码" required="">
                <div class="checkbox">
                    <label>
                        <input type="checkbox" name="remember-me" value="true">记住我
                    </label>
                </div>
                <button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
            </form>
        </div>
        <div class="col-md-4"></div>
    </div>
</div>

</body>

</html>
