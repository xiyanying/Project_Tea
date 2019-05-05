<%--
  Created by IntelliJ IDEA.
  User: xyy
  Date: 2019/5/3
  Time: 11:48
  To change this template use File | Settings | File Templates.
--%>

<%@page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"
         pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>糕点添加</title>
</head>
<body>

    <form action="${pageContext.request.contextPath}/info/add/cookie" method="post" enctype="multipart/form-data"><br>
        糕点名称:<input name="cName" /><br>
        糕点介绍:<input type="text" name="cIntroduce"/><br>
        糕点图片路径:<input type="file" name="upload"/><br>
        其他:<input name="cOther"><br>
        糕点类型:<select name="cType">
            <option value="cookie">糕点</option>
            <option value="fruit">水果</option>
            <option value="tea">茶点</option>
             </select><br>
        <input type="submit" value="添加">

    </form>


</body>
</html>
