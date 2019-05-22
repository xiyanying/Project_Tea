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
    <title>茶歇网帮助信息页</title>
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
        .img_xsyu {
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
            height: 873px;
            position: absolute;
            left: 10%;
            top: 25%;
            background-color: white;
            opacity: 0.8;
            border-right: 3px solid gray;
        }
        #mid_right{
            width:800px;
            height: 873px;
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
            margin-top: 50px;
        }
        .mid_right_help_one{
            margin-top: 40px;
        }
        .num{
            width: 15px;
            height: 15px;
        }
        #mid_help_one_title:hover{
            color: brown;
        }
    </style>
    <script type="text/javascript">

        function display() {
            alert("反馈成功");
        }
        function showFunc1(){
            if(document.getElementById('mid_help_one_content').style.display == "none")
                document.getElementById('mid_help_one_content').style.display = "block";
            else
                document.getElementById('mid_help_one_content').style.display = "none";
        }
        function showFunc2(){
            if(document.getElementById('mid_help_two_content').style.display == "none")
                document.getElementById('mid_help_two_content').style.display = "block";
            else
                document.getElementById('mid_help_two_content').style.display = "none";
        }
        function showFunc3(){
            if(document.getElementById('mid_help_three_content').style.display == "none")
                document.getElementById('mid_help_three_content').style.display = "block";
            else
                document.getElementById('mid_help_three_content').style.display = "none";
        }
        function showFunc4(){
            if(document.getElementById('mid_help_four_content').style.display == "none")
                document.getElementById('mid_help_four_content').style.display = "block";
            else
                document.getElementById('mid_help_four_content').style.display = "none";
        }
        function showFunc5(){
            if(document.getElementById('mid_help_five_content').style.display == "none")
                document.getElementById('mid_help_five_content').style.display = "block";
            else
                document.getElementById('mid_help_five_content').style.display = "none";
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
                <td><a href="../../main.jsp" class="text">首页</a></td>
                <td><a href="${pageContext.request.contextPath}/export/common/teaKinds" class="text">茶歇品类</a></td>
                <td><a href="${pageContext.request.contextPath}/export/common/teaStory" class="text">茶歇故事</a></td>
                <td><a href="${pageContext.request.contextPath}/export/common/tomorrowTea" class="text">明日茶点</a></td>
                <td><a href="#" class="text" style="color: red">帮助中心</a></td>
            </tr>
        </table>
    </div>
</div>
<div class="mid_bg" id="mid_bg">
    <div class="mid_left">
        <div class="mid_left_help_advise">
            <p><b><a href="#">帮助中心</a> </b></p>
        </div>
        <div class="mid_left_help_advise">
            <p><b><a href="${pageContext.request.contextPath}/export/common/advisepage">意见反馈</a></b></p>
    </div>
    </div>
    <div id="mid_right">
        <div class="mid_right_help">
            <ul>
                <li>
                    <div class="mid_right_help_one">
                        <div id="mid_help_one_title" >
                            <a href="javascript:;" onclick="showFunc1()"><p><img src="${pageContext.request.contextPath}/static/img/num1.jpg" class="num"/> 茶歇网站是用来干什么的？</p></a>
                        </div>
                        <hr style="width:100%;height: 1px;">
                        <div id="mid_help_one_content" style="display:none">
                            <p>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp《茶歇网站》是一个专业的向老师介绍学校内茶歇制度。浏览茶歇供应品类，
                                以供老师们了解的一个平台，平台界面简洁，易用又不失规矩。开发伊始，力争做到切合实际需求，与现代化
                                平台相吻合。为此特意深入了解了茶歇的由来以及每种糕点的营养价值特点，为各教师茶歇之娱提供一份便利。
                            </p>
                        </div>
                    </div>
                </li>

                <li>
                    <div class="mid_right_help_one">
                        <div class="mid_help_two_title">
                            <a href="javascript:;" onclick="showFunc2()"><p><img src="${pageContext.request.contextPath}/static/img/num2.jpg" class="num"/> 茶歇是对于哪些人开放的？</p></a>
                        </div>
                        <hr style="width:100%;height: 1px;">
                        <div id="mid_help_two_content" style="display:none">
                            <p>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp西安石油大学茶歇是为在校任职教师上课之余提供了交流，沟通与歇息的地方！每位任课老师可在规定的时间
                                内在指定的地点进行茶歇！
                            </p>
                        </div>
                    </div>
                </li>

                <li>
                    <div class="mid_right_help_one">
                        <div class="mid_help_three_title">
                            <a href="javascript:;" onclick="showFunc3()"><p><img src="${pageContext.request.contextPath}/static/img/num3.jpg" class="num"/> 茶歇供应的时间，地点？</p></a>
                        </div>
                        <hr style="width:100%;height: 1px;">
                        <div id="mid_help_three_content" style="display:none">
                            <p>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp1.茶歇时间：</p>
                            <p>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp每周周一至周五 早10：00-10：20；下午15：40-16：00</p>
                            <p>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp2.茶歇地点：</p>
                            <p>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp西安石油大学鄠邑校区A教学楼210室/B教学楼210室</p>
                        </div>
                    </div>
                </li>

                <li>
                    <div class="mid_right_help_one">
                        <div class="mid_help_four_title">
                            <a href="javascript:;" onclick="showFunc4()"><p><img src="${pageContext.request.contextPath}/static/img/num4.jpg" class="num"/> 茶歇负责部门及相关负责人？</p></a>
                        </div>
                        <hr style="width:100%;height: 1px;">
                        <div id="mid_help_four_content" style="display:none">
                            <p>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                茶歇的一切准备工作皆由学校内米洛酥蛋糕店完成。
                            </p>
                            <p>
                                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp负责人：张三
                            </p>
                        </div>
                    </div>
                </li>

                <li>
                    <div class="mid_right_help_one">
                        <div class="mid_help_five_title">
                            <a href="javascript:;" onclick="showFunc5()"><p><img src="${pageContext.request.contextPath}/static/img/num5.jpg" class="num"/> 茶歇供应食品品种及其食品安全？</p></a>
                        </div>
                        <hr style="width:100%;height: 1px;">
                        <div id="mid_help_five_content" style="display:none">
                            <p>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                茶歇供应品种均以米洛酥蛋糕店所有食品为准！各类糕点及其详情均会在本平台茶歇品类中进行展示！
                            </p>
                        </div>
                    </div>
                </li>

            </ul>
        </div>
    </div>
</div>
<div class="bottom">
    地址：陕西省西安市电子二路     邮编：710300
</div>
</body>
</html>
