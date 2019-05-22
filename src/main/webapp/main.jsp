<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>西安石油大学茶歇网站首页
    </title>
    <!-- <link  href="../css/first_main.css" type="text/css"  rel="stylesheet"/> -->

    <!-- <script type="text/javascript">
        window.onload=function(){
            document.getElementById("mid_bg").innerHTML = '<object type="text/html" data="tea_page_main.html" width="100%" height="100%"></object>';
        }
    </script> -->
    <style type="text/css">
        body{
            padding: 0px;
            margin: 0px;
        }
        .top{
            width: 100%;
            height: 140px;
            background-color: rgb(146, 145, 145);
        }
        .top_title{
            width: 500px;
            height: 90px;
            position: absolute;
            left: 100px;
            top: 30px;
        }
        hr{
            height: 60px;
            width: 1px;
        }
        .top_hr{
            position: absolute;
            left: 300px;
            top: 0px;
        }
        .top_title_text{
            width: 130px;
            height: 45px;;
            text-align: center;
            color: white;
            font-size: 28px;
            font-family: "宋体";
            position: absolute;
            left: 300px;
            top: 20px;
            padding-top: 10px;
        }
        .bottom{
            width: 100%;
            height: 35px;
            background-color: rgb(146, 145, 145);
            text-align: center;
            color: white;
        }
        .img_xsyu{
            height: 80px;
        }
        .img_tit{
            width: 170px;
            position: absolute;
            left: 350px;
            top: 50px;
        }
        .title_tab{
            width: 500px;
            height: 50px;
            position: absolute;
            left: 550px;
            top: 80px;
        }
        .text{
            color: rgb(247, 241, 241);
            text-decoration-line: none;
            font-family:sans-serif;
            font-size:large;
        }
        a{
            display: block;
            color: black;
            text-decoration: none;
        }
        a:hover,a:active{
            color: rgb(112, 63, 63);
        }

        .mid_bg{
            width: 100%;
            height: 630px;
            background-image: url("${pageContext.request.contextPath}/static/img/bg2.jpg");
            background-repeat: no-repeat;
            background-size: cover;
            opacity: 0.7;
        }
        .mid_top{
            width:56%;
            height: 350px;
            position: absolute;
            left: 22%;
            top: 38%;
            opacity: 1;
        }
        .mid_bottom{
            width:56%;
            height: 100px;
            position: absolute;
            left: 22%;
            top: 100%;
            background-color: white;
        }
        #img{
            width: 100%;
            height:350px;
        }
        .point{
            height:50px;
            position:relative;
            top:-60px;
            width:240px;
            margin:0 auto;
            left:0px;
            z-index:999;
            text-align:center;
            position:absolute;
            top:85%;
            left:35%;
        }
        .point ul li{
            width:20px;
            height:20px;
            margin:0 5px;
            float:left;
            list-style:none;
        }
        .point ul li img{width:20px;height:20px;}
        .point ul li img:hover{cursor:pointer;}
    </style>

    <script type="text/javascript">
        var min=1, max=5;
        //设置切换的图片
        var imgList = new Array();
        <c:forEach items="${imgs}" var="img" varStatus="status">
            imgList[${status.count-1}]="${pageContext.request.contextPath}/static/img/${img}";
        </c:forEach>
        <%--imgList[0]="${pageContext.request.contextPath}/static/img/cookie1.jpg";--%>
        <%--imgList[1]="${pageContext.request.contextPath}/static/img/cookie2.jpg";--%>
        <%--imgList[2]="${pageContext.request.contextPath}/static/img/cookie3.jpg";--%>
        <%--imgList[3]="${pageContext.request.contextPath}/static/img/cookie4.jpg";--%>
        <%--imgList[4]="${pageContext.request.contextPath}/static/img/cookie5.jpg";--%>
        //自动变化“小圆点”
        var li_imgList = new Array();
        <c:forEach items="${imgs}" var="img" varStatus="status">
            li_imgList[${status.count-1}]="i${status.count}";
        </c:forEach>
        // li_imgList[0]="i1";
        // li_imgList[1]="i2";
        // li_imgList[2]="i3";
        // li_imgList[3]="i4";
        // li_imgList[4]="i5";
        //鼠标触碰修改
        var liList = new Array();
        <c:forEach items="${imgs}" var="img" varStatus="status">
            liList[${status.count-1}]="p${status.count}";
        </c:forEach>
        // liList[0]="p1";
        // liList[1]="p2";
        // liList[2]="p3";
        // liList[3]="p4";
        // liList[4]="p5";

        //自动循环
        var int=self.setInterval("loop()",2000);
        function loop(){
            var str=document.getElementById("img").src;
            for(var i=0; i<5; i++){
                if(min==5){
                    min=0;
                }
                if(i==min){
                    document.getElementById("img").src=imgList[i];
                    min++;
                    if(i==0){
                        document.getElementById(li_imgList[i]).src="${pageContext.request.contextPath}/static/img/redCircle.jpg";
                        document.getElementById(li_imgList[4]).src="${pageContext.request.contextPath}/static/img/blackCircle.jpg";
                    }else{
                        document.getElementById(li_imgList[i]).src="${pageContext.request.contextPath}/static/img/redCircle.jpg";
                        document.getElementById(li_imgList[i-1]).src="${pageContext.request.contextPath}/static/img/blackCircle.jpg";
                    }
                    break;
                }
            }
        }
        //鼠标触碰显示图片+暂停循环显示
        var a=3;
        function point(obj){
            clearInterval(int);
            //alert(obj.id);
            for(var i=0;i<5;i++){
                if(obj.id==liList[i]){
                    document.getElementById("img").src=imgList[i];
                    min=i+1;
                    document.getElementById(li_imgList[i]).src="${pageContext.request.contextPath}/static/img/redCircle.jpg";
                    for(var a=0;a<5;a++){
                        if(a!=i){
                            document.getElementById(li_imgList[a]).src="${pageContext.request.contextPath}/static/img/blackCircle.jpg";
                        }
                    }
                }
            }
        }
        //鼠标离开继续循环
        function leave(){
            int = setInterval("loop()",5000);
        }
    </script>
</head>


<body>

<div class="top">
    <div class="top_title">
        <img class="img_xsyu" src="${pageContext.request.contextPath}/static/img/xsyu.jpg"/>
        <div class="top_hr">
            <hr>
        </div>
        <div class="top_title_text">
            <b>茶歇网站</b>
        </div>
    </div>

    <div>
        <table class="title_tab">
            <tr>
                <td><a href="#" class="text"  style="color: brown">首页</a></td>
                <td><a href="${pageContext.request.contextPath}/export/common/teaKinds" class="text">茶歇品类</a></td>
                <td><a href="${pageContext.request.contextPath}/export/common/teaStory" class="text">茶歇故事</a></td>
                <td><a href="${pageContext.request.contextPath}/export/common/tomorrowTea" class="text">明日茶点</a></td>
                <td><a href="${pageContext.request.contextPath}/export/common/help" class="text">帮助中心</a></td>
                <td><a href="${pageContext.request.contextPath}/export/common/login" class="text">管理员登录</a></td>
            </tr>
        </table>
    </div>
</div>
<div class="mid_bg" id="mid_bg">
    <div class="mid_top">
        <a href="#"><img alt="potho" src="${pageContext.request.contextPath}/static/img/cookie1.jpg" id="img"/></a>
        <div class="point" style="display:block;">
            <ul>
                <!-- ul、li实现“小圆点” -->
                <li id="p1" onmouseover="point(this)" onmouseout="leave()" >
                    <img src="${pageContext.request.contextPath}/static/img/redCircle.jpg" alt="" id="i1" />
                </li>
                <li id="p2" onmouseover="point(this)" onmouseout="leave()" >
                    <img src="${pageContext.request.contextPath}/static/img/blackCircle.jpg" alt="" id="i2" />
                </li>
                <li id="p3" onmouseover="point(this)" onmouseout="leave()" >
                    <img src="${pageContext.request.contextPath}/static/img/blackCircle.jpg" alt="" id="i3" />
                </li>
                <li id="p4" onmouseover="point(this)" onmouseout="leave()" >
                    <img src="${pageContext.request.contextPath}/static/img/blackCircle.jpg" alt="" id="i4" />
                </li>
                <li id="p5" onmouseover="point(this)" onmouseout="leave()" >
                    <img src="${pageContext.request.contextPath}/static/img/blackCircle.jpg" alt="" id="i5" />
                </li>
            </ul>
        </div>
    </div>
    <div class="mid_bottom">
        <p>
            首页介绍:该页主要动态展示推荐度较高的产品
        </p>
    </div>
</div>
<div class="bottom">
    地址：陕西省西安市电子二路     电话：**********
</div>
</body>
</html>