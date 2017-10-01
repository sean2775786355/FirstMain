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
    <title>head</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-theme.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css">

    <style type="text/css">
        li.dropdown > a:hover{
            border-bottom: solid 1px #866ab3;
        }
        #button1 {
            border: solid 1px #866ab3 ;
        }
    </style>
</head>
<body>
<%--主页面头部--%>
<header class="navbar navbar-static-top bs-docs-nav" id="top">
    <div class="container" id="head">
        <div class="navbar-header">
            <button id="button1" class="navbar-toggle collapsed" type="button"  data-parent="#head" data-toggle="collapse" data-target="#bs-navbar" aria-controls="bs-navbar" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href=# class="navbar-brand" style="font-size: 30px;font-family: courier;">safewind</a>
        </div>
        <nav id="bs-navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav" style="font-size: 16px;font-family: New Roman;">
                <li>
                    <a href="#">首页</a>

                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">个人中心</a>
                    <ul class="dropdown-menu">
                        <li><a href="#">我的简介</a></li>
                        <li><a href="#">我的家庭</a></li>
                        <li><a href="#">我的成长</a></li>
                        <li><a href="#">其他</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">帮助</a>
                    <ul class="dropdown-menu">
                        <li><a href="#">目前这还不知道写什么</a></li>

                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">关于</a>
                   <ul class="dropdown-menu">
                        <li><a href="#">团队</a></li>
                        <li><a href="#">历史</a></li>
                        <li><a href="#">成绩</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">联系</a>
                    <ul class="dropdown-menu">
                        <li><a href="#">电话</a></li>
                        <li><a href="#">微信</a></li>
                        <li><a href="#">qq</a></li>
                        <li><a href="#">邮件</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" >更多</a>
                    <ul class="dropdown-menu">
                        <li><a href="#">个人比较懒还没写</a></li>

                    </ul>
                </li>
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
<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
    $('li.dropdown').mouseover(function(){
        $(this).addClass('open')
    }).mouseout(function() {        $(this).removeClass('open')});
    //bootstrap响应式导航栏点击collapse的按钮没有反应，不会向下展开 || 需要添加下面语句
//    $('.collapse').collapse();
</script>
</body>
</html>
