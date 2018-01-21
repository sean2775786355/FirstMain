<%--
  Created by IntelliJ IDEA.
  User: sean
  Date: 2018/1/20
  Time: 22:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Semantic/dist/semantic.css">
    <title>home</title>
</head>
<body>
<div id="sidebar" class="ui top attached menu">
    <a id="left"  class="item"><i class="sidebar icon"></i>MENU</a>
    <a id="scale" class="item"><i class="sidebar icon"></i>SACLE</a>
    <a id="right" class="item right floated"><i class="ellipsis vertical icon"></i></a>
</div>
<!-- left sidebar -->
<jsp:include page="module/leftsidebar.jsp"></jsp:include>
<!-- bottom sidebar -->
<jsp:include page="module/bottomsidebar.jsp"></jsp:include>

<!-- contents -->
<div class="pusher">

    <div class="main ui container">

        <div class="ui accordion">
            <div class="title"><i class="dropdown icon"></i> What is a dog? </div>
            <div class="content">
                <p class="transition hidden">狗算是一种家畜。以其忠诚与忠心广受人类欢迎, 可以在世界各地的许多家庭里发现这个受欢迎的客人。</p>
            </div>
            <div class="title"><i class="dropdown icon"></i> What kinds of dogs are there? </div>
            <div class="content">
                <p>狗有许多品种，每个品种都有不同的大小及性格，饲主通常选择适合自己生活方式的品种当作自已的伙伴，其中最受欢迎的品种绝对是吉娃娃。</p>
            </div>
            <div class="title"><i class="dropdown icon"></i> How do you acquire a dog? </div>
            <div class="content">
                <p>通常有三种方式可以取得一只狗狗，宠物店、私人饲主或是动物之家。 (请以领养代替购买)</p>
            </div>
        </div>
    </div>
</div>


<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/Semantic/dist/semantic.js"></script>
<script type="text/javascript">
    // 缩小显示下方菜单栏
    $('#sidebar').on('click', '#scale', function(event) {
        event.preventDefault();
        /* Act on the event */
        $('.ui.sidebar.bottom').sidebar('setting', 'transition', 'scale')
            .sidebar('toggle')
        ;
    });
    // 显示左侧菜单栏
    $('#sidebar').on('click', '#left', function(event) {
        event.preventDefault();
        /* Act on the event */
        $('.ui.sidebar.left').sidebar('setting', 'transition', 'overlay')
            .sidebar({
                dimPage:false
            })
            .sidebar('toggle')

    });

    // 初始化折叠菜单
    $('.ui.accordion')
        .accordion();
    ;
</script>
</body>
</html>
