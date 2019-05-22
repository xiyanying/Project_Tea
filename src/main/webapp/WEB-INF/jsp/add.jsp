<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: xyy
  Date: 2019/5/3
  Time: 11:48
  To change this template use File | Settings | File Templates.
--%>

<%@page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"
         pageEncoding="utf-8"%>
<html>
<head>
    <meta charset="utf-8">
    <title>糕点添加</title>
    <style type="text/css">
        *{
            margin: 0px;
            padding: 0px;
        }
        body{
            background-color:black;
        }
        .addTab{
            text-align: center;
            width: 450px;
            height: 350px;
        }
        .addTab tr input,.addTab tr select {
            width: 270px;
            height: 40px;
            text-indent: 1.5rem;
            font-size: 18px;
            margin: 10px;
        }
        #addDiv{
            height: 440px;
            width: auto;
            background-image: url(/static/img/fruit1.png);
            position: absolute;
            top: 10%;
            left: 15%;
            border: 2px solid papayawhip;
        }
        #addbtn{
            width: 80px;
            height: 40px;
            border: none;
            background-color: black;
            margin: 10px 0 0;
            color: rgb(141, 67, 13);
            text-align: center;
            font-size: 18px;
            text-decoration: none;
            border-radius:5px;
            position: absolute;
            top: 430px;
            left:33%;
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
        .left_add{
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
        .left_tomorrow{
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
        .add_title{
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
    </style>
</head>
<body>
<div class="manager_main_top">
    <div class="top_title">
        西安石油大学茶歇后台管理
    </div>
    <div class="top_welcome">
        ${userName},欢迎您！
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
                            <div class="left_add">
                                <a href="${pageContext.request.contextPath}/info/jump/jsp">添加</a>
                            </div>
                        </li>
                        <li>
                            <div class="left_tomorrow">
                                <a href="${pageContext.request.contextPath}/tom/cookie/select">明日查看</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>>
        </li>
        <li>
            <div class="manager_right">
                <div class="add_title">
                    <p><b>糕点信息添加</b></p>
                </div>
                <form action="${pageContext.request.contextPath}/info/add/cookie" method="post" enctype="multipart/form-data"><br>
                    <div id="addDiv">
                        <c:if test="${errors!=null && errors.size()>0}">
                            <c:forEach items="${errors}" var="error">
                                <p><font color="red">${error}</font></p>
                            </c:forEach>
                        </c:if>
                        <table class="addTab">
                            <tr>
                                <td>糕点名称:</td>
                                <td class="textTd">
                                    <input name="cName" placeholder="名称尽量简洁"/>
                                </td>
                            </tr>
                            <tr>
                                <td>糕点介绍:</td>
                                <td class="textTd">
                                    <input type="text" name="cIntroduce" placeholder="字数不要超过500字"/>
                                </td>
                            </tr>
                            <tr>
                                <td>糕点图片路径:</td>
                                <td class="textTd">
                                    <input type="file" name="upload"/>
                                </td>
                            </tr>
                            <tr>
                                <td>糕点类型:</td>
                                <td class="textTd">
                                    <select name="cType">
                                        <option value="cookie">糕点</option>
                                        <option value="fruit">水果</option>
                                        <option value="tea">茶点</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>其他:</td>
                                <td class="textTd">
                                    <input name="cOther" placeholder="补充内容添加">
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="addDiv">
                        <input type="submit" id="addbtn" value="添加">
                    </div>
                </form>
            </div>
        </li>
    </ul>
</div>
</body>
</html>
