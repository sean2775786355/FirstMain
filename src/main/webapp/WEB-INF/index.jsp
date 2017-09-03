<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>

<html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-theme.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bootstrap/docs/assets/css/docs.min.css">
    <title>index</title>
</head>

<body onload="systemTime()">


        <div id="myCarousel" class="carousel slide">
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>
            <!-- Carousel items -->
            <div class="carousel-inner">
                <div class="active item">
                    <img src="${pageContext.request.contextPath}/dist/img/carousel/city.jpg"  width="100%" alt="Forth slide" height="100%" />
                    <div class="container">
                        <div class="carousel-caption">
                            <h1 style="font-size: 10em;font-style:italic;">welcome!</h1>
                            <p id="time" style="font-size: 7em"></p>
                            <a class="btn btn-lg btn-default" href="${pageContext.request.contextPath}/main">进入首页</a>

                        </div>
                    </div>
                </div>
                <div class="item">
                    <img src="${pageContext.request.contextPath}/dist/img/carousel/alien.jpg" width="100%" alt="First slide" height="100%" />
                    <div class="container">
                        <div class="carousel-caption">
                            <h1 style="font-size: 180px;font-style: italic;">welcome!</h1>

                            <a class="btn btn-lg btn-default" href="${pageContext.request.contextPath}/main">进入首页</a>

                        </div>
                    </div>
                </div>
                <div class="item">
                    <img src="${pageContext.request.contextPath}/dist/img/carousel/afer.jpg" width="100%" alt="Second slide" height="100%"  />
                    <div class="container">
                        <div class="carousel-caption">
                            <h1 style="font-size: 180px;font-style: italic;">welcome!</h1>
                            <a class="btn btn-lg btn-default" href="${pageContext.request.contextPath}/main">进入首页</a>

                        </div>
                    </div>
                </div>
            </div>
            <a class="left carousel-control" href="#myCarousel" data-slide="prev"></a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next"></a>
        </div>



        <div>
            <img src="${pageContext.request.contextPath}/dist/img/pPhoto/p4.jpg" width="100%">
            <img src="${pageContext.request.contextPath}/dist/img/pPhoto/p7.jpg" width="100%">
            <img src="${pageContext.request.contextPath}/dist/img/pPhoto/p3.jpg" width="100%">

        </div>


   <%--script core--%>
   <script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/jquery-3.2.1.min.js"></script>
   <script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
        <script type="text/javascript">  
        <%--    获取系统时间，将时间以指定格式显示到页面。  --%>
            function systemTime()  
            {  
        <%--        获取系统时间。  --%>
                var dateTime=new Date();  
                var hh=dateTime.getHours();  
                var mm=dateTime.getMinutes();  
                var ss=dateTime.getSeconds();  
                  
        <%--        分秒时间是一位数字，在数字前补0。  --%>
                mm = extra(mm);  
                ss = extra(ss);  
                  
        <%--        将时间显示到ID为time的位置，时间格式形如：19:18:02  --%>
                document.getElementById("time").innerHTML=hh+":"+mm+":"+ss;  
                  
        <%--        每隔1000ms执行方法systemTime()。  --%>
                setTimeout("systemTime()",1000);  
            }  
              
        <%--    补位函数。  --%>
            function extra(x)  
            {  
                //如果传入数字小于10，数字前补一位0。  
                if(x < 10)  
                {  
                    return "0" + x;  
                }  
                else  
                {  
                    return x;  
                }  
            }  
        </script>



        </body>


</html>
