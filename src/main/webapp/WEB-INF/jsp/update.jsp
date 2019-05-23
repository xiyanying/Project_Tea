<%--
  Created by IntelliJ IDEA.
  User: xyy
  Date: 2019/5/4
  Time: 13:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>糕点信息修改</title>
    <style type="text/css">
        *{
            margin: 0px;
            padding: 0px;
        }
        body{
            background-color:black;
        }
        .updateTab{
            text-align: center;
            width: 450px;
            height: 350px;
        }
        .head{
            background-color: darkkhaki;
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
        .update_title{
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
        #updateDiv {
            height: 440px;
            width: 45%;
            background-image: url(/static/img/bg.jpg);
            position: absolute;
            top: 10%;
            left: 15%;
            border: 2px solid papayawhip;
        }
        .textTd input ,.textTd select {
            width: 270px;
            height: 40px;
            font-size: 18px;
            text-indent: 1.5rem;
        }
        #submit{
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
            top: 370px;
            left:33%;
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
                <div class="update_title">
                    <p><b>糕点信息维护</b></p>
                </div>
                <div id="updateDiv">
                    <form action="${pageContext.request.contextPath}/info/update/cookie" method="post">
                        <table class="updateTab">
                            <tr>
                                <td>糕点名称:</td>
                                <td class="textTd">
                                    <input type="hidden" name="cId" value="${ucookie.cId}">
                                    <input name="cName" value="${ucookie.cName}"  />
                                </td>
                            </tr>
                            <tr>
                                <td>糕点介绍:</td>
                                <td class="textTd">
                                    <input type="text" name="cIntroduce" value="${ucookie.cIntroduce}"/>
                                </td>
                            </tr>
                            <tr>
                                <td>糕点图片路径:</td>
                                <td class="textTd">
                                    <input name="cImagePath" value="${ucookie.cImagePath}"/>
                                </td>
                            </tr>
                            <tr>
                                <td>糕点类型:</td>
                                <td class="textTd">
                                    <select name="cType">
                                        <option value="cookie" <c:if test="${ucookie.cType=='cookie'}">selected="selected"</c:if> >糕点</option>
                                        <option value="fruit" <c:if test="${ucookie.cType=='fruit'}"> selected="selected" </c:if>>水果</option>
                                        <option value="tea" <c:if test="${ucookie.cType=='tea'}">selected="selected"</c:if>>茶点</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>其他:</td>
                                <td class="textTd">
                                    <input name="cOther" value="${ucookie.cOther}">
                                </td>
                            </tr>
                        </table>
                        <div class="submit_btn">
                            <input type="submit" id="submit" value="提交">
                        </div>
                    </form>
                </div>
            </div>
        </li>
    </ul>
</div>
</body>
</html>
