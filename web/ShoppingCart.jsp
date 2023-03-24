<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/12/11 0011
  Time: 15:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <title>葫芦娃游戏商城</title>
    <script type=" text/javascript" src="./Jq/jquery-3.3.1.min.js"></script>
    <link rel="icon" href="img/lo.png" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="./css/ShoppingCart.css" />

</head>
<body>
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
    <div style="width:1732px;height: 76px;background: rgb(30,30,30);"></div>
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
                    <input type="text" placeholder="部落与弯刀1.0" id="Sous" style="padding-left: 10px;padding-top: 2px;" />
                    <div id="suosoutu">
                        <a href="#"><img src="img/su.png" onclick="f()"></a>
                    </div>
                </td>
            </tr>
        </table>
    </div>
    <div id="a">购物车暂无内容</div>
    <div id="b" align="center">
    <form action="html/Home_page.jsp">
    <p style="padding-top: 80px;">
        <img src="img/b1.png"/>
    </p>
    <p>暂无内容</p>
    <p style="color: #3C3C3C;">快到商店挑选您喜欢的内容吧</p>
    <P><input type="button" value="去商店看看" id="c"onclick="P1()" style="cursor: pointer"></P>
    </form>
    </div>
<script>

    function k1() {
        window.open ("/dome//RechargeServlet", "newwindow", "height=600, width=850,top=100,left=300");

    }


    function P1(){
        window.location.href="/dome/Home_pageServlet?tiaozhuan=1";
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



    if(${name1!=null}) {
        function l1() {
            window.location.href="/dome/Home_pageServlet?zhuxiao=zhuxiao"
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
        touxiang.onmouseout = function () {
            setTimeout(function () {
                if (sum != 1) {
                    document.getElementsByClassName("zhuxiao_div")[0].style.display = "none";
                }

            }, 1500)
        }
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
</script>
</body>
</html>
