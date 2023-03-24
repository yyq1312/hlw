<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022/3/15
  Time: 19:38
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>葫芦娃游戏商城</title>
    <link rel="stylesheet" type="text/css" href="./css/commodity1.css">
    <script type=" text/javascript" src="./Jq/jquery-3.3.1.min.js"></script>

    <link rel="icon" href="img/lo.png" type="image/x-icon">
</head>
<body>
<form action="/dome/CommServiceServlet" method="get">


<div id="kuang">
    <div style="width: 100%;height: 76px;background: rgb(30,30,30);">
    </div>
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
                    <input type="text" placeholder="部落与弯刀1.0" id="Sous"
                           style="padding-left: 10px;padding-top: 2px;" />
                    <div id="suosoutu" ><img src="img/su.png" id="kuang1" onclick="f()"> </div>
                </td>
            </tr>
        </table>
    </div>

    <div id="a2">
        <div id="b2">
            <div id="a3">
                <input type="text" id="a4" placeholder="输入你想搜索的关键词" />
            </div>
            <div id="a5" onclick="e()">
                <img src="img/su.png" id="a6" style="width: 20px; height: 20px;" />
            </div>
        </div>
    </div>
    <div id="c1">
        <span id="c2">所有内容共0款</span>
    </div>
    <div id="wu">
        <div id="chilun"><img src="img/chilun.png" style="width: 330px;height: 150px;"></div>
        <div id="zi">找不到符合要求的结果</div>
    </div>
</div>
</form>
<script>

    function k1() {
        window.open ("/dome//RechargeServlet", "newwindow", "height=600, width=850,top=100,left=300");

    }

    if(${name1!=null}) {
        function l1() {
            window.location.href = "/dome/Home_pageServlet?zhuxiao=zhuxiao"
        }

        var sum = 0;
        var touxiang = document.getElementsByClassName("touxiang")[0];
        touxiang.onmouseover = function () {
            var zhuxiao = document.getElementsByClassName("zhuxiao_div")[0];
            zhuxiao.style.display = "inline";
            sum = 0;
            zhuxiao.onmouseover = function () {
                sum = 1;
                zhuxiao.style.display = "inline";
            }
            zhuxiao.onmouseout = function () {
                zhuxiao.style.display = "none";
            }
        }
    }



        function e(){
        var a=document.getElementById("a4").value;
        window.location.href = "/dome/CommServiceServlet?sousuo="+a+""
    }
    function f(){
        var a=document.getElementById("Sous").value;
        window.location.href = "/dome/CommServiceServlet?sousuo="+a+""
    }
    $('#a4').bind('keyup', function(event) {
        if (event.keyCode == "13") {
            $('#a5').click();
        }
    });
    $('#Sous').bind('keyup', function(event) {

        if (event.keyCode == "13") {
            $('#kuang1').click();
        }
    });


    $(function() {
        var text;

        $("#Sous").focus(function() {
            text = $(this).attr("placeholder");
            $(this).attr("placeholder", "");
        }).blur(function() {
            $(this).attr("placeholder", text);
        });
        var number;
        $("#a4").focus(function() {
            number = $(this).attr("placeholder");
            $(this).attr("placeholder", "");
            $("#a3").css("border", "1px solid rgb(255,182,9)");
            $("#a3").css("border-right", "0px");
            document.getElementById("a5").style.border = ' 1px solid rgb(255,182,9)';
            document.getElementById("a5").style.borderLeft = '';
        }).blur(function() {
            $(this).attr("placeholder", number);
            $("#a3").css("border", " 1px solid rgba(193 ,193 ,193,0.5)");
            $("#a5").css("borderleft", "1px solid rgba(193 ,193 ,193,0.5)");
            document.getElementById("a5").style.border = '';
        });
    })
</script>
</body>
</html>
