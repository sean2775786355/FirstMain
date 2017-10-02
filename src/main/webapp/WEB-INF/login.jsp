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
    <script type="text/javascript">
        function reloadValidateCode(){
            $("#validateCodeImg").attr("src","${pageContext.request.contextPath}/validateCode/imageProduce?data=" + new Date() + Math.floor(Math.random()*24));
        }
    </script>
</head>

<body >
<%--登录界面--%><br/>
<br/><br/><br/><br/><br/><br/><br/><br/>
<div class="container">
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4">

            <form action=" " class="form-signin"  method="post" accept-charset="UTF-8" role="form" >
                <h2 class="form-signin-heading" align="center">sign in</h2>
                <label for="username" class="sr-only">account</label>
                <input type="text" id="username" name="username" class="form-control input-lg" value="<shiro:principal/>" placeholder="account" required="" autofocus="">
                <label for="inputPassword" class="sr-only">password</label>
                <input type="password" id="inputPassword" name="password" class="form-control input-lg" placeholder="password" required="">
                <div class="checkbox">
                    <label>
                        <input type="checkbox" name="remember-me" value="true">remember me
                    </label>
                    <input type="text" name="randomcode" size="4" >
                    <img id="validateCodeImg" src="${pageContext.request.contextPath}/validateCode/imageProduce" /><a onclick="javascript:reloadValidateCode();">看不清？</a>
                </div>
                <button class="btn btn-lg btn-primary btn-block" type="submit">login</button>
            </form>
        </div>
        <div class="col-md-4"></div>
    </div>
</div>

</body>
<script type="text/javascript" color="145,44,238" count="200" zIndex="-1" src="${pageContext.request.contextPath}/dist/js/canvas-nest.js"></script>
</html>
