<%@page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"
        pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>茶歇网茶歇故事页</title>
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
            height: 1800px;
            background-image: url("${pageContext.request.contextPath}/static/img/bg.jpg");
        }
        .mid_left{
            width:240px;
            height: 1765px;
            position: absolute;
            left: 10%;
            top: 25%;
            background-color: white;
            opacity: 0.7;
            border-right: 3px solid gray;
        }
        #mid_right{
            width:800px;
            height: 1765px;
            position: absolute;
            left: 27.9%;
            top: 25%;
            background-color: white;
            opacity: 0.85;
        }
        .mid_left_fruit, .mid_left_fruit::after,.mid_left_fruit::before{
            width: 90%;
            height: 55px;
            margin-left: 20px;
            margin-top: 100px;
            text-align: center;
            font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            color:black;
            font-size: 20px;
            border-top: 1px solid silver;
            border-bottom: 1px solid silver;
        }
        .mid_left_fruit:hover{
            background-color: darkgray;
            text-align: center;
        }
        #first_div{
            width: 600px;
            height: auto;
            position:absolute;
            top: 30px;
            left: 10%;
            border-bottom: 1px solid silver;
        }
        #second_div{
            width: 600px;
            height: auto;
            position:absolute;
            top: 900px;
            left: 10%;
            border-bottom: 1px solid silver;
        }
        #third_div{
            width: 600px;
            height: auto;
            position:absolute;
            top: 1200px;
            left: 10%;
            border-bottom: 1px solid silver;
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
                <td><a href="../../main.jsp" class="text">首页</a></td>
                <td><a href="${pageContext.request.contextPath}/export/common/teaKinds" class="text">茶歇品类</a></td>
                <td><a href="${pageContext.request.contextPath}/export/common/teaStory" class="text" style="color: brown">茶歇故事</a></td>
                <td><a href="${pageContext.request.contextPath}/export/common/tomorrowTea" class="text">明日茶点</a></td>
                <td><a href="${pageContext.request.contextPath}/export/common/help" class="text">帮助中心</a></td>
            </tr>
        </table>
    </div>
</div>
<div class="mid_bg" id="mid_bg">
    <div class="mid_left">
        <div class="mid_left_fruit">
            <img src="${pageContext.request.contextPath}/static/img/star.png" style="width:50px; height:40px; position: absolute;left:30px; padding-top:15px;  float: left;"/>
            <p><b><a href="#first_div">茶歇介绍</a> </b></p>
        </div>
        <div class="mid_left_fruit">
            <img src="${pageContext.request.contextPath}/static/img/star.png" style="width:50px; height:40px; position: absolute;left:30px; padding-top:15px;  float: left;"/>
            <p><b><a href="#second_div">茶歇的分类</a></b></p>
        </div>
        <div class="mid_left_fruit">
            <img src="${pageContext.request.contextPath}/static/img/star.png" style="width:50px; height:40px; position: absolute;left:30px; padding-top:15px;  float: left;"/>
            <p><b><a href="#third_div">茶歇的作用</a></b></p>
        </div>
    </div>
    <div id="mid_right">
        <div id="first_div">
            <p style="font-size:22px;color: rgb(112, 63, 63)" class="title">
                <b>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp茶歇——这是一件让人舒适而自然的生活方式！</b>
            </p>
            <img src="${pageContext.request.contextPath}/static/img/bgCookie.jpg" style="width:600px; height:360px;border-radius: 5px;"/>
            <p style="font-size:22px;">
                <b>茶歇介绍</b>
            </p>
            <p style="font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
                    font-size: 18px;">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp茶歇,茶歇就是工作期间片刻的休闲，是在平时工作和会议进程休息中安排提供一些热饮（以咖啡/茶为主）和一些甜品、水果等，有时也会
                根据员工或会议组织者的要求和季节的变化，增加一部分软饮料（可乐、果汁、矿泉水等）和一些三明治。在这片刻中，大家聚在一起，
                喝茶，聊天，以舒缓身心。它缘自美国心理学家华生最早提出的“Break”即“工间休息”的概念。华生认为，“工间休息”能有效缓解工作压力。
                经常性的工间休息不但能调整不良的生理状态，而且，有助于缓解现代人普遍的心理压力，促进企业内部人际间的交往，实现良好的沟通,
                也有利于自我的身体健康。</p>
            <p>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp个体工作耗竭（一般是由于工作压力大而逐渐发展的，存在典型的疲劳和生理症状的身心状态。）主要表现为个体感受到极度疲劳，产生身
                心症状，工作热情丧失；个体以消极、麻木的态度对待服务对象；个人成就感降低，对自身和工作的意义和价值的评价都降低。工作中若感
                受到身心耗竭，还常常会伴随失眠、头痛、焦虑、抑郁等症状，使得心身濒于或处于“工作耗竭”的状态,茶歇由此得到张扬。</p>
        </div>

        <div id="second_div">
            <p style="font-size:22px;">
                <b>茶歇的分类</b>
            </p>
            <p style="font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
                    font-size: 18px;">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp大致上茶歇的分类是中式与西式：
                中式的饮品包括矿泉水、开水、绿茶、红茶、黑茶、乌龙茶、黄茶、白茶、花茶、人参茶、奶茶、果茶、罐装饮料、微量酒精饮料，
                点心一般是各类糕点、饼干、袋装食品、时令水果、花式果盘等等。
            </p>
            <p style="font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
                    font-size: 18px;">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                西式茶歇饮品一般包括各式咖啡、矿泉水、低度酒精饮料、罐装饮料、红茶、果茶、牛奶、果汁等等，点心有蛋糕、各类甜品、糕点、
                水果、花式果盘，有的还有中式糕点。
            </p>
        </div>

        <div id="third_div">
            <p style="font-size:22px;">
                <b>茶歇的作用</b>
            </p>
            <p style="font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
                        font-size: 18px;">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp茶歇对于一般的大型会议而言可能不需要，而中、小型会议，特别是公司或者组织高层会议，
                会间茶歇是很重要的。研究发现，短休同压力大小、耗竭程度以及身体出现不良状况等有着密切的关系，适当、良好的短休在一定程度上可
                以缓解工作压力。因此，专家倡导建立工间“茶歇”这样的短休习惯非常有必要。这样的安排，能让员工在紧张的工作中放松
                片刻。每次留15－20分钟的时间，每天2－3次，这不但能调整不良的生理和心理状态，还能在“茶歇”中促进内部人际间的良好沟通。
                喝茶具有松弛神经的作用，在“茶歇”中喝一杯花茶或者红茶，能引起精神上舒畅和愉快的感觉，在使人情绪稳定的同时还能使注意力更加集中，
                使工作更有效率。另外，专家建议在“茶歇”中白领还可通过短暂的冥想，比如冥想旅游或冥想美食，或有意识地做一些舒展放松动作，比如微笑、
                简单的肢体放松动作等，来缓解压力，舒展心情。
            </p>
            <p style="font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
                        font-size: 18px;">
                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp此外，专家认为，为了改善工作时资源和工作方法等方面的不足，白领还需要建立广泛而有效
                的人际网络支持，来帮助自己积极面对工作压力。如在轻松的“茶歇”氛围中，同事间沟通和交流也会更加顺畅，这有助于缓解或消除白领办公生
                活中的人际沟通障碍，形成良好的人际沟通网络，从而缓解工作压力。
            </p>
        </div>
    </div>
</div>
<div class="bottom">
    地址：陕西省西安市电子二路     邮编：710300
</div>
</body>
</html>


