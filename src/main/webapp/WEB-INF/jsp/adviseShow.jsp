<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: xyy
  Date: 2019/5/23
  Time: 14:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>意见反馈后台显示页面</title>
    <style  type="text/css">
        *{
            margin: 0px;
            padding: 0px;
        }
        body{
            background-color:black;
        }
        .tab{
            width: 900px;
            height: auto;
            text-align: center;
            border: 1px solid seashell;
            position: absolute;
            left:60px;
            top: 10%;
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
        .tab tr{
            height: 60px;
        }
        .manager_main_top{
            width: 100%;
            height:40px;
        }
        .manager_main_bottom ul, .left_btn ul,.page_cookie ul{
            list-style-type: none;
        }
        ul li{
            text-decoration: none;
            display: inline;
            margin: 0;
            padding: 0;
        }
        .page_cookie ul li{
            display: inline-block;
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
        .left_tomorrow {
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
        .left_advise {
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
        .page_count_link{
            width: 250px;
            height: 35px;
            position: absolute;
            top:450px;
            left:30%;
            margin:  10px;
            text-align: center;
            font-size: 18px;
            padding-top: 6px;
            background-color: black;
            border-radius: 3px;
        }
        .all_title{
            width: 30%;
            height: 50px;
            font-family: 'Times New Roman', Times, serif;
            font-size: 22px;
            color: brown;
            text-align: center;
            position: absolute;
            top:20px;
            left: 30%;
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
                                <a href="${pageContext.request.contextPath}/info/advise/display">意见反馈</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>>
        </li>
        <li>
            <div class="manager_right">
                <div class="all_title">
                    <p><b>意见反馈显示 </b></p>
                </div>
                <table class="tab">
                    <tr class="head">
                        <td>序号</td>
                        <td>标题</td>
                        <td>意见内容</td>
                        <td>邮箱地址</td>
                        <td>操作</td>
                    </tr>
                    <c:forEach items="${advises}" var="adv" varStatus="status">
                        <tr>
                            <td>${status.count}</td>
                            <td>${adv.title}</td>
                            <td>${adv.content}</td>
                            <td>${adv.emailAddress}</td>
                            <td>
                                <a href="${pageContext.request.contextPath}/info/advise/delete?id=${adv.aId}">删除</a></td>
                        </tr>
                    </c:forEach>
                    <div class="page_count_link">>
                        <c:if test="${advises.size()!=0}">
                            <a href="${pageContext.request.contextPath}/info/advise/display?page=1">首页</a>
                            <a href="${pageContext.request.contextPath}/info/advise/display?page=${current-1}">上一页</a>
                            <a href="${pageContext.request.contextPath}/info/advise/display?page=${current+1}">下一页</a>
                            <a href="${pageContext.request.contextPath}/info/advise/display?page=${pagecount}">尾页</a>
                        </c:if>
                    </div>
                </table>

            </div>
        </li>
    </ul>
</div>
</body>
</html>
