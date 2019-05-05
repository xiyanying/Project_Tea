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
</head>
<body>
    糕点名称:<input name="cName" value="${acookie.cName}"  /><br>
    糕点介绍:<input type="text" name="cIntroduce" value="${acookie.cIntroduce}"/><br>
    糕点图片路径:<input name="cImagePath" value="${acookie.cImagePath}"/><br>
    其他:<input name="cOther" value="${acookie.cOther}"><br>
    糕点类型:<input name="cType" value="${acookie.cType}"><br>

   <a href="${pageContext.request.contextPath}/info/getAll/cookie">返回主页面</a>

</body>
</html>
