<%--
  Created by IntelliJ IDEA.
  User: sean
  Date: 2017/8/19
  Time: 16:56
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
    <title>head</title>
</head>
<body>
<%--主页面头部--%>
<header class="navbar navbar-static-top bs-docs-nav" id="top">
    <div class="container">
        <div class="navbar-header">
            <button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target="#bs-navbar" aria-controls="bs-navbar" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>

            </button>
            <a href=# class="navbar-brand" style="font-size: 30px;font-family: courier;">safewind</a>
        </div>
        <nav id="bs-navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav" style="font-size: 16px;font-family: New Roman;">
                <li class="active">
                    <a href="#">首页</a>
                </li>
                <li>
                    <a href="#">个人中心</a>
                </li>
                <li>
                    <a href="#">帮助</a>
                </li>
                <li>
                    <a href="#">关于</a>
                </li>
                <li>
                    <a href="#">联系</a>
                </li>
                <li><a href="#">更多</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <!-- <li><a href="http://mb.bootcss.com" onclick="_hmt.push(['_trackEvent', 'docv3-navbar', 'click', 'themes'])" target="_blank">主题/模板</a></li> -->
                <%--<li><a href="#" style="font-family: courier;font-size: 15px;">safewind</a></li>--%>

                <li class="dropdown user user-menu">
                    <a class="dropdown-toggle" data-toggle="dropdown">
                        <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <!-- Menu Footer-->
                        <li>
                            <a href="#">
                            <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                            &nbsp; 个人中心
                            </a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/user/verifyUser">
                                <span class="glyphicon glyphicon-edit" aria-hidden="true"></span>
                                &nbsp; 修改密码
                            </a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/logout">
                                <span class="glyphicon glyphicon-log-out" aria-hidden="true"></span>
                                &nbsp; 安全退出
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="">
                    <a href="${pageContext.request.contextPath}/logout"><span class="glyphicon glyphicon-off" aria-hidden="true"></span></a>
                </li>
            </ul>
        </nav>
    </div>

</header>

</body>
</html>
