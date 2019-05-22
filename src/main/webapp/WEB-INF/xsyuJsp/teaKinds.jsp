<%--
  Created by IntelliJ IDEA.
  User: xyy
  Date: 2019/5/16
  Time: 20:33
  To change this template use File | Settings | File Templates.
--%>
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
            height: 700px;
            background-image: url("${pageContext.request.contextPath}/static/img/bg.jpg");
        }
        .mid_left{
            width:240px;
            height: 673px;
            position: absolute;
            left: 10%;
            top: 25%;
            background-color: white;
            opacity: 0.8;
            border-right: 3px solid gray;
        }
        #mid_right{
            width:800px;
            height: 673px;
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
    </style>
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
                <td><a href="../../main.jsp" class="text">首页</a></td>
                <td><a href="${pageContext.request.contextPath}/export/common/teaKinds" style="color: red" class="text">茶歇品类</a></td>
                <td><a href="${pageContext.request.contextPath}/export/common/teaStory" class="text">茶歇故事</a></td>
                <td><a href="${pageContext.request.contextPath}/export/common/tomorrowTea" class="text">明日茶点</a></td>
                <td><a href="${pageContext.request.contextPath}/export/common/help" class="text">帮助中心</a></td>
            </tr>
        </table>
    </div>
</div>
<div class="mid_bg" id="mid_bg">
    <div class="mid_left">
        <div class="mid_left_fruit">
            <p></p><b><a href="first_page.html#mid_right #mid_right">水果类</a> </b></p>
        </div>
        <div class="mid_left_fruit">
            <p><b><a href="first_page.html#mid_right #mid_right">茶点类</a></b></p>
        </div>
        <div class="mid_left_fruit">
            <p><b><a href="first_page.html#mid_right #mid_right">糕点类</a></b></p>
        </div>
    </div>
    <div id="mid_right">

    </div>
</div>
<div class="bottom">
    地址：陕西省西安市电子二路     邮编：710300
</div>
</body>
</html>
