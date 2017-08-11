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
        <h1 align="center" style="font-family: Algerian">welcome!</h1>

        <hr />

    </div>


    <div class="container">
        <div class="container-fluid">
            <div class="row">
                <%--左侧栏目 start--%>
                <div class="col-md-9">

                    <%--滚动图片start--%>
                        <div id="myCarousel" class="carousel slide">
                            <ol class="carousel-indicators">
                                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                <li data-target="#myCarousel" data-slide-to="1"></li>
                                <li data-target="#myCarousel" data-slide-to="2"></li>
                            </ol>
                            <!-- Carousel items -->
                            <div class="carousel-inner">
                                <div class="active item">
                                    <img src="${pageContext.request.contextPath}/dist/img/carousel/lion.jpg"  width="100%" alt="Forth slide"/>
                                </div>
                                <div class="item">
                                    <img src="${pageContext.request.contextPath}/dist/img/carousel/sea.jpg" width="100%" alt="First slide" />
                                </div>
                                <div class="item">
                                    <img src="${pageContext.request.contextPath}/dist/img/carousel/moun.jpg" width="100%" alt="Second slide"  />
                                </div>
                            </div>
                            <!-- Carousel nav -->
                            <a class="carousel-control left" href="#myCarousel" data-slide="prev"></a>
                            <a class="carousel-control right" href="#myCarousel" data-slide="next"></a>
                        </div>

                    <%--滚动图片end--%>


                        <%--图片浏览start--%>
                        <hr class="featurette-divider">
                        <div class="row featurette">
                            <div class="col-md-7">
                                <h2 class="featurette-heading">海大夜景图 <small>希望你喜欢？</small></h2>
                                <p class="lead">这图是2017年夏天暑假期间，海棠台风来大连之前的时，在海大体育馆拍的景象！当时已经接近黑夜了！</p>
                            </div>
                            <div class="col-md-5">
                                <img class="featurette-image img-responsive center-block" src="${pageContext.request.contextPath}/dist/img/lifephoto/P70802-190144.jpg"alt="Generic placeholder image">
                            </div>
                        </div>
                        <!-- 水平线 -->
                        <hr class="featurette-divider">

                        <div class="row featurette">
                            <div class="col-md-7 col-md-push-5">
                                <h2 class="featurette-heading">海大晨图<small>希望你喜欢？</small></h2>
                                <p class="lead">此图是大连下暴雨雨过后，去食堂吃早饭时，所拍 ！雨后天晴！空气清晰！</p>
                            </div>
                            <div class="col-md-5 col-md-pull-7">
                                <img class="featurette-image img-responsive center-block" src="${pageContext.request.contextPath}/dist/img/lifephoto/P70804-080834.jpg" alt="Generic placeholder image">
                            </div>
                        </div>
                        <!-- 水平线 -->
                        <hr class="featurette-divider">

                        <div class="row featurette">
                            <div class="col-md-7">
                                <h2 class="featurette-heading"> 海大鸟览图 <small>希望你喜欢？</small></h2>
                                <p class="lead">拍照技术不是很好，希望你不要介意！此图是在e5七楼所拍。当时正在阮伟寝室！大概是下午5点多</p>
                            </div>
                            <div class="col-md-5">
                                <img class="featurette-image img-responsive center-block" src="${pageContext.request.contextPath}/dist/img/lifephoto/P70805-121300.jpg" alt="Generic placeholder image">
                            </div>
                        </div>


                        <%--图片浏览end--%>

                    <%--footer--%>
                        <address>
                            Copyright
                            © 2017
                            <strong>safewind</strong>
                            <strong>大连海事大学</strong>
                            <small>seanChrist</small>
                        </address>

                        <address>
                            <abbr title="Phone">Phone:</abbr> (000)12345689
                            <a href="mailto:#">mail@example.com</a>
                        </address>
                    <%--footer--%>




                </div>
                <%--左侧栏目 end--%>

                <!--侧边提示导航栏 start-->
                <div class="col-md-3">
                    <ul class="nav bs-docs-sidenav">
                        <!-- 1 -->
                        <li class="active">
                            <a href="#total1" class="accordion-toggle" data-toggle="collapse">概览</a>
                            <ul class="nav accordion-body collapse" id="total1" style="text-indent:18px">
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
                            <a href="#total2" class="accordion-toggle" data-toggle="collapse"> 概览</a>
                            <ul class="nav accordion-body collapse" id="total2" style="text-indent:18px">
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
                            <a href="#total3" class="accordion-toggle" data-toggle="collapse">概览</a>
                            <ul class="nav accordion-body collapse" id="total3" style="text-indent:18px">
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
                            <a href="#total4" class="accordion-toggle" data-toggle="collapse">概览</a>
                            <ul class="nav accordion-body collapse" id="total4" style="text-indent:18px">
                                <li class="" ><a href="#js-individual-compiled">单个还是全部引入</a></li>
                                <li class="" ><a href="#js-data-attrs">data属性</a></li>
                                <li class="" ><a href="#js-programmatic-api">编程方式的 API</a></li>
                                <li class="" ><a href="#js-noconflict">避免命名空间冲突</a></li>
                                <li class="" ><a href="#js-events">事件</a></li>
                                <li class="" ><a href="#js-disabled">浏览器的javaScript被禁用的情况</a></li>
                                <li class="" ><a href="#callout-third-party-libs">第三方工具库</a></li>
                            </ul>
                        </li>

                    </ul>
                </div>

                <!--侧边提示导航栏end-->
            </div>
        </div>
    </div>

   <!--主页面导航栏start-->
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

    <!--主页面导航栏end-->

</div>



</body>

</html>
