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
    <meta charset="utf-8">
    <title>糕点首页</title>
    <script type="text/javascript">
        function aa() {
            var bb = "";
            var temp = "";
            var a = document.getElementsByName("ids");
            for (var i = 0; i <a.length;i++){
                if(a[i].checked){
                    temp = a[i].value;
                    bb = temp + "," + bb;
                }
            }
            alert(bb)
            $.get('http://localhost:8080/xyy/tom/pitch', {
                id: bb,
            }, function(req) {
                alert("已添加" + req)
            });
        }
        
        <%--function delOK() {--%>
            <%--if(confirm("确定删除吗")){--%>
                <%--document.getElementById("deleteLink").href="${pageContext.request.contextPath}/info/delete/cookie?id=${tcookie.cId}";--%>
            <%--}else{--%>
                <%--document.getElementById("deleteLink").href="#";--%>
            <%--}--%>
        <%--}--%>
    </script>
    <style  type="text/css">
        *{
            margin: 0px;
            padding: 0px;
        }
        body{
            background-color:black;
        }
        .tab{
            width: 1000px;
            height: auto;
            text-align: center;
            border: 1px solid seashell;
            position: absolute;
            left:60px;
            top: 10%;
        }
        .head{
            background-color: darkkhaki;
        }

        a{
            text-decoration: none;
            color: rgb(141, 67, 13);
        }
        a:link,a::after,a:active{
            color:rgb(141, 67, 13);
        }
        a:hover,a:active{
            color: burlywood;
        }
        .tab tr{
            height: 60px;
        }
        .manager_main_top{
            width: 100%;
            height:40px;
        }
        .manager_main_bottom ul, .left_btn ul,.page_cookie ul{
            list-style-type: none;
        }
        ul li{
            text-decoration: none;
            display: inline;
            margin: 0;
            padding: 0;
        }
        .page_cookie ul li{
            display: inline-block;
        }
        .manager_left{
            width: 200px;
            height: 1150px;
            background-color:black;
            border: 5px solid rgb(48, 46, 46);
            border-radius: 5px;
        }
        .manager_right{
            width: 1100px;
            height: 1150px;
            position: absolute;
            top: 40px;
            left: 210px;
            border-top: 5px solid rgb(48, 46, 46);
            border-bottom: 5px solid rgb(48, 46, 46);
            border-right: 5px solid rgb(48, 46, 46);
            background-color: white;
            border-radius: 5px;
        }
        .top_title{
            width: 350px;
            height: 40px;
            text-align: center;
            font-size: 22px;
            position: absolute;
            top: 5px;
            color: aliceblue;
            padding-left: 20px;
        }
        .top_welcome{
            width: 200px;
            height: 40px;
            color: white;
            text-align: center;
            position: absolute;
            right: 10%;
            padding-top: 13px;
        }
        .left_query{
            width: 123px;
            height: 35px;
            color: rgb(141, 67, 13);
            font-size: 20px;
            position: absolute;
            top: 150px;
            left: 90px;
            text-align: center;
            display: block;
            padding-top: 13px;
            border-radius: 5px;
            background-color: white;
        }
        .left_tomorrow{
            width: 123px;
            height: 35px;
            color: rgb(141, 67, 13);
            font-size: 20px;
            position: absolute;
            top: 250px;
            left: 90px;
            padding-top: 13px;
            text-align: center;
            display: block;
            border-radius: 5px;
            background-color: white;
        }
        .left_advise{
            width: 123px;
            height: 35px;
            color: rgb(141, 67, 13);
            font-size: 20px;
            position: absolute;
            top: 350px;
            left: 90px;
            padding-top: 13px;
            text-align: center;
            display: block;
            border-radius: 5px;
            background-color: white;
        }
        .page_cookie{
            width: 80%;
            height: 50px;
            position: absolute;
            top:1050px;
            left:200px;
        }
        .page_all_link{
            width: 80px;
            height: 30px;
            margin:  10px;
            text-align: center;
            font-size: 18px;
            padding-top: 5px;
            background-color: black;
            border-radius: 3px;
        }
        .page_count_link{
            width: 200px;
            height: 30px;
            margin:  10px;
            text-align: center;
            font-size: 18px;
            padding-top: 6px;
            background-color: black;
            border-radius: 3px;
        }
        .page_cook_link{
            width: 80px;
            height: 30px;
            margin:  10px;
            text-align: center;
            font-size: 18px;
            padding-top: 6px;
            background-color: black;
            border-radius: 3px;
        }
        .page_fruit_link{
            width: 80px;
            height: 30px;
            margin:  10px;
            text-align: center;
            font-size: 18px;
            padding-top: 6px;
            background-color: black;
            border-radius: 3px;
        }
        .page_tea_link{
            width: 80px;
            height: 30px;
            margin:  10px;
            text-align: center;
            font-size: 18px;
            padding-top: 6px;
            background-color: black;
            border-radius: 3px;
        }
        #tomTea_btn{
            border-top-style: none;
            border-right-style: none;
            border-bottom-style: none;
            border-left-style: none;
            width: 80px;
            height: 36px;
            margin: 10px;
            text-align: center;
            font-size: 18px;
            color:  rgb(141, 67, 13);
            background-color: black;
            border-radius: 3px;
        }
        #tomTea_btn:hover {
            color: burlywood;
        }
        .all_title{
            width: 30%;
            height: 50px;
            font-family: 'Times New Roman', Times, serif;
            font-size: 22px;
            color: brown;
            text-align: center;
            position: absolute;
            top:20px;
            left: 30%;
        }
        .left_add{
            width: 123px;
            height: 35px;
            color: rgb(141, 67, 13);
            font-size: 20px;
            position: absolute;
            top: 450px;
            left: 90px;
            padding-top: 13px;
            text-align: center;
            display: block;
            border-radius: 5px;
            background-color: white;
        }
    </style>
</head>
<body>
<div class="manager_main_top">
    <div class="top_title">
        西安石油大学茶歇后台管理
    </div>
    <div class="top_welcome">
        ${userName}Admin,欢迎您！
    </div>
</div>
<div class="manager_main_bottom">
    <ul>
        <li>
            <div class="manager_left">

                <div class="left_btn">
                    <ul>
                        <li>
                            <div class="left_query">
                                <a href="${pageContext.request.contextPath}/info/getAll/cookie">首页</a>
                            </div>
                        </li>
                        <li>
                            <div class="left_tomorrow">
                                <a href="${pageContext.request.contextPath}/tom/cookie/select">明日查看</a>
                            </div>
                        </li>
                        <li>
                            <div class="left_advise">
                                <a href="${pageContext.request.contextPath}/info/advise/display">意见反馈</a>
                            </div>
                        </li>
                        <li>
                            <div class="left_add">
                                <a href="${pageContext.request.contextPath}/info/jump/jsp">添加</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>>
        </li>
        <li>
            <div class="manager_right">
                <div class="all_title">
                    <p><b>库存信息显示</b></p>
                </div>
                <table class="tab">
                    <tr class="head">
                        <td>复选框</td>
                        <td>序号</td>
                        <td>名称</td>
                        <td>介绍</td>
                        <td>图片路径</td>
                        <td>其他</td>
                        <td>类型</td>
                        <td>操作</td>
                    </tr>
                    <c:forEach items="${cookies}" var="tcookie" varStatus="status" >
                        <tr>
                            <td><input type="checkbox" name="ids" value="${tcookie.cId}" /></td>
                            <td>${status.count}</td>
                            <td>${tcookie.cName}</td>
                            <td style="width: 300px;">${tcookie.cIntroduce}</td>
                            <td>${tcookie.cImagePath}</td>
                            <td>${tcookie.cOther}</td>
                            <td>${tcookie.cType}</td>
                            <td>
                                <a href="${pageContext.request.contextPath}/info/get/cookie?id=${tcookie.cId}">查看</a>
                                <a href="${pageContext.request.contextPath}/info/get/update?id=${tcookie.cId}">修改</a>
                                <a href="${pageContext.request.contextPath}/info/delete/cookie?id=${tcookie.cId}" id="deleteLink">删除</a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
                <div class="page_cookie">
                    <ul>
                        <li>
                            <div class="page_all_link">
                                <a href="${pageContext.request.contextPath}/info/getAll/cookie?type=all">所有</a>
                            </div>
                        </li>
                        <li>
                            <div class="page_count_link">
                                <c:if test="${cookies.size()!=0}">
                                    <a href="${pageContext.request.contextPath}/info/getAll/cookie?type=${type}&page=1">首页</a>
                                    <a href="${pageContext.request.contextPath}/info/getAll/cookie?type=${type}&page=${current-1}">上一页</a>
                                    <a href="${pageContext.request.contextPath}/info/getAll/cookie?type=${type}&page=${current+1}">下一页</a>
                                    <a href="${pageContext.request.contextPath}/info/getAll/cookie?type=${type}&page=${pagecount}">尾页</a>
                                </c:if>
                            </div>
                        </li>
                        <li>
                            <div class="page_cook_link">
                                <a href="${pageContext.request.contextPath}/info/getAll/cookie?type=cookie">糕点</a>
                            </div>
                        </li>
                        <li>
                            <div class="page_fruit_link">
                                <a href="${pageContext.request.contextPath}/info/getAll/cookie?type=fruit">水果</a>
                            </div>
                        </li>
                        <li>
                            <div class="page_tea_link">
                                <a href="${pageContext.request.contextPath}/info/getAll/cookie?type=tea">茶点</a>
                            </div>
                        </li>
                        <li>
                            <div>
                               <input type="button" onclick="aa()" id="tomTea_btn" value="提交选中"/>
                            </div>
                        </li>
                    </ul>
                </div>

            </div>
        </li>
    </ul>
</div>
</body>
</html>
