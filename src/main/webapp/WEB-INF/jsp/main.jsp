<%--
  Created by IntelliJ IDEA.
  User: xyy
  Date: 2019/5/4
  Time: 12:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <table border="1px">
        <tr>
            <td>序号</td>
            <td>名称</td>
            <td>介绍</td>
            <td>图片路径</td>
            <td>其他</td>
            <td>类型</td>
            <td>操作</td>
        </tr>
        <c:forEach items="${cookies}" var="tcookie" varStatus="status">
            <tr>
                <td>${status.count}</td>
                <td>${tcookie.cName}</td>
                <td>${tcookie.cIntroduce}</td>
                <td>${tcookie.cImagePath}</td>
                <td>${tcookie.cOther}</td>
                <td>${tcookie.cType}</td>
                <td><a href="${pageContext.request.contextPath}/info/get/cookie?id=${tcookie.cId}">查看</a> <a href="${pageContext.request.contextPath}/info//get/update?id=${tcookie.cId}">修改</a> <a href="${pageContext.request.contextPath}/info/delete/cookie?id=${tcookie.cId}">删除</a></td>
            </tr>
        </c:forEach>
        ${userName},欢迎您！
        <a href="${pageContext.request.contextPath}/info/jump/jsp">糕点添加</a>





    </table>
</body>
</html>
