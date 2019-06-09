<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: xyy
  Date: 2019/5/4
  Time: 16:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <meta charset="utf-8">
    <title>login</title>
    <style type="text/css">
        *{
            margin: 0;
            padding: 0;
        }
        #wrap {
            height: 455px;
            width: 100%;
            background-image: url("${pageContext.request.contextPath}/static/img/bg.jpg");
            opacity: 0.6;
        }
        #head {
            height: 100px;
            width: 100%;
            background-color: #66CCCC;
            text-align: center;
            position: relative;
        }
        #foot {
            width: 100%;
            height: 90px;
            background-color: #CC9933;
            position: relative;
        }
        #wrap .logGet {
            height: 408px;
            width: 368px;
            position: absolute;
            background-color: #FFFFFF;
            top: 20%;
            right: 15%;
        }
        .logC #addbtn {
            width: 100%;
            height: 45px;
            background-color: #ee7700;
            border: none;
            color: white;
            font-size: 18px;
        }
        .logGet .logD.logDtip .p1 {
            display: inline-block;
            font-size: 28px;
            margin-top: 30px;
            width: 86%;
        }
        #wrap .logGet .logD.logDtip {
            width: 86%;
            border-bottom: 1px solid #ee7700;
            margin-bottom: 60px;
            margin-top: 0px;
            margin-right: auto;
            margin-left: auto;
        }
        .logGet .lgD img {
            position: absolute;
            top: 12px;
            left: 8px;
        }
        .logGet .lgD input {
            width: 100%;
            height: 42px;
            text-indent: 2.5rem;
        }
        #wrap .logGet .lgD {
            width: 86%;
            position: relative;
            margin-bottom: 30px;
            margin-top: 30px;
            margin-right: auto;
            margin-left: auto;
        }
        #wrap .logGet .logC {
            width: 86%;
            margin-top: 0px;
            margin-right: auto;
            margin-bottom: 0px;
            margin-left: auto;

        }


        .title {
            font-family: "宋体";
            color: #FFFFFF;
            position: absolute;
            top: 40%;
            left: 50%;
            transform: translate(-50%, -50%);  /* 使用css3的transform来实现 */
            font-size: 34px;
            height: 40px;
            width: 30%;
        }

        .copyright {
            font-family: "宋体";
            color: #FFFFFF;
            position: absolute;
            top: 40%;
            left: 50%;
            transform: translate(-50%, -50%);  /* 使用css3的transform来实现 */
            height: 60px;
            width: 40%;
            text-align:center;
        }


        #foot .copyright .img {
            width: 100%;
            height: 24px;
            position: relative;
        }
        .copyright .img .icon {
            display: inline-block;
            width: 24px;
            height: 24px;
            margin-left: 22px;
            vertical-align: middle;
            background-image: url("${pageContext.request.contextPath}/static/img/3.jpg");
            background-repeat: no-repeat;
            vertical-align: middle;
            margin-right: 5px;
        }

        .copyright .img .icon1 {
            display: inline-block;
            width: 24px;
            height: 24px;
            margin-left: 22px;
            vertical-align: middle;
            background-repeat: no-repeat;
            vertical-align: middle;
            margin-right: 5px;
        }

        #foot .copyright p {
            height: 24px;
            width: 100%;
        }
    </style>
</head>

<body>
<div class="header" id="head">
    <div class="title">茶歇后台管理系统</div>
</div>

<div class="wrap" id="wrap">
    <div class="logGet">
        <!-- 头部提示信息 -->
        <c:if test="${errMsg!=null}">
            <font color="red">${errMsg}</font>
        </c:if>
        <div class="logD logDtip">
            <p class="p1">登录</p>
        </div>
        <form action="${pageContext.request.contextPath}/user/login" method="post">
            <!-- 输入框 -->
            <div class="lgD">
                <img src="${pageContext.request.contextPath}/static/img/5.png" width="20" height="20" alt=""/>
                <input type="text"
                       placeholder="输入用户名" name="userName" />
            </div>
            <div class="lgD">
                <img src="${pageContext.request.contextPath}/static/img/5.png" width="20" height="20" alt=""/>
                <input type="password"
                       placeholder="输入用户密码" name="passWord" />
            </div>
            <div class="logC">
                <%--<button type="submit" value="登录"/>--%>
                <input type="submit" id="addbtn" value="登录" target="_self">
                <%--<a href="${pageContext.request.contextPath}/info/getAll/cookie" target="_self"><button>登 录</button></a>--%>
            </div>
        </form>

    </div>
</div>

<div class="footer" id="foot">
    <div class="copyright">
        <p>Copyright © 2019 Xiyanying.com Inc. All Rights Reserved.</p>
        <div class="img">
            <i class="icon"></i><span>联系邮箱：xiyanying@163.com</span>
        </div>
        <div class="img">
            <i class="icon1"></i><span>联系地址：西安石油大学</span>
        </div>
    </div>
</div>
</body>
</html>
