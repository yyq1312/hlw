<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022/3/13
  Time: 16:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
</head>
<meta charset="UTF-8">
<title>葫芦娃游戏商城</title>
<link rel="icon" href="img/lo.png" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="./css/commodity1.css">
<script type=" text/javascript" src="./Jq/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="./css/commodity.css">
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
                    <div id="suosoutu" ><img src="img/su.png" id="kuang1" onclick="f()"></div>
                </td>
            </tr>
        </table>
    </div>
    <div id="a2">
        <div id="b2">
            <div id="a3" >
                <input type="text" id="a4" placeholder="输入你想搜索的关键词" />
            </div>
            <div id="a5" onclick="e()">
                <img src="img/su.png" id="a6" style="width: 20px; height: 20px;" />
            </div>
        </div>
    </div>
    <div id="c1">
        <span id="c2">所有内容共<span>${size}</span>款</span>
    </div>
    <c:forEach var="list" items="${list}">
      <a href="/dome/DetailedServlet?game=${list.com_name}&img1=${list.picture}">
    <div class="d1" onclick="">
        <input type="hidden" id="id" value="${list.id}">
        <img src="${list.picture}" class="d2" />
        <div class="d3">
            ${list.com_name}
            <p class="d4">${list.introduce}</p>
        </div>
        <div class="d5">￥${list.price}</div>
    </div>
      </a>
    </c:forEach>
    <div class="fenye">
        <div style="height: 20px; width: 150px;margin-left: 18%;">
            当前第<span id="dangqian">${shu}</span>页
        </div>

            <div class="anniu">
                <input type="button" id="zuo" value="<" title="上一页"  onclick="c()" />
                <div style="float: left; margin-top: 4px;margin-left: 20px;color: #757575;font-size: 17px;">跳转至第
                </div>
                <input type="text" class="xianye" value="${shu}" title="1" id="shuzi" />
                <div style="float: left; margin-top: 4px;margin-left: 5px;color: #757575;font-size: 17px;">页
                </div>
                <input type="button" id="queren" value="确认" onclick="d()"/>
                <input type="button" id="you" value=">" title="下一页" onclick="b()"/>
                <input type="hidden" id="length" value="${length}">
            </div>

    </div>
</div>
</form>
</body>
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



        function c(){
        var a= document.getElementById("shuzi").value;
        if (a>1){
            window.location.href="/dome/CommServiceServlet?shang=shang&sousuo=${sousuo}&shuzi=${shu}"
        }
    }
    function b(){
        var a= document.getElementById("shuzi").value;
        var c= document.getElementById("length").value;
        if (a<c-1) {
            window.location.href="/dome/CommServiceServlet?xia=xia&sousuo=${sousuo}&shuzi=${shu}"
        }
    }
    function  d(){
        var a= document.getElementById("shuzi").value;
        var c= document.getElementById("length").value;
        if (a<c) {
            window.location.href = "/dome/CommServiceServlet?queren=queren&shuzi="+a+"&sousuo=${sousuo}"
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
    function g(){
            var a=document.getElementById("id").value;
            window.location.href=""
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
</html>
