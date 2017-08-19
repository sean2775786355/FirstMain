<%--
  Created by IntelliJ IDEA.
  User: sean
  Date: 2017/8/19
  Time: 19:13
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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bootstrap/docs/assets/css/docs.min.css">
    <title>sidebar</title>
</head>
<body>

    <nav class="bs-docs-sidebar hidden-print hidden-xs hidden-sm affix">
        <ul class="nav bs-docs-sidenav" id="test">
            <br/><br/>
            <!-- 添加了active就能被展开 -->
            <li class="active">
                <a href="#">概要</a>
                <ul class="nav">
                    <li class=""><a href="#">test1</a></li>
                    <li class=""><a href="#">test2</a></li>
                    <li class=""><a href="#">test3</a></li>
                </ul>
            </li>

            <li class="">
                <a href="#">内容</a>
                <ul class="nav">
                    <li class=""><a href="#">内容1</a></li>
                    <li class=""><a href="#">内容2</a></li>
                    <li class=""><a href="#">内容3</a></li>
                    <li class=""><a href="#">内容4</a></li>
                    <li class=""><a href="#">内容5</a></li>
                </ul>
            </li>

            <li class="">
                <a href="#">问题</a>
                <ul class="nav">
                    <li class=""><a href="#">问题1</a></li>
                    <li class=""><a href="#">问题1</a></li>
                    <li class=""><a href="#">问题1</a></li>
                    <li class=""><a href="#">问题1</a></li>
                    <li class=""><a href="#">问题1</a></li>
                </ul>
            </li>

            <li class="">
                <a href="#">项目</a>
                <ul class="nav">
                    <li><a href="#">项目1</a></li>
                    <li class=""><a href="#">项目2</a></li>
                    <li class=""><a href="#">项目3</a></li>
                    <li class=""><a href="#">项目4</a></li>
                    <li class=""><a href="#">项目5</a></li>
                </ul>
            </li>

            <li class="">
                <a href="#">学习</a>
                <ul class="nav">
                    <li><a href="#">spring</a></li>
                    <li><a href="#">shiro</a></li>
                    <li><a href="#">spring mvc</a></li>
                </ul>
            </li>

            <li class="">
                <a href="#">关于</a>
                <ul class="nav">
                    <li><a href="#">test1</a></li>
                    <li><a href="#">test2</a></li>
                    <li><a href="#">test3</a></li>
                </ul>
            </li>


            <a class="back-to-top" href="#">
                返回顶部
            </a>
        </ul>
    </nav>


    <%--script core--%>
    <script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/docs/assets/js/docs.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/docs/assets/js/ie10-viewport-bug-workaround.js"></script>
    <!--  动态的向 点击的li标签加入 class="active"-->
    <script type="text/javascript">
        $('#test li').click(function(event) {
            /* Act on the event */
            $(this).siblings('li').removeClass('active');
            $(this).addClass('active')
        });
    </script>
</body>
</html>
