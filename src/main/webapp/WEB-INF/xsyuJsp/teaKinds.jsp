<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <meta charset="utf-8">
    <title>茶歇网站茶点品类页</title>
    <style type="text/css">
        body{
            padding: 0px;
            margin: 0px;
        }
        .top{
            width: 100%;
            height: 120px;
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
        .img_xsyu {
            height: 80px;
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
            height: 1010px;
            background-image: url("${pageContext.request.contextPath}/static/img/bg.jpg");
        }
        .mid_left{
            width:240px;
            height: 984px;
            position: absolute;
            left: 10%;
            top: 25%;
            background-color: white;
            opacity: 0.8;
            border-right: 3px solid gray;
        }
        #mid_right{
            width:800px;
            height: 984px;
            position: absolute;
            left: 27.9%;
            top: 25%;
            background-color: white;
            opacity: 0.9;
        }
        .mid_left_fruit, .mid_left_fruit::after,.mid_left_fruit::before{
            width: 90%;
            height: 55px;
            margin-left: 20px;
            margin-top: 100px;
            text-align: center;
            font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            color:black;
            font-size: 20px;
            border-top: 1px solid silver;
            border-bottom: 1px solid silver;
        }
        .mid_left_fruit:hover{
            background-color: darkgray;
            text-align: center;
        }
        .wrap{
            width: 200px;
            height: 250px;
            text-align: center;
            font-size: 16px;
            margin-left: 40px;
            margin-top: 50px;
            position:absolute;
            border-radius: 5px;
            float: left;
        }
        .cookie_display{
            width: 200px;
            height: 250px;
            border: 4px solid silver;
            text-align: center;
            font-size: 18px;
            position:absolute;
            border-radius: 5px;
            float: left;
        }
        .cookie_intro{
            width: 200px;
            height: 250px;
            border: 4px solid silver;
            text-align: center;
            font-size: 14px;
            position:absolute;
            border-radius: 5px;
            float: left;
            color: maroon;
        }
        .wrap{
            position: relative;
        }
        .cookie_display{
            z-index: 2;
        }
        .cookie_intro{
            transform: rotateY(180deg);
        }
        .wrap:hover .cookie_intro{
            /*背面作为正面*/
            transform: rotateY(0deg);
        }
        .wrap:hover .cookie_display{
            /*正面作为背面*/
            transform: rotateY(180deg);
        }
        /*.cookie_display:hover{
            background-color: beige;
        }*/
        .cookie_display,.cookie_intro{
            position: absolute;
            top: 0;
            left: 0;
            transition: all 1s;
            backface-visibility:hidden;    /*这个属性至关重要，当元素不面向屏幕时不可见，不然的话上面的div翻转180度后还是覆盖在下面的div上*/
        }
        .tea_page{
            width: 350px;
            height: 50px;
            color: black;
            position: absolute;
            top: 85%;
            margin-top: 30px;
            margin-left: 20%;
        }
        .page_tab{
            width: 300px;
            height: 50px;
            position: absolute;
            left: 150px;
            top:20px;
            margin-top: 40px;
        }
    </style>
    <script type="text/javascript">
        var parentDiv=document.getElementById("disp");
        parentDiv.addEventListener("mouseover", function () {
            console.log("父div的mouseover事件被触发");
        },false);
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
                <td><a href="${pageContext.request.contextPath}/export/main/image" class="text">首页</a></td>
                <td><a href="${pageContext.request.contextPath}/export/kind/display" style="color: brown" class="text">茶歇品类</a></td>
                <td><a href="${pageContext.request.contextPath}/export/common/teaStory" class="text">茶歇故事</a></td>
                <td><a href="${pageContext.request.contextPath}/export/tomcookie/display" class="text">明日茶点</a></td>
                <td><a href="${pageContext.request.contextPath}/export/common/help" class="text">帮助中心</a></td>
            </tr>
        </table>
    </div>
</div>
<div class="mid_bg" id="mid_bg">
    <div class="mid_left">
        <div class="mid_left_fruit">
            <p></p><b><a href="${pageContext.request.contextPath}/export/kind/display?type=fruit">水果类</a> </b></p>
        </div>
        <div class="mid_left_fruit">
            <p><b><a href="${pageContext.request.contextPath}/export/kind/display?type=tea">茶点类</a></b></p>
        </div>
        <div class="mid_left_fruit">
            <p><b><a href="${pageContext.request.contextPath}/export/kind/display?type=cookie">糕点类</a></b></p>
        </div>
    </div>
    <div id="mid_right">
        <c:forEach items="${cookies}" var="cok">
            <div class="wrap">
                <div class="cookie_display" id="disp">
                    <div class="cookie_img">
                        <img src="${pageContext.request.contextPath}/static/img/${cok.cImagePath}" alt="" style="width:200px; height:170px;">
                        <p>
                                ${cok.cName}
                        </p>
                    </div>
                </div>
                <div class="cookie_intro">
                        ${cok.cIntroduce}
                </div>
            </div>
        </c:forEach>
        <c:if test="${cookies.size()==0}">
            <h2>此类糕点还未能及时更新，敬请期待。。。</h2>
        </c:if>
        <div class="tea_page">
            <table class="page_tab">
                <c:if test="${cookies.size()!=0}">
                    <tr>
                        <td><a href="${pageContext.request.contextPath}/export/kind/display?type=${type}&page=1">首页</a></td>
                        <td><a href="${pageContext.request.contextPath}/export/kind/display?type=${type}&page=${current-1}">上一页</a></td>
                        <td><a href="${pageContext.request.contextPath}/export/kind/display?type=${type}&page=${current+1}">下一页</a></td>
                        <td><a href="${pageContext.request.contextPath}/export/kind/display?type=${type}&page=${pagecount}">尾页</a></td>
                    </tr>
                </c:if>
            </table>

        </div>
    </div>

</div>
<div class="bottom">
    地址：陕西省西安市电子二路     邮编：710300
</div>
</body>
</html>
