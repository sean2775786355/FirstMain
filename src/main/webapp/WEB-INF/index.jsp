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
    <script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-theme.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css">
    <title>index</title>
</head>

<body>
    <%--header--%>
    <%--nav--%>
    <ul class="nav nav-tabs nav-justified">
        <li role="presentation" class="active"><a href="#">主页</a></li>
        <li role="presentation"><a href="#">个人中心</a></li>
        <li role="presentation"><a href="#">关于</a></li>
        <li role="presentation"><a href="#">帮助</a></li>
        <li role="presentation"><a href="#">联系</a></li>
        <li role="presentation"><a href="#">设置</a></li>
    </ul>

    <!-- Carousel -->

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


<%--main body--%>
    <div class="container">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4">
                    <img class="img-circle" src="${pageContext.request.contextPath}/dist/img/people/javaFather.jpg" alt="Generic placeholder image" width="160" height="140">
                    <h2>James Gosling</h2>
                    <p>詹姆斯·高斯林是一名软件专家，1955年5月19日出生于加拿大，Java编程语言的共同创始人之一，一般公认他为“Java之父”。在他12岁的时候，他已能设计电子游戏机，帮忙邻居修理收割机。大学时期在天文系担任程式开发工读生，1977年获得了加拿大卡尔加里大学计算机科学学士学位，1983年获得了美国卡内基梅隆大学计算机科学博士学位。</p>
                    <p><a class="btn btn-default" href="#" role="button">更多 &raquo;</a></p>

                </div>
                <div class="col-md-4">
                    <img class="img-circle" src="${pageContext.request.contextPath}/dist/img/people/qiao.jpg" alt="Generic placeholder image" width="160" height="140">
                    <h2>Steve Jobs</h2>
                    <p>史蒂夫·乔布斯出生于美国加利福尼亚州旧金山，美国发明家、企业家、美国苹果公司联合创办人。
                        1976年4月1日，乔布斯签署了一份合同，决定成立一家电脑公司。1977年4月，乔布斯在美国第一次计算机展览会展示了苹果Ⅱ号样机。1997年苹果推出iMac，创新的外壳颜色透明设计使得产品大卖，并让苹果度过财政危机</p>
                    <p><a class="btn btn-default" href="#" role="button">更多 &raquo;</a></p>
                </div>
                <div class="col-md-4">

                    <img class="img-circle" src="${pageContext.request.contextPath}/dist/img/people/Albtert.jpg" alt="Generic placeholder image" width="160" height="140">
                    <h2>Albert.Einstein</h2>
                    <p>
                        爱因斯坦出生于德国乌尔姆市的一个犹太人家庭,1900年毕业于苏黎世联邦理工学院，入瑞士国籍。1905年，获苏黎世大学哲学博士学位，爱因斯坦提出光子假设，成功解释了光电效应，因此获得1921年诺贝尔物理奖，创立狭义相对论。爱因斯坦为核能开发奠定了理论基础，开创了现代科学技术新纪元，被公认为是继伽利略、牛顿以来最伟大的物理学家。
                    </p>
                    <p><a class="btn btn-default" href="#" role="button">更多 &raquo;</a></p>
                </div>
            </div>

        </div>
    </div>




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

    <hr class="featurette-divider">
<%--main body--%>
<%--table--%>
    <table class="table">
        <caption>Welcome!</caption>
        <thead>
        <tr>
            <th width="30%">项目名称</th>
            <th width="70%">项目内容简介</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>
                <div class="list-group">
                    <a href="#" class="list-group-item active">
                        项目
                    </a>
                    <a href="#" class="list-group-item">项目一</a>
                    <a href="#" class="list-group-item">项目二</a>
                    <a href="#" class="list-group-item">项目三</a>
                    <a href="#" class="list-group-item">项目四</a>
                </div>
            </td>
            <td>
                此处还没有内容，有待后续开发
            </td>
        </tr>
        </tbody>
    </table>
<%--table--%>

    <!-- footer -->


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




</body>

</html>
