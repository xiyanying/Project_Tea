<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: xyy
  Date: 2019/5/16
  Time: 20:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>

<html>
<head>
    <meta charset="utf-8">
    <title>茶歇网意见反馈页</title>
    <%--<%--%>
        <%--String path = request.getContextPath();--%>
        <%--String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";--%>
    <%--%>--%>
    <%--<base href="<%=basePath%>">--%>
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
            height: 900px;
            background-image: url("${pageContext.request.contextPath}/static/img/bg.jpg");
        }
        .mid_left{
            width:240px;
            height: 865px;
            position: absolute;
            left: 10%;
            top: 25%;
            background-color: white;
            opacity: 0.8;
            border-right: 3px solid gray;
        }
        #mid_right{
            width:800px;
            height: 865px;
            position: absolute;
            left: 27.9%;
            top: 25%;
            background-color: white;
            opacity: 0.9;
        }
        .mid_left_help_advise, .mid_left_help_advise::after,.mid_left_help_advise::before{

            height: 25px;
            margin-left: 80px;
            margin-top: 70px;
            text-align: center;
            font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            color:black;
            font-size: 16px;
        }
        .mid_left_help_advise:hover{
            color: cadetblue;
            text-align: center;
        }
        .mid_right_help{
            width: 90%;
            height: 90%;
            margin: 50px;
        }
        input{
            width: 100%;
            height: 40px;
            font-size: 18px;
            text-indent: 1.2rem;
            border-radius: 5px;
        }
        #input_tel{
            width: 45%;
        }
        #input_email{
            width: 45%;
        }
        #submit{
            width: 45%;
        }
        textarea{
            width: 100%;
            height: 130px;
            font-size: 18px;
            text-indent: 1.2rem;
            border-radius: 5px;
        }
    </style>
    <script type="text/javascript">
        window.onload = function(){ //设置当页面加载时执行
            var btn =document.getElementById("sub"); //获取btn元素
            btn.onclick = function() { //给button加上一个点击事件
                var answer = confirm("是否想游览ziksang博客园");//把确认框赋值给answer
                if (answer) //判断是否点击确定
                    window.location = "http://www.cnblogs.com/Ziksang/";
            }
    </script>
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
                <td><a href="${pageContext.request.contextPath}/export/tomcookie/display" class="text">明日茶点</a></td>
                <td><a href="#" class="text" style="color: brown">帮助中心</a></td>
            </tr>
        </table>
    </div>
</div>
<div class="mid_bg" id="mid_bg">
    <div class="mid_left">
        <div class="mid_left_help_advise">
            <p><b><a href="${pageContext.request.contextPath}/export/common/help">帮助中心</a> </b></p>
        </div>
        <div class="mid_left_help_advise">
            <p><b><a href="#"  style="color: brown">意见反馈</a></b></p>
        </div>
    </div>
    <div id="mid_right">
        <div class="mid_right_help">
            <form action="${pageContext.request.contextPath}/export/advise/sumbit" method="POST">
                <table>
                    <tr>
                        <td>
                            <p>
                                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp如果您对茶歇的提供有任何的意见或建议，请及时反馈给我们，请留下您的姓名
                                、电话<br>或者邮箱以便联系您！
                            </p>
                            <c:if test="${error!=null && error.size()>0}">
                                <c:forEach items="${error}" var="res">
                                    <p><font color="red">${res}</font></p>
                                </c:forEach>
                            </c:if>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="text" id="advise_title_text" name="title" placeholder="请在这里填写反馈主题"/>
                        </td>
                    </tr>
                    <tr><td></td></tr>
                    <tr>
                        <td>
                            <textarea name="content" placeholder="请在这里填写反馈意见,您的意见是我们前进的动力！（300字内）" ></textarea>
                        </td>
                    </tr>
                    <tr><td></td></tr>
                    <tr>
                        <td>
                            <input type="text" name="phoneNum" id="input_tel" placeholder="请在这里填写您的电话号码"/>
                        </td>
                    </tr>
                    <tr><td></td></tr>
                    <tr>
                        <td>
                            <input type="text" name="emailAddress" id="input_email" placeholder="请在这里填写您的邮箱"/>
                        </td>
                    </tr>
                    <tr><td></td></tr>
                    <tr><td></td></tr>
                    <tr>
                        <td>
                            <input type="submit" id="submit" onclick="function x() {
                              var result = confirm('是否提交');
                                if(result){

                                }
                            }" value="提交反馈"/>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</div>
<div class="bottom">
    地址：陕西省西安市电子二路     邮编：710300
</div>
</body>
</html>
