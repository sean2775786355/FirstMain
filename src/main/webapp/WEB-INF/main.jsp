<%--
  Created by IntelliJ IDEA.
  User: sean
  Date: 2017/8/14
  Time: 16:13
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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bootstrap/docs/assets/css/docs.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/wheel-menu-master/wheelmenu.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/jquery-ui-1.12.1.custom/jquery-ui.css">
    <title>main</title>
</head>
<body>
<!-- nav head start-->
<%--header--%>
<jsp:include page="module/head.jsp"/>

<div class="container" style="top: auto;">
    <div class="row">
        <!-- left content -->
        <div class="col-md-9 " style="text-align: center;" >
            <div class="bs-docs-section" align="left">
                <h1 class="text-muted">canvas-nest.js</h1>

                <p> A nest backgroud of website draw on canvas use javascript, do not depend on jQuery. Less then 2kb.</p>
                <small>cdn加速地址</small><br>
                <a class="text-primary" href="https://cdn.bootcss.com/canvas-nest.js/1.0.1/canvas-nest.js">https://cdn.bootcss.com/canvas-nest.js/1.0.1/canvas-nest.js</a>
                <br>
                <a class="text-primary" href=" https://cdn.bootcss.com/canvas-nest.js/1.0.1/canvas-nest.min.js"> https://cdn.bootcss.com/canvas-nest.js/1.0.1/canvas-nest.min.js</a>
                <br>
                <h1 class="text-muted">github地址</h1>
                <a class="text-primary" href="https://github.com/hustcc/canvas-nest.js/">https://github.com/hustcc/canvas-nest.js/</a>
                <p>该网页就是使用该插件做的这个特效背景。不需要引入其他库，也能运行</p>
                <ul>
                    <li>不依赖任何框架或者内库，比如不依赖 jQuery，使用原生的 javascript。</li>
                    <li>非常小，只有1.6 kb，如果开启 gzip，可以更小。</li>
                    <li> 非常容易实现，配置简单，即使你不是web开发者，也能简单搞定</li>
                </ul>
                <h3 class="text-muted">配置和配置项</h3>
                <ul>
                    <li><strong>color:</strong> 线条颜色, 默认: '0,0,0' ；三个数字分别为(R,G,B)，注意用,分割</li>
                    <li><strong>opacity:</strong> 线条透明度（0~1）, 默认: 0.5</li>
                    <li><strong>count:</strong> 线条的总数量, 默认: 150</li>
                    <li><strong>zIndex:</strong> 背景的z-index属性，css属性用于控制所在层的位置, 默认: -1</li>
                </ul>


                <h1 class="text-muted">mybatis</h1>
                    <h3 class="text-info">mybatis 学习笔记</h3>
                    <h5 class="text-danger">MyBatis 简介</h5>
                    <p>
                        MyBatis 是一款优秀的持久层框架，它支持定制化 SQL、存储过程以及高级映射。
                        MyBatis 避免了几乎所有的 JDBC 代码和手动设置参数以及获取结果集。
                        MyBatis 可以使用简单的 XML 或注解来配置和映射原生信息，
                        将接口和 Java 的 POJOs(Plain Old Java Objects,普通的 Java对象)映射成数据库中的记录。
                    </p>
                    <h5 class="text-danger">学习mybatis的一些常用点</h5>
                    <ol>
                        <li>使用delete insert update 操作数据库时,在Mapper接口(***Dao.java)定义返回值为 <strong>int</strong>即可返回影响条数</li>
                        <li>不需要在  ***Mapper.xml中写入 resultType 忽略resultType即可。当然在MyBatis 配置文件会有相应的设置！！！</li>
                    </ol>

                    <h5 class="text-danger">动态sql常用标签</h5>
                        <ul>
                            <li>if</li>
                            <li>choose (when, otherwise)</li>
                            <li>trim (where, set)</li>
                            <li>foreach</li>
                        </ul>
                <h1 class="text-muted">java</h1>
                <h3 class="text-info">java 学习笔记</h3>
                <h5 class="text-danger">使用java的一些问题</h5>
                <ul>
                    <li>在使用对象存储数据时，如果对象的属性为int类型，且没有传入数据到对象int类型的属性,则默认是0</li>
                    <li>当类型时String类型时,且对象未插入数据，默认是null(个人理解是: int long short char 为基本数据类型而String是对象)</li>
                </ul>
            </div>
            <p style="word-break:break-all; word-wrap:break-word">






            </p>

            <p>请点击</p><a href="http://v3.bootcss.com" class="text-success"><h1>Bootstrap中文网</h1></a>
            <p>一个比较好的前端框架。</p>
        </div>
        <!-- right sidebar start -->
        <div class="col-md-3" >
            <jsp:include page="module/sidebar.jsp"/>
        </div>
    </div>

</div>

        <!-- right sidebar end -->
        <%--<p style="position: fixed; top: 80px; right: 40px">a</p>--%>
    </div>
    <%--&lt;%&ndash;圆形菜单栏&ndash;%&gt;--%>
    <%--<div style="position: relative; top: -500px; right: -1150px" id="circleMenu">--%>
        <%--<a href="#wheel" class="wheel-button all">--%>
            <%--<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>--%>
        <%--</a>--%>
    <%--</div>--%>
    <%--&lt;%&ndash;圆形菜单栏内容&ndash;%&gt;--%>
    <%--<ul id="wheel" data-angle="all" class="wheel">--%>
        <%--<li class="item"><a href="#">A</a></li>--%>
        <%--<li class="item"><a href="#">B</a></li>--%>
        <%--<li class="item"><a href="#">C</a></li>--%>
        <%--<li class="item"><a href="#">D</a></li>--%>
        <%--<li class="item"><a href="#">E</a></li>--%>
        <%--<li class="item"><a href="#">G</a></li>--%>
        <%--<li class="item"><a href="#">H</a></li>--%>
        <%--<li class="item"><a href="#">I</a></li>--%>
    <%--</ul>--%>
</div>


    <%--footer--%>
    <jsp:include flush="true" page="module/foot.jsp"/>
    <%--script core--%>
    <script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/docs/assets/js/docs.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/docs/assets/js/ie10-viewport-bug-workaround.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/plugins/wheel-menu-master/jquery.wheelmenu.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/plugins/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
    <script type="text/javascript">
        // 圆形菜单js
        $(".wheel-button").wheelmenu({
            trigger: "click",
            animation: "fly",
            animationSpeed: "medium"
        });
        $('#circleMenu').draggable();


    </script>
<script type="text/javascript" color="145,44,238" count="200" zIndex="-1" src="${pageContext.request.contextPath}/dist/js/canvas-nest.js"></script>
</body>
</html>
