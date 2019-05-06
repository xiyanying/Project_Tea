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
    <style type="text/css">
        .addTab{
            text-align: center;
            width: 500px;
            height: 350px;
        }
        #addDiv{
            height: 408px;
            width: 368px;
            background-image: url(/static/img/fruit1.png);
            position: absolute;
            top: 20%;
            left: 35%;
        }
        #addbtn{
            width: 90px;
            height: 40px;
            border: none;
            background-color: darkgreen;
            margin: 4px 0 0;
            color: white;
            text-align: center;
            font-size: 16px;
            text-decoration: none;
            display: inline-block;
            border-radius:5px;
        }
        .textTd input select  {
            width: 270px;
            height: 40px;
            text-indent: 1.5rem;
        }
    </style>
</head>
<body>

    <form action="${pageContext.request.contextPath}/info/add/cookie" method="post" enctype="multipart/form-data"><br>
        <div id="addDiv">
            <table class="addTab">
                <tr>
                    <td>糕点名称:</td>
                    <td class="textTd">
                        <input name="cName" />
                    </td>
                </tr>
                <tr>
                    <td>糕点介绍:</td>
                    <td class="textTd">
                        <input type="text" name="cIntroduce"/>
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
                        <input name="cOther">
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" id="addbtn" value="添加">
                    </td>
                </tr>
            </table>

        </div>
    </form>


</body>
</html>
