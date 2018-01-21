<%--
  Created by IntelliJ IDEA.
  User: sean
  Date: 2017/10/14
  Time: 12:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-theme.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css">
    <title>learningSite</title>
</head>
<body>
<div class="jumbotron">
    <h1>编程大师博客网址</h1>
    <p>这是编程大师的网站汇众希望对自己有帮助</p>
    <p><a class="btn btn-primary btn-lg" href="${pageContext.request.contextPath}/main" role="button">返回主页面</a></p>
</div>
<div class="page-header">
    <h1>Martin Fowler <small>Martin Fowler</small></h1>
</div>
<a href="https://www.martinfowler.com/bliki/AnemicDomainModel.html">https://www.martinfowler.com/bliki/AnemicDomainModel.html</a>
<p  style="word-break:break-all;" >My name is Martin Fowler: I’m an author, speaker, and loud-mouth on the design of enterprise software. This site is dedicated to improving the profession of software development, with a focus on skills and techniques that will last a developer for most of their career. I’m the editor of the site and the most prolific writer. It was originally just my personal site, but over the last few years many colleagues have written excellent material that I’ve been happy to host here. I work for ThoughtWorks, a really rather good software delivery and consulting company. To find your way around this site, go to the intro guide.</p>


<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" color="145,44,238" count="200" zIndex="-1" src="${pageContext.request.contextPath}/dist/js/canvas-nest.js"></script>
</body>
</html>