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
    <h1>学习网址汇众</h1>
    <p>这是一个日常学习,所记录的一些好用的网站。希望对自己有帮助。</p>
    <p><a class="btn btn-primary btn-lg" href="${pageContext.request.contextPath}/main" role="button">返回主页面</a></p>
</div>
<div class="page-header">
    <h1>Git学习 <small>Git学习</small></h1>
</div>
<a href="https://try.github.io/">https://try.github.io/</a>
<br/>
<a href="https://learngitbranching.js.org/">https://learngitbranching.js.org/</a>
<p>这git学习网站挺不错的！交互性不错</p>

<div class="page-header">
    <h1>类似于boostrap的前端框架 <small>类似于boostrap的前端框架</small></h1>
</div>
<a href="http://materializecss.com/">http://materializecss.com/</a>
<p>这是google开发的一个前端框架，是使用扁平化设计。效果挺不错的！个人比较喜欢扁平化设计图标，简单。。。。。。</p>

<div class="page-header">
    <h1>echart</h1><small>echart</small>
</div>
<a href="http://echarts.baidu.com">http://echarts.baidu.com</a>
<p>这是百度所在的echart团队开发的一款图标开源插件。</p>
<p>ECharts，一个纯 Javascript 的图表库，可以流畅的运行在 PC 和移动设备上，兼容当前绝大部分浏览器（IE8/9/10/11，Chrome，Firefox，Safari等），底层依赖轻量级的 Canvas 类库 ZRender，提供直观，生动，可交互，可高度个性化定制的数据可视化图表。</p>
<div class="page-header">
    <h1>dataTable</h1><small>dataTable</small>
</div>
<a href="https://www.datatables.net/">https://www.datatables.net/</a>
<p>这是表格分页插件，包含排序，和一些ui个人定制</p>


<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" color="145,44,238" count="200" zIndex="-1" src="${pageContext.request.contextPath}/dist/js/canvas-nest.js"></script>
</body>
</html>
