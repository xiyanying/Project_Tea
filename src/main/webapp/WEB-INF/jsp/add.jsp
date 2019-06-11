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
            width: 850px;
            height: 350px;
        }
        input,select{
            width: 270px;
            height: 40px;
            text-indent: 1.5rem;
            font-size: 18px;
            margin: 10px;
        }
        .tdTit{
            font-size: 18px;
            width: 100px;
            height: 40px;
        }
        textarea{
            width: 270px;
            height: 180px;
            text-indent: 1.5rem;
            font-size: 18px;
            margin: 10px;
        }
        #addDiv{
            height: 400px;
            width: 850px;
            position: absolute;
            top: 16%;
            left: 7%;
            border: 2px solid papayawhip;
        }
        #addbtn{
            width: 90px;
            height: 40px;
            border: none;
            background-color: black;
            color: rgb(141, 67, 13);
            text-align: center;
            font-size: 18px;
            text-decoration: none;
            border-radius:5px;
            position: absolute;
            top: 415px;
            left:43%;
            padding-right: 13px;
            align-self: center;
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
        .add_title{
            width: 30%;
            height: 50px;
            font-family: 'Times New Roman', Times, serif;
            font-size: 24px;
            color: brown;
            text-align: center;
            position: absolute;
            top:27px;
            left: 30%;
        }
        .sameMassage{
            width: 200px;
            height: auto;
            border: maroon;
            color: red;
            font-size: 24px;
        }
    </style>
</head>
<body>
<div class="manager_main_top">
    <div class="top_title">
        西安石油大学茶歇后台管理
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
                <div class="add_title">
                    <p><b>糕点信息添加</b></p>
                </div>
                <div class="sameMassage">
                    ${sameCookies}
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
                                <td class="tdTit">糕点名称:</td>
                                <td class="textTd">
                                    <input name="cName" placeholder="名称尽量简洁"/>
                                </td>

                                <td class="tdTit">糕点图片路径:</td>
                                <td class="textTd">
                                    <input type="file" name="upload"/>
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="2" class="tdTit">糕点介绍:</td>
                                <td class="textTd" rowspan="2" >
                                    <textarea name="cIntroduce" maxlength="200" placeholder="字数不要超过200字" ></textarea>
                                </td>
                                <td class="tdTit">糕点类型:</td>
                                <td class="textTd">
                                    <select name="cType">
                                        <option value="cookie">糕点</option>
                                        <option value="fruit">水果</option>
                                        <option value="tea">茶点</option>
                                    </select>
                                </td>
                            </tr>

                            <tr>
                                <td class="tdTit">其他:</td>
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
