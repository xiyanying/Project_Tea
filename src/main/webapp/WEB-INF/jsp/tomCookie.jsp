<%--
  Created by IntelliJ IDEA.
  User: zhanglipeng
  Date: 2019/5/8
  Time: 14:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>明日查看</title>
</head>
<body>
    时间：${list.tomTime}
    <table>
        <tr>
            <td>复选框</td>
            <td>序号</td>
            <td>名称</td>
            <td>图片路径</td>
            <td>类型</td>
            <td>操作</td>
        </tr>
        <c:forEach items="${data}" var="tcookie" varStatus="status">
            <tr>
                <td><input type="checkbox" name="ids" value="${tcookie.cId}" /></td>
                <td>${status.count}</td>
                <td>${tcookie.cName}</td>
                <td>${tcookie.cImagePath}</td>
                <td>${tcookie.cType}</td>
                <td>
                <a href="${pageContext.request.contextPath}/info/delete/cookie?id=${tcookie.tomId}">删除</a></td>
            </tr>
        </c:forEach>

    </table>
    <c:forEach items="${pageCount}" var="num">
        <a href="${pageContext.request.contextPath}/tom/cookie/select?type=${type}&current=${num}">${num}</a>
    </c:forEach>



</body>
</html>
