<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>

<html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/plugins/sidebar/jQuery.mmenu-6.1.5/dist/jquery.mmenu.all.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/sidebar/jQuery.mmenu-6.1.5/dist/jquery.mmenu.all.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-theme.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css">
    <script type="text/javascript">
        $(function() {
            $('nav#menu').mmenu({
                extensions  : [ 'fx-menu-slide', 'shadow-page', 'shadow-panels', 'listview-large', 'pagedim-white' ],
                iconPanels  : true,
                counters    : true,
                keyboardNavigation : {
                    enable  : true,
                    enhance : true
                },
                searchfield : {
                    placeholder : '搜索菜单'
                },
                navbar : {
                    title : '菜单'
                },
                navbars : [
                    {
                        position    : 'top',
                        content     : [ 'searchfield' ]
                    }, {
                        position    : 'top',
                        content     : [ 'breadcrumbs', 'close' ]
                    }, {
                        position    : 'bottom',

                    }
                ]
            }, {
                searchfield : {
                    clear : true
                }
            });
        });
    </script>

    <title>index</title>
</head>

<body style="font-family: 微软雅黑 ;color: black">

<div id="page">
    <div id="head">
        <a href="#menu" style="text-decoration:none;color:black">

            <span class="glyphicon glyphicon-list" aria-hidden="true" style="font-size: 26px"></span>
            &nbsp;&nbsp;
            <small><strong class="text-muted" style="font-family: Algerian">safewind</strong></small>

        </a>
        <h1 align="center">welcome!</h1>

        <hr />

    </div>


    <div class="container">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-9">col-md-9</div>
                <div class="col-md-3">
                    <ul class="nav bs-docs-sidenav">
                        <!-- 1 -->
                        <li class="active">
                            <a href="#js3" class="accordion-toggle" data-toggle="collapse">概览</a>
                            <ul class="nav accordion-body collapse" id="js3" style="text-indent:18px">
                                <li class="" ><a href="#js-individual-compiled">单个还是全部引入</a></li>
                                <li class="" ><a href="#js-data-attrs">data 属性</a></li>
                                <li class="" ><a href="#js-programmatic-api">编程方式的 API</a></li>
                                <li class="" ><a href="#js-noconflict">避免命名空间冲突</a></li>
                                <li class="" ><a href="#js-events">事件</a></li>
                                <li class="" ><a href="#js-disabled">浏览器的JavaScript被禁用的情况</a></li>
                                <li class="" ><a href="#callout-third-party-libs">第三方工具库</a></li>
                            </ul>
                        </li>
                        <!-- 2 -->
                        <li class="active">
                            <a href="#js2" class="accordion-toggle" data-toggle="collapse"> 概览</a>
                            <ul class="nav accordion-body collapse" id="js2" style="text-indent:18px">
                                <li class="" ><a href="#js-individual-compiled">单个还是全部引入</a></li>
                                <li class="" ><a href="#js-data-attrs">data 属性</a></li>
                                <li class="" ><a href="#js-programmatic-api">编程方式的 API</a></li>
                                <li class="" ><a href="#js-noconflict">避免命名空间冲突</a></li>
                                <li class="" ><a href="#js-events">事件</a></li>
                                <li class="" ><a href="#js-disabled">浏览器的JavaScript被禁用的情况</a></li>
                                <li class="" ><a href="#callout-third-party-libs">第三方工具库</a></li>
                            </ul>
                        </li>
                        <!-- 3 -->
                        <li class="active">
                            <a href="#js1" class="accordion-toggle" data-toggle="collapse">概览</a>
                            <ul class="nav accordion-body collapse" id="js1" style="text-indent:18px">
                                <li class="" ><a href="#js-individual-compiled">单个还是全部引入</a></li>
                                <li class="" ><a href="#js-data-attrs">data 属性</a></li>
                                <li class="" ><a href="#js-programmatic-api">编程方式的 API</a></li>
                                <li class="" ><a href="#js-noconflict">避免命名空间冲突</a></li>
                                <li class="" ><a href="#js-events">事件</a></li>
                                <li class="" ><a href="#js-disabled">浏览器的 JavaScript 被禁用的情况</a></li>
                                <li class="" ><a href="#callout-third-party-libs">第三方工具库</a></li>
                            </ul>
                        </li>
                        <!-- 4 -->
                        <li class="active">
                            <a href="#js4" class="accordion-toggle" data-toggle="collapse">概览</a>
                            <ul class="nav accordion-body collapse" id="js4" style="text-indent:18px">
                                <li class="" ><a href="#js-individual-compiled">单个还是全部引入</a></li>
                                <li class="" ><a href="#js-data-attrs">data属性</a></li>
                                <li class="" ><a href="#js-programmatic-api">编程方式的 API</a></li>
                                <li class="" ><a href="#js-noconflict">避免命名空间冲突</a></li>
                                <li class="" ><a href="#js-events">事件</a></li>
                                <li class="" ><a href="#js-disabled">浏览器的javaScript被禁用的情况</a></li>
                                <li class="" ><a href="#callout-third-party-libs">第三方工具库</a></li>
                            </ul>
                        </li>

                        <!-- 5 -->

                    </ul>
                </div>
            </div>
        </div>
    </div>


    <nav id="menu">
        <ul>
            <li><a href="#">首页</a></li>
            <li><span>关于我们</span>
                <ul>
                    <li><a href="#">历史</a></li>
                    <li><span>团队</span>
                        <ul>
                            <li><a href="#">管理</a></li>
                            <li><a href="#">销售</a></li>
                            <li><a href="#">发展</a></li>
                        </ul>
                    </li>
                    <li><a href="#">地址</a></li>
                </ul>
            </li>
            <li>
                <span>项目</span>
                <ul>
                    <li><a href="#">项目1</a></li>
                    <li><a href="#">项目2</a></li>
                    <li><a href="#">项目3</a></li>
                    <li><a href="#">项目4</a></li>
                    <li><a href="#">.......</a></li>

                </ul>
            </li>
            <li><a href="#">帮助</a></li>
            <li><a href="#">联系</a></li>
            <li><span>更多</span>
                <ul>
                    <li><a href="#">更多1</a></li>
                    <li><a href="#">更多2</a></li>
                    <li><a href="#">更多3</a></li>
                    <li><a href="#">.......</a></li>
                </ul>
            </li>

        </ul>
    </nav>

</div>



</body>

</html>
