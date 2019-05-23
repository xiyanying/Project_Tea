<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>西安石油大学茶歇网站首页
    </title>
    <!-- <link  href="../css/first_main.css" type="text/css"  rel="stylesheet"/> -->

    <!-- <script type="text/javascript">
        window.onload=function(){
            document.getElementById("mid_bg").innerHTML = '<object type="text/html" data="tea_page_main.html" width="100%" height="100%"></object>';
        }
    </script> -->
    <style type="text/css">
        body{
            padding: 0px;
            margin: 0px;
        }
        .top{
            width: 100%;
            height: 140px;
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
        .img_tit{
            width: 170px;
            position: absolute;
            left: 350px;
            top: 50px;
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
            height: 1330px;
            background-image: url("${pageContext.request.contextPath}/static/img/bg2.jpg");
            background-repeat: no-repeat;
            background-size: cover;
            opacity: 0.7;
        }
        .mid_top{
            width:56%;
            height: 350px;
            position: absolute;
            left: 22%;
            top: 42%;
            opacity: 1;
        }
        .mid_bottom{
            width:70%;
            height: 840px;
            position: absolute;
            left: 22%;
            top: 100%;
            background-color: white;
            opacity: 0.7;
            margin-top: 50px;
        }
        #img{
            width: 100%;
            height:350px;
        }
        .point{
            height:50px;
            position:relative;
            top:-60px;
            width:240px;
            margin:0 auto;
            left:0px;
            z-index:999;
            text-align:center;
            position:absolute;
            top:85%;
            left:35%;
        }
        .point ul li{
            width:20px;
            height:20px;
            margin:0 5px;
            float:left;
            list-style:none;
        }
        .point ul li img{width:20px;height:20px;}
        .point ul li img:hover{cursor:pointer;}
        .mid_left_cookieStory, .mid_left_cookieStory::after,.mid_left_cookieStory::before{
            width: 56%;
            height: 60px;
            padding-top: 20px;
            margin-left: 22%;
            text-align: center;
            font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            font-size: 24px;
        }
        .mid_left_cookieStory:hover{
            text-align: center;
        }
        p{
            padding-left: 25px;
            padding-right: 15px;
            padding-top: 10px;
            font-size: 18px;
        }
    </style>

    <script type="text/javascript">
        var min=1, max=5;
        //设置切换的图片
        var imgList = new Array();
        <c:forEach items="${imgs}" var="img" varStatus="status">
            imgList[${status.count-1}]="${pageContext.request.contextPath}/static/img/${img}";
        </c:forEach>
        <%--imgList[0]="${pageContext.request.contextPath}/static/img/cookie1.jpg";--%>
        <%--imgList[1]="${pageContext.request.contextPath}/static/img/cookie2.jpg";--%>
        <%--imgList[2]="${pageContext.request.contextPath}/static/img/cookie3.jpg";--%>
        <%--imgList[3]="${pageContext.request.contextPath}/static/img/cookie4.jpg";--%>
        <%--imgList[4]="${pageContext.request.contextPath}/static/img/cookie5.jpg";--%>
        //自动变化“小圆点”
        var li_imgList = new Array();
        <c:forEach items="${imgs}" var="img" varStatus="status">
            li_imgList[${status.count-1}]="i${status.count}";
        </c:forEach>
        // li_imgList[0]="i1";
        // li_imgList[1]="i2";
        // li_imgList[2]="i3";
        // li_imgList[3]="i4";
        // li_imgList[4]="i5";
        //鼠标触碰修改
        var liList = new Array();
        <c:forEach items="${imgs}" var="img" varStatus="status">
            liList[${status.count-1}]="p${status.count}";
        </c:forEach>
        // liList[0]="p1";
        // liList[1]="p2";
        // liList[2]="p3";
        // liList[3]="p4";
        // liList[4]="p5";

        //自动循环
        var int=self.setInterval("loop()",2000);
        function loop(){
            var str=document.getElementById("img").src;
            for(var i=0; i<5; i++){
                if(min==5){
                    min=0;
                }
                if(i==min){
                    document.getElementById("img").src=imgList[i];
                    min++;
                    if(i==0){
                        document.getElementById(li_imgList[i]).src="${pageContext.request.contextPath}/static/img/redCircle.jpg";
                        document.getElementById(li_imgList[4]).src="${pageContext.request.contextPath}/static/img/blackCircle.jpg";
                    }else{
                        document.getElementById(li_imgList[i]).src="${pageContext.request.contextPath}/static/img/redCircle.jpg";
                        document.getElementById(li_imgList[i-1]).src="${pageContext.request.contextPath}/static/img/blackCircle.jpg";
                    }
                    break;
                }
            }
        }
        //鼠标触碰显示图片+暂停循环显示
        var a=3;
        function point(obj){
            clearInterval(int);
            //alert(obj.id);
            for(var i=0;i<5;i++){
                if(obj.id==liList[i]){
                    document.getElementById("img").src=imgList[i];
                    min=i+1;
                    document.getElementById(li_imgList[i]).src="${pageContext.request.contextPath}/static/img/redCircle.jpg";
                    for(var a=0;a<5;a++){
                        if(a!=i){
                            document.getElementById(li_imgList[a]).src="${pageContext.request.contextPath}/static/img/blackCircle.jpg";
                        }
                    }
                }
            }
        }
        //鼠标离开继续循环
        function leave(){
            int = setInterval("loop()",5000);
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
                <td><a href="#" class="text"  style="color: brown">首页</a></td>
                <td><a href="${pageContext.request.contextPath}/export/common/teaKinds" class="text">茶歇品类</a></td>
                <td><a href="${pageContext.request.contextPath}/export/common/teaStory" class="text">茶歇故事</a></td>
                <td><a href="${pageContext.request.contextPath}/export/common/tomorrowTea" class="text">明日茶点</a></td>
                <td><a href="${pageContext.request.contextPath}/export/common/help" class="text">帮助中心</a></td>
                <td><a href="${pageContext.request.contextPath}/export/common/login" class="text">管理员登录</a></td>
            </tr>
        </table>
    </div>
</div>
<div class="mid_bg" id="mid_bg">
    <div class="mid_left_cookieStory">
        <p><b><a href="#mid_right">关于蛋糕，您还有什么不知道的呢？</b></p>
    </div>
    <div class="mid_top">
        <a href="#"><img alt="potho" src="${pageContext.request.contextPath}/static/img/cookie1.jpg" id="img"/></a>
        <div class="point" style="display:block;">
            <ul>
                <!-- ul、li实现“小圆点” -->
                <li id="p1" onmouseover="point(this)" onmouseout="leave()" >
                    <img src="${pageContext.request.contextPath}/static/img/redCircle.jpg" alt="" id="i1" />
                </li>
                <li id="p2" onmouseover="point(this)" onmouseout="leave()" >
                    <img src="${pageContext.request.contextPath}/static/img/blackCircle.jpg" alt="" id="i2" />
                </li>
                <li id="p3" onmouseover="point(this)" onmouseout="leave()" >
                    <img src="${pageContext.request.contextPath}/static/img/blackCircle.jpg" alt="" id="i3" />
                </li>
                <li id="p4" onmouseover="point(this)" onmouseout="leave()" >
                    <img src="${pageContext.request.contextPath}/static/img/blackCircle.jpg" alt="" id="i4" />
                </li>
                <li id="p5" onmouseover="point(this)" onmouseout="leave()" >
                    <img src="${pageContext.request.contextPath}/static/img/blackCircle.jpg" alt="" id="i5" />
                </li>
            </ul>
        </div>
    </div>
    <div class="mid_bottom">
        <p style="font-size:22px;"><b>一些你有所不知的小故事~</b></p>
        <p>
            <img src="${pageContext.request.contextPath}/static/img/mainCookie1.jpg" alt="" style="width:200px; height:auto; float:right; padding-left: 10px; padding-right: 20px;">
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            据史料记载，奠定现代烘焙食品工业的先驱者是古代埃及人。埃及人最早发现并采用了发酵的方法来制作烘焙食品
            －面包的，当时古埃及人已知道用谷物制备各种食品，例如将捣碎的小麦粉掺水和马铃薯及盐拌在一起调制成面团，
            然后放在土窑内烘烤，很可能当时有一些面团剩余下来，自然地利用了空气中的野生酵母，产生了发酵，当人们用
            这些剩余的发酵面团制作食品时，惊奇地发现，得到了松软而有弹性的面包。最初埃及人所使用的烤炉是一种用泥
            土筑成圆形烤炉，它上部开口，使空气保持流通，底部生火，待炉内温度达到相当高时，将火熄灭，拨出炉灰，将
            调好的面团放入炉底，利用炉内余热烤熟。用这种炉烤出的面包风味纯正，香气浓郁，很受消费者欢迎，而这种工
            艺也还一直流传至今。
        </p>
        <p>
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            烘焙食品后来传到了希腊。希腊人将烤炉改为圆拱式，上部的空气孔筑得更小而内部容积则增大，使炉内保温性更
            好。希腊人不仅改进了烤炉，而且在制作技术方面也作了很大的改进，他们在制品中加入了牛奶、奶油、奶酪和蜂
            蜜，大大改善了制品的品质和风味。后来，技术又传到了罗马，罗马人又将烤炉筑的更大，而且在烤面包时不需再
            将炉火扑灭，此种烤炉燃烧的部分在中间，而火的四周筑有隔热层，面包在进炉前需要用木板伸入炉内，将其直接
            放在隔层上烘烤，待烤熟后再用木版取出，用这种工艺烤出的面包口味更香，而且炉内容积大了，面包烤的数量也
            增多。
        </p>
        <p>
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            烘焙食品是人们生活所必需的，它具有较高的营养价值，应时适口，无论是面包还是蛋糕在品种上都是丰富多彩，
            不断推陈出新。除传统的普通烘焙食品外，近些年又出现了强化营养，注重保健功能的烘焙制品。例如：荞麦保
            健蛋糕、螺旋藻面包、高纤维面包、全麦面包、钙质面包、全营养面包等，既可以在饭前或饭后作为茶点品味，
            又能作为主食吃饱，满足多种消费者的不同需要。
        </p>
        <p>
            <img src="${pageContext.request.contextPath}/static/img/mainCookie2.jpg" alt="" style="width:200px; height:auto; float:right; padding-left: 10px; padding-right: 20px;">
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            十九世纪初，烘焙技术传到了中国。最初制品品种简单，产量低，生产周期长。改革开放前，中国面包的生产都
            还很不普及，只集中在大中城市生产，农村、乡镇几乎没有烘焙制品的生产，制作工艺和生产设备 也比较简单、
            落后，制品品种花色较少，质量也不稳定。改革开放后，中国烘焙行业发生了突飞猛进的变化，现已普及城乡各
            地，制品的品种繁多，花色各异，产品质量不断提高，生产设备日益更新，新的原材料也层出不穷。
        </p>
    </div>
</div>
<div class="bottom">
    地址：陕西省西安市电子二路     电话：**********
</div>
</body>
</html>