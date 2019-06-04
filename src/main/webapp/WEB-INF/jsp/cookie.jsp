<%--
  Created by IntelliJ IDEA.
  User: xyy
  Date: 2019/5/4
  Time: 12:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <meta charset="utf-8">
    <title>糕点详情页</title>
    <style type="text/css">
        *{
            margin: 0px;
            padding: 0px;
        }
        body{
            background-color:black;
        }
        .detailTab{
            text-align: center;
            width: 450px;
            height: 350px;
        }
        a{
            text-decoration: none;
            color: rgb(141, 67, 13);
        }
        a:link,a::after,a:active{
            color:rgb(141, 67, 13);
        }
        a:hover,a:active{
            color: burlywood;
        }
        .manager_main_top{
            width: 100%;
            height:40px;
        }
        .manager_main_bottom ul, .left_btn ul{
            list-style-type: none;
        }
        ul li{
            text-decoration: none;
            display: inline;
            margin: 0;
            padding: 0;
        }
        .manager_left{
            width: 200px;
            height: 87%;
            background-color:black;
            border: 5px solid rgb(48, 46, 46);
            border-radius: 5px;
        }
        .manager_right{
            width: 1100px;
            height: 87%;
            position: absolute;
            top: 40px;
            left: 210px;
            border-top: 5px solid rgb(48, 46, 46);
            border-bottom: 5px solid rgb(48, 46, 46);
            border-right: 5px solid rgb(48, 46, 46);
            background-color: white;
            border-radius: 5px;
        }
        .top_title{
            width: 350px;
            height: 40px;
            text-align: center;
            font-size: 22px;
            position: absolute;
            top: 5px;
            color: aliceblue;
            padding-left: 20px;
        }
        .top_welcome{
            width: 200px;
            height: 40px;
            color: white;
            text-align: center;
            position: absolute;
            right: 10%;
            padding-top: 13px;
        }
        .left_query{
            width: 123px;
            height: 35px;
            color: rgb(141, 67, 13);
            font-size: 20px;
            position: absolute;
            top: 150px;
            left: 90px;
            text-align: center;
            display: block;
            padding-top: 13px;
            border-radius: 5px;
            background-color: white;
        }
        .left_tomorrow{
            width: 123px;
            height: 35px;
            color: rgb(141, 67, 13);
            font-size: 20px;
            position: absolute;
            top: 250px;
            left: 90px;
            padding-top: 13px;
            text-align: center;
            display: block;
            border-radius: 5px;
            background-color: white;
        }
        .left_advise{
            width: 123px;
            height: 35px;
            color: rgb(141, 67, 13);
            font-size: 20px;
            position: absolute;
            top: 350px;
            left: 90px;
            padding-top: 13px;
            text-align: center;
            display: block;
            border-radius: 5px;
            background-color: white;
        }
        .detail_title{
            width: 30%;
            height: 50px;
            font-family: 'Times New Roman', Times, serif;
            font-size: 22px;
            color: brown;
            text-align: center;
            position: absolute;
            top:20px;
            left: 20%;
        }
        #detailDiv{
            height: 440px;
            width: 45%;
            background-image: url(/static/img/bg.jpg);
            position: absolute;
            top: 10%;
            left: 15%;
            border: 2px solid papayawhip;
        }
        #backDiv{
            display: inline-block;
            width: 90px;
            background-color: black;
            position: absolute;
            top:430px;
            left:35%;
            padding: 10px 5px;
            border-radius:5px;
        }
        .textTd input {
            width: 270px;
            height: 40px;
            font-size: 18px;
            text-indent: 1.5rem;
        }
    </style>
</head>
<body>
<div class="manager_main_top">
    <div class="top_title">
        西安石油大学茶歇后台管理
    </div>
    <div class="top_welcome">
        ${userName}Admin,欢迎您！
    </div>
</div>
<div class="manager_main_bottom">
    <ul>
        <li>
            <div class="manager_left">
                <div class="left_btn">
                    <ul>
                        <li>
                            <div class="left_query">
                                <a href="${pageContext.request.contextPath}/info/getAll/cookie">首页</a>
                            </div>
                        </li>
                        <li>
                            <div class="left_tomorrow">
                                <a href="${pageContext.request.contextPath}/tom/cookie/select">明日查看</a>
                            </div>
                        </li>
                        <li>
                            <div class="left_advise">
                                <a href="#">意见反馈</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>>
        </li>
        <li>
            <div class="manager_right">
                <div class="detail_title">
                    <p><b>糕点详细信息</b></p>
                </div>
                <div id="detailDiv">
                    <table class="detailTab">
                        <tr>
                            <td>糕点名称:</td>
                            <td class="textTd">
                                <input name="cName" value="${acookie.cName}"  />
                            </td>
                        </tr>
                        <tr>
                            <td>糕点介绍:</td>
                            <td class="textTd">
                                <input type="text" name="cIntroduce" value="${acookie.cIntroduce}"/>
                            </td>
                        </tr>
                        <tr>
                            <td>糕点图片路径:</td>
                            <td class="textTd">
                                <input name="cImagePath" value="${acookie.cImagePath}"/>
                            </td>
                        </tr>
                        <tr>
                            <td>糕点类型:</td>
                            <td class="textTd">
                                <input name="cType" value="${acookie.cType}">
                            </td>
                        </tr>
                        <tr>
                            <td>其他:</td>
                            <td class="textTd">
                                <input name="cOther" value="${acookie.cOther}">
                            </td>
                        </tr>
                    </table>
                </div>
                <div id="backDiv">
                    <a href="${pageContext.request.contextPath}/info/getAll/cookie">返回主页面</a>
                </div>
            </div>
        </li>
    </ul>
</div>

</body>
</html>
