<%--
  Created by IntelliJ IDEA.
  User: sean
  Date: 2017/10/7
  Time: 8:28
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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Semantic/dist/semantic.css">
    <title>search</title>
    <style type="text/css">
      li{
          list-style-type:none;
      }
    </style>
</head>
<body>
<input id="root" type="hidden" value="${pageContext.request.contextPath}">
<div class="container">
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4" style="top: 300px; left: auto;">
            <div id="form" class="ui category search">
                <div class="ui icon input">
                    <input class="prompt" type="text" onkeyup="getMoreContents();" onfocus="getMoreContents();" onblur="keywordBlur();" id="searchWord" placeholder="search" value="">
                    <i class="search icon"></i>
                </div>
            </div>
            <div id="showContent"></div>
        </div>
        <div class="col-md-4"></div>
    </div>
</div>









<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/Semantic/dist/semantic.js"></script>
<script type="text/javascript">

    function getMoreContents() {
        var searchWord = $('#searchWord').val();
        if(searchWord=="")
        {
            $('#showContent').empty();
            return;
        }

        var root =$('#root').val();
        $.ajax(
            {
                url: root+"/lab/MoreContent",
                type:"POST",
                data: {"searchWord":searchWord},
                dataType:"json",
                async:true,
                success: function (data) {
                    //清空数据
                    $('#showContent').empty();
                    //添加内容
                    $.each(data,function (i,content) {
                        // var li=document.createElement('li');
                        // var node=document.createTextNode(content);
                        // li.appendChild(node);
                        // var element=document.getElementById("showContent");
                        // element.appendChild(li);
                       $('#showContent').append("<li>"+content+"</li>");
                        console.log(content);
                    });
                    // 给下拉的选项添加样式
                    $('#showContent > li').each(function() {
                        $(this).on('mouseover mouseout', function() {
                            $(this).toggleClass('bg-success');
                            $('#searchWord').val($(this).text());
                        });
                    });

                },
                error: function (XMLHttp) {
                  alert(XMLHttp.status);
                }


            }
        );


    }
    //键盘离开时 清空内容
    function keywordBlur() {
   // $('#showContent').empty();
    }


</script>
</body>
</html>
