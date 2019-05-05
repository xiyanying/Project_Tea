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
</head>
<body>

    <form action="${pageContext.request.contextPath}/info/update/cookie" method="post">
        <input type="hidden" name="cId" value="${ucookie.cId}">
        糕点名称:<input name="cName" value="${ucookie.cName}"  /><br>
        糕点介绍:<input type="text" name="cIntroduce" value="${ucookie.cIntroduce}"/><br>
        糕点图片路径:<input name="cImagePath" value="${ucookie.cImagePath}"/><br>
        其他:<input name="cOther" value="${ucookie.cOther}"><br>
        糕点类型:
        <select name="cType">
            <option value="cookie" <c:if test="${ucookie.cType=='cookie'}">selected="selected"</c:if> >糕点</option>
            <option value="fruit" <c:if test="${ucookie.cType=='fruit'}"> selected="selected" </c:if>>水果</option>
            <option value="tea" <c:if test="${ucookie.cType=='tea'}">selected="selected"</c:if>>茶点</option>
        </select><br>

        <input type="submit" value="提交">
    </form>

</body>
</html>
