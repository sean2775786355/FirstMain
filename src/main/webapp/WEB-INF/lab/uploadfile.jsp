<%--
  Created by IntelliJ IDEA.
  User: sean
  Date: 2017/10/22
  Time: 8:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-theme.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css">
    <title>uploadfile</title>
</head>
<body>

<form class="center-block" action="${pageContext.request.contextPath}/lab/uploadfile/1" method="post" enctype="multipart/form-data">
    <label>请选着文件：</label>
    <input type="file" name="file">
    <input type="submit" value="提交">
</form>

<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
