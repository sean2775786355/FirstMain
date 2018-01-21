<%--
  Created by IntelliJ IDEA.
  User: sean
  Date: 2017/10/25
  Time: 22:17
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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Semantic/dist/semantic.css"/>
    <title>el practice</title>
</head>
<body>
<h1 align="center">el 表达式练习</h1>

<div class="example">
    <h4 class="ui header">JSP el</h4><a class="anchor" id=""></a>
    <div class="ui ignored positive message">
        JSP2.0最重要的特性之一就是el表达式，jsp用户可以更加容易访问应用程序数据。
    </div>
    <button  class="fluid ui primary basic button">el 隐式对象</button>
    <table class="ui celled table">
        <thead>
        <tr>
            <th rowspan="2"><div class="ui ribbon label">对象</div></th>
            <th>描述</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>
                pageContext
            </td>
            <td>这是当前jsp的javax.servlet.jsp.PageContext </td>
        </tr>
        <tr>
            <td>initParam</td>
            <td>这是一个包含所有环境初始化参数并用参数名key的Map</td>
        </tr>
        <tr>
            <td>param</td>
            <td>这是一个包含所有请求参数名作为key的Map。每个key的值就是指定名称的第一个参数。因此，如果两个请求参数同名，则只有第一个能够利用param获取值。要想访问同名参数的所有参数值，可用params代替</td>
        </tr>
        <tr>
            <td>paramValues</td>
            <td>这是一个包含所有请求参数名作为key的Map。每个key的值就是一个字符串数组，其中包含了指定参数名称的所有参数值。就是该参数只有一个值，它也任然会返回一个带有一个元素的数组</td>
        </tr>
        <tr>
            <td>header</td>
            <td>这是一个包含所有请求标题名作为key的Map。每个key的值就是指定标题名称的第一个标题。换句话说，如果一个标题的值不只一个，则只返回第一个值。想要获得多个值得标题，得用headerValues对象代替</td>
        </tr>
        <tr>
            <td>headerValues</td>
            <td>这是一个包含所有请求标题名作为key的Map。每个key的值就是一个字符串数组,其中包含了指定标题名称的所有参数值。就是该参数只有一个值，它也任然会返回一个带有一个元素的数组</td>
        </tr>
        <tr>
            <td>cookie</td>
            <td>这是一个包含了当前请求对象的所有Cookie对象的Map。Cookie名称就是key名称,并且每一个key都映射到一个Cookie对象</td>
        </tr>
        <tr>
            <td>applicationScope</td>
            <td>这是一个包含了ServeltContext对象的所有属性的map,并且属性名称用key。</td>
        </tr>
        <tr>
            <td>sessionScope</td>
            <td>这是一个包含了HttpSession对象的所有属性的map,并且属性名称用key。</td>
        </tr>
        <tr>
            <td>requestScope</td>
            <td>这是一个包含了HttpSevletRequest对象的所有属性的map,并且属性名称用key。</td>
        </tr>
        <tr>
            <td>pageScope</td>
            <td>这是一个包含了全页面范围内的所有属性的map,并且属性名称用key。</td>
        </tr>
        </tbody>
    </table>

        <button  class="fluid ui primary basic button">pageContext</button>
        <table class="ui celled table">
        <thead>
        <tr>
            <th rowspan="2"><div class="ui ribbon label">实验方法</div></th>
            <th>实验结果</th>
            <th>描述</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>"pageContext.request.method:"</td>
            <td>${pageContext.request.method}</td>
            <td>请求的方法</td>
        </tr>
        <tr>
            <td>"pageContext.request.characterEncoding:"</td>
            <td>${pageContext.request.characterEncoding}</td>
             <td>请求的字符编码</td>
        </tr>
        <tr>
            <td>"pageContext.request.contentType:"</td>
            <td>${pageContext.request.contentType}</td>
            <td>请求的MIME类型</td>
        </tr>
        <tr>
            <td>"pageContext.request.remoteAddr:"</td>
            <td>${pageContext.request.remoteAddr}</td>
            <td>客户端IP地址</td>
        </tr>
        <tr>
            <td>pageContext.request.remoteHost:</td>
            <td>${pageContext.request.remoteHost}</td>
            <td>客户端IP地址或者主机名</td>
        </tr>
        <tr>
            <td>pageContext.request.remotePort:</td>
            <td>${pageContext.request.remotePort}</td>
            <td>服务器端口</td>
        </tr>
        <tr>
            <td>pageContext.request.scheme:</td>
            <td>${pageContext.request.scheme}</td>
            <td>请求的发送方案HTTP HTTPS</td>
        </tr>
        <tr>
            <td>pageContext.request.serverPort:</td>
            <td>${pageContext.request.serverPort}</td>
            <td>服务器端口</td>
        </tr>
        <tr>
            <td>pageContext.request.secure:</td>
            <td>${pageContext.request.secure}</td>
            <td>请求是否通过安全连接</td>
        </tr>
        <tr>
            <td>pageContext.request.locale:</td>
            <td>${pageContext.request.locale}</td>
            <td>浏览器首先local</td>
        </tr>
        </tbody>
        </table>

        <button  class="fluid ui primary basic button">header</button>
        <table class="ui celled table">
        <thead>
        <tr>
            <th rowspan="2"><div class="ui ribbon label">实验方法</div></th>
            <th>实验结果</th>
            <th>描述</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>header["accept-language"]:</td>
            <td>${header["accept-language"]}</td>
            <td>获取表头可以接受的语言</td>
        </tr>
        <tr>
            <td>header.connection:</td>
            <td>${header.connection}</td>
            <td>获取表头的connection</td>
        </tr>
        </tbody>
        </table>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/Semantic/dist/semantic.js"></script>
</body>
</html>
