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
    <title>糕点详情页</title>
    <style type="text/css">
        .detailTab{
            text-align: center;
            width: 450px;
            height: 350px;
        }
        #detailDiv{
            height: 408px;
            width: 368px;
            background-image: url(/static/img/bg.jpg);
            position: absolute;
            top: 20%;
            left: 35%;
        }
        #backDiv{
            display: inline-block;
            width: 90px;
            background-color: darkkhaki;
            position: absolute;
            top:50px;
            left:35%;
            padding: 10px 5px;
            border-radius:5px;
        }
        a{
            text-decoration: none;
            color: white;
            font-size: 16px;
            text-align: center;
        }
        .textTd input {
            width: 270px;
            height: 40px;
            text-indent: 1.5rem;
        }
    </style>
</head>
<body>
<a href="${pageContext.request.contextPath}/info/getAll/cookie">
    <div id="backDiv">
        返回主页面
    </div>
</a>
<br><br><br><br>
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

</body>
</html>
