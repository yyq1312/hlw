<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022/3/19
  Time: 19:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>葫芦娃游戏商城</title>
    <link rel="icon" href="img/lo.png" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="./css/Detailed.css" />
    <script type="text/javascript" src="./Jq/jquery-3.3.1.min.js"></script>
</head>

<body>
<c:forEach var="list" items="${list}">
<div id="kuang">
    <div id="navigation_bar">
        <div id="logo">
            <img src="img/lo.png" style="float: left;">
            <div class="loginName">四个葫芦娃游戏商城</div>
        </div>
        <div id="wenzi">
            <ul>
                <li><a href="/dome/Home_pageServlet?tiaozhuan=1"><b>首页</b></a></li>
                <li><a href="/dome/CommServiceServlet?sousuo="><b>商店</b></a></li>
                <li onclick="k1()"><a href="#"><b>游戏币充值</b></a></li>
                <c:if test="${name1==null}">
                <li><a href="/dome/index.jsp"><b>账号登入</b></a></li>
                <li><a href="/dome/Register.jsp"><b>账号注册</b></a></li>
                </c:if>
            </ul>
        </div>

        <c:if test="${name1!=null}">
            <div class="goudu">
                <div class="touxiang" style="float: left">
                    <img src="${pageContext.request.contextPath}/img/touxiang.webp"/>
                </div>
                <div style="width: 245px;height: 10px;margin-top: 3px;margin-left: 72px;position: absolute;"> <span style="color: white">
                    会员等级：${huiyuan}<p>当前余额：${qian}元</p></span></div>
                <div class="zhuxiao_div">
                    <div class="zhuxiao2" onclick="l1()">注销</div>
                </div>
            </div>
        </c:if>
    </div>
    <div style="width: 100%;height: 76px;background: rgb(30,30,30);"></div>
    <div id="Div01">
        <table id="one">
            <tr>
                <td>
                    <a href="/dome/CommServiceServlet?sousuo=">
                        <div class="frist"><b>精选</b></div>
                    </a>
                </td>
                <td>
                    <a href="/dome/CommServiceServlet?sousuo=">
                        <div class="frist"><b>单机</b></div>
                    </a>
                </td>
                <td>
                    <a href="/dome/CommServiceServlet?sousuo=">
                        <div class="frist"><b>网游</b></div>
                    </a>
                </td>
                <td>
                    <a href="/dome/CommServiceServlet?sousuo=">
                        <div class="to"><b>端手互通</b></div>
                    </a>
                </td>
                <td>
                    <a href="/dome/CommServiceServlet?sousuo=">
                        <div class="to"><b>所有内容</b></div>
                    </a>
                </td>
            </tr>
        </table>
        <table id="noeto">
            <tr>
                <td class="frist">
                    <a href="/dome/DetailedServlet?game=庆余年&img1=img/m4.jpg"><b>庆余年</b></a>
                </td>
                <td class="frist">
                    <a href="/dome/DetailedServlet?game=从军&img1=img/m5.jpg"><b>从军</b></a>
                </td>
                <td class="frist">
                    <a href="/dome/DetailedServlet?game=三国杀&img1=img/m13.jpg"><b>三国杀</b></a>
                </td>
                <td class="frist">
                    <input type="text" placeholder="部落与弯刀1.0" id="Sous" style="padding-left: 10px;padding-top: 2px;"  />
                    <div id="suosoutu">
                        <a href="#"><img src="img/su.png" onclick="f()"></a>
                    </div>
                </td>
            </tr>
        </table>
    </div>

    <div id="Div12" style="background: url(${list.beijing};)">
        <div class="name">
            <span name="game">${list.game}</span>
        </div>
        <div class="ShuLiang">
            <a href="#">
                <span title="购买后可在我的游戏中查看">下载人数：${list.purchase}</span>
            </a>
        </div>
        <div class="NeiR">
            <a href="#">
                <table>
                    <tr>
                        <td><b>游戏详情</b></td>
                    </tr>
                </table>
            </a>
        </div>
    </div>
    <div id="Div13">
        <div class="Shiping">
            <div id="rotation-chart">
                <div id="rotation-chart-one">
                    <img src="${list.lunbotu1}" class="show-image" alt="轮播图1">
                    <img src="${list.lunbotu2}" alt="轮播图2">
                    <img src="${list.lunbotu3}" alt="轮播图3">
                    <img src="${list.lunbotu4}" alt="轮播图4">
                    <img src="${list.lunbotu5}" alt="轮播图5">
                </div>
                <div id="rotation-chart-tu">
                    <img src="${list.lunbotu1}" />
                    <img src="${list.lunbotu2}" />
                    <img src="${list.lunbotu3}" />
                    <img src="${list.lunbotu4}" />
                    <img src="${list.lunbotu5}" />
                </div>
            </div>
        </div>
        <div class="JieShao">
            <table>
                <tr>
                    <td><b>发行日期</b></td>
                    <td>${list.faxing}</td>
                </tr>
                <tr>
                    <td><b>热门度</b></td>
                    <td>
                        <a href="#">第${list.mingci}名</a>
                    </td>
                </tr>
                <tr>
                    <td><b>开发商</b></td>
                    <td>
                        <a href="#">葫芦娃</a>
                    </td>
                </tr>
                <tr>
                    <td><b>运营商</b></td>
                    <td>
                        <a href="#">葫芦娃</a>
                    </td>
                </tr>
            </table>
            <div class="LeiXing" style="color: rgb(255, 127, 28);font-weight: bold;font-size: 25px;">
                <span name="qian">￥${list.jiage}</span>
            </div>
            <div class="Xiazai">
                <div style="float: left;">

                    <input type="button" value="立即购买" style="border: none;" name="goumai" id="anniu1" onclick="m1()"/>
                </div>
                <div>
                    <input type="button" value="添加" style="border: none;" id="anniu2" name="tianjia" onclick="m2()"/>
                </div>
            </div>
        </div>
    </div>
</div>
</div>

<script type="text/javascript">

    function k1() {
        window.open ("/dome//RechargeServlet", "newwindow", "height=600, width=850,top=100,left=300");

    }
    if (${panduan}){
        document.getElementById("anniu1").value="已拥有";
        document.getElementById("anniu1").style.background="-webkit-linear-gradient(left, rgb(80 ,201, 255), rgb(62 ,162 ,255))"
        document.getElementById("anniu2").value="拥有";
        document.getElementById("anniu2").style.backgroundColor="#3da1ff"
        document.getElementById("anniu1").onclick = function(){};
        document.getElementById("anniu2").onclick = function(){};
    }

    if (${panduan1}){
        document.getElementById("anniu1").value="已在购物车";
        document.getElementById("anniu1").style.background="-webkit-linear-gradient(left, rgb(80 ,201, 255), rgb(62 ,162 ,255))"
        document.getElementById("anniu2").value="拥有";
        document.getElementById("anniu2").style.backgroundColor="#3da1ff"
        document.getElementById("anniu1").onclick = function(){};
        document.getElementById("anniu2").onclick = function(){};
    }


    function f(){
        var a=document.getElementById("Sous").value;
        window.location.href = "/dome/CommServiceServlet?sousuo="+a+""
    }
    $('#Sous').bind('keyup', function(event) {

        if (event.keyCode == "13") {
           f();
        }
    });


        function l1() {
            window.location.href="/dome/Home_pageServlet?zhuxiao=zhuxiao"
        }


    var sum = 0;
    var touxiang = document.getElementsByClassName("touxiang")[0];
    touxiang.onmouseover = function(){
        var zhuxiao = document.getElementsByClassName("zhuxiao_div")[0];
        zhuxiao.style.display="inline";
        sum=0;
        zhuxiao.onmouseover = function(){
            sum=1;
            zhuxiao.style.display = "inline";
        }
        zhuxiao.onmouseout = function(){
            zhuxiao.style.display = "none";
        }
    }
    touxiang.onmouseout = function(){
        setTimeout(function(){
            if(sum!=1){
                document.getElementsByClassName("zhuxiao_div")[0].style.display="none";
            }

        },1500)
    }


    function m1(){
        window.location.href="/dome/Detailed1Servlet?game=${list.game}&qian=${list.jiage}&goumai=1"
    }
    function m2(){
        window.location.href="/dome/Detailed1Servlet?game=${list.game}&qian=${list.jiage}"

    }


    $(function(){
        var text;
        $("#Sous").focus(function() {
            text = $(this).attr("placeholder");
            $(this).attr("placeholder","");
        }).blur(function() {
            $(this).attr("placeholder",text);
        });
    })



    $(function() {

        let current = 0;
        var count = 0;
        let length = $("#rotation-chart-one img").length;
        let timer = setInterval(function() {

            $("#rotation-chart-one img").eq(current).animate({
                left: "-=700px"
            }, 500);

            var tu1 = document.getElementById("rotation-chart-tu");

            tu1.getElementsByTagName("img")[next(count)].style.borderColor = "#FFFFFF";
            tu1.getElementsByTagName("img")[count].style.borderColor = "#000000";
            $("#rotation-chart-one img").eq(previous(current)).animate({
                left: "+=1400px"
            }, 500);
            $("#rotation-chart-one img").eq(next(current)).animate({
                left: "-=700px"
            }, 500);

            $("#rotation-chart-one img").eq(next(current)).addClass("show-image");
            $("#rotation-chart-one img").eq(current).addClass("show-image");

            $("#rotation-chart-one img").eq(previous(current)).removeClass("show-image");

            // $("#rotation-chart-one ul li").eq(next(current)).addClass("active").siblings("li").removeClass(
            // 	"active");

            current++;
            count++;

            if(current >= length) {
                current = 0;
                count = 0;

            }
        }, 3000);

    });

    // 设计一个方法，传入当前索引，返回下一个索引
    function next(current) {
        if(current == $("#rotation-chart-one img").length - 1) {
            return 0;
        }
        return ++current;
    }

    function previous(current) {
        if(current == 0) {
            return 4;
        }
        return --current;
    }

</script>
</c:forEach>
</body>

</html>