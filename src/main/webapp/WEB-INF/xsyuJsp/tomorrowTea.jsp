<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"
        pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>茶歇网明日查看页</title>
    <style type="text/css">
        body{
            padding: 0px;
            margin: 0px;
        }
        .top{
            width: 100%;
            height: 120px;
            background-color: rgb(146, 145, 145);
        }
        .top_title{
            width: 500px;
            height: 90px;
            position: absolute;
            left: 100px;
            top: 30px;
        }
        hr{
            height: 60px;
            width: 1px;
        }
        .top_hr{
            position: absolute;
            left: 300px;
            top: 0px;
        }
        .top_title_text{
            width: 130px;
            height: 45px;;
            text-align: center;
            color: white;
            font-size: 28px;
            font-family: "宋体";
            position: absolute;
            left: 300px;
            top: 20px;
            padding-top: 10px;
        }
        .bottom{
            width: 100%;
            height: 35px;
            background-color: rgb(146, 145, 145);
            text-align: center;
            color: white;
        }
        .img_xsyu{
            height: 80px;
        }
        .title_tab{
            width: 500px;
            height: 50px;
            position: absolute;
            left: 550px;
            top: 80px;
        }
        .text{
            color: rgb(247, 241, 241);
            text-decoration-line: none;
            font-family:sans-serif;
            font-size:large;
        }
        a{
            display: block;
            color: black;
            text-decoration: none;
        }
        a:hover,a:active{
            color: rgb(112, 63, 63);
        }

        .mid_bg{
            width: 100%;
            height: 850px;
            background-image: url("${pageContext.request.contextPath}/static/img/bg.jpg");
        }

        #mid_right{
            width:900px;
            height: 814px;
            position: absolute;
            left: 15%;
            top: 25%;
            background-color: white;
            opacity: 0.8;
        }
        .cookie_display{
            width: 90%;
            height: 180px;
            border: 1px solid silver;
            text-align: center;
            font-size: 18px;
            position:relative;
            margin-left: 50px;
            margin-top: 30px;
            border-radius: 5px;
            float: left;
        }
        .tea_page{
            width: 350px;
            height: 50px;
            color: black;
            position: absolute;
            top: 85%;
            margin-top: 20px;
            margin-left: 20%;
        }
        .page_tab{
            width: 300px;
            height: 50px;
            position: absolute;
            left: 150px;
            top:20px;
            margin-top: 20px;
        }
    </style>
</head>
<body>
<div class="top">
    <div class="top_title">
        <img class="img_xsyu" src="${pageContext.request.contextPath}/static/img/xsyu.jpg"/>
        <div class="top_hr">
            <hr>
        </div>
        <div class="top_title_text">
            <b>茶歇网站</b>
        </div>
    </div>

    <div>
        <table class="title_tab">
            <tr>
                <td><a href="${pageContext.request.contextPath}/export/main/image" class="text">首页</a></td>
                <td><a href="${pageContext.request.contextPath}/export/kind/display" class="text">茶歇品类</a></td>
                <td><a href="${pageContext.request.contextPath}/export/common/teaStory" class="text">茶歇故事</a></td>
                <td><a href="${pageContext.request.contextPath}/export/tomcookie/display" style="color: brown" class="text">明日茶点</a></td>
                <td><a href="${pageContext.request.contextPath}/export/common/help" class="text">帮助中心</a></td>
            </tr>
        </table>
    </div>
</div>
<div class="mid_bg" id="mid_bg">

    <div id="mid_right">
        <%--<c:forEach items="${display}" var="dis">--%>
            <%--<div class="fruit1">--%>
                <%--<a href="#">--%>
                    <%--<img src="${dis.cImagePath}"/>--%>
                <%--</a>--%>
                <%--<p>${dis.cName}</p>--%>
            <%--</div>--%>

        <%--</c:forEach>--%>
        <p style="font-size: 20px;margin-left: 50px;margin-top: 30px; font-family: 'Times New Roman', Times, serif;"><b>明日展示</b></p>
            <c:forEach items="${cookies}" var="cook">
                <div class="cookie_display">
                    <div class="cookie_img">
                        <img src="${pageContext.request.contextPath}/static/img/${cook.cImagePath}" alt="" style="width:200px; height:180px;float: left;">
                    </div>
                    <div class="cookie_text">
                        <p><b>
                            ${cook.cName}
                        </b>
                        </p>
                        <p>
                            ${cook.cIntroduce}
                        </p>
                    </div>
                </div>
            </c:forEach>
            <c:if test="${cookies.size()==0}">
                <h2>明日糕点还未能及时更新，请稍等哦。。。</h2>
            </c:if>
            <div class="tea_page">
                <table class="page_tab">
                    <tr>
                        <c:if test="${cookies.size()!=0}">
                            <td><a href="${pageContext.request.contextPath}/export/tomcookie/display?type=${type}&page=1">首页</a></td>
                            <td><a href="${pageContext.request.contextPath}/export/tomcookie/display?type=${type}&page=${current-1}">上一页</a></td>
                            <td><a href="${pageContext.request.contextPath}/export/tomcookie/display?type=${type}&page=${current+1}">下一页</a></td>
                            <td><a href="${pageContext.request.contextPath}/export/tomcookie/display?type=${type}&page=${pagecount}">尾页</a></td>
                        </c:if>
                    </tr>
                </table>
            </div>
    </div>
</div>
<div class="bottom">
    地址：陕西省西安市电子二路     邮编：710300
</div>
</body>
</html>

