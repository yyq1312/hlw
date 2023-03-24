<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/12/11 0011
  Time: 16:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>葫芦娃游戏商城</title>
    <link rel="icon" href="img/lo.png" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="css/Shopping.css">
    <script type=" text/javascript" src="./Jq/jquery-3.3.1.min.js"></script>
</head>
<body>
<form action="/dome/ShoppingServlet?zhanghu=${a2}"  method="post">
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
    <div id="firstDiv">
        <div class="classA" id="classB">
            <div id="Shou">
                <span class="font"><a href="home_page.jsp">商店精选</a> > 购物车</span>
            </div>
            <div class="NeiRong">
                <h2 id="NeiRong">共款内容</h2>
            </div>
            <div id="kuang" class="NeiRong">
                <table width="100%" height="50px" id="first" onclick="set(this)">
               <c:forEach var="list" items="${list}">
                <tr class="change" onclick="setCheckbox(this)">
                    <td>
                        <input type="checkbox" id="chenkBox" value="${list.com_name}" name="fuxian" onclick="onlickCheckbox(this)"/>
                        <input type="hidden"  value="${list.com_name}" name="game" />
                    </td>
                    <td><img src="${list.introduce}"/></td>
                    <td>${list.com_name}</td>
                    <td class="yese">¥<span>${list.price}</span></td>
                </tr>
               </c:forEach>

            </table>
        </div>
            <div style="height: 165px" id="Ding"></div>
    </div>
    <div id="to1">
        <div id="Yong">
            <div style="float: left; margin-left: 30px;">购买至:<span  id="zhanghu" style="font-size: 18px;color: black;font-weight: bold">${a2}</span></div>
            <input type="hidden" id="zongjia" name="zongjia" value="">
            <div style="margin-left: 65%;" id="Jisuan">0款内容合计：-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;优惠：--</div>
        </div>
        <div>
            <div><input type="submit"  name="delete" onclick="lef1()" value="删除商品"  id="delete"/></div>
            <div id="yinggu">应付总额：<span class="jiage" name="jiage" id="jiag">¥0</span></div>
            <div id="dibu"><input type="submit" name="quereng" value="确认购买" id="quereng" /></div>
            <script>
            </script>
        </div>
    </div>
</div>
    <div id="zhan"></div>
</form>
<script type="text/javascript">

    function k1() {
        window.open ("/dome//RechargeServlet", "newwindow", "height=600, width=850,top=100,left=300");

    }

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

    window.onload=function(){
        var  a=   document.getElementsByTagName("tr").length-2;
        document.getElementById("NeiRong").innerHTML="共"+a+"款内容";
        var to = document.getElementById("to1");
        var Ding = document.getElementById("Ding");
        var classB = document.getElementById("classB");
        if(a>=6){
            to.style.position="fixed";
            to.style.bottom="5px";
            to.style.margin="0px 325px";
            document.getElementById("kuang").style.height=(360+(a-3)*120)+"px";
        }else if (a>3&&a<6){
            to.removeAttribute("position");
            to.removeAttribute("bottom");
            document.getElementById("kuang").style.height=(360+(a-3)*120)+"px";
            to.style.margin="10px 325px";
            classB.style.height = (475+(a-3)*120)+"px";
        }else{
            to.removeAttribute("position");
            to.removeAttribute("bottom");
            document.getElementById("kuang").style.height="360px";
            to.style.margin="10px 325px";
            Ding.style.height="0px";
            classB.style.height ="475px";
        }
    }
    function onlickCheckbox(obj) {
        if(obj.checked==1){
            obj.checked = 0//取消选择
        }else{
            obj.checked = 1;//选择
        }
    }
    function setCheckbox(obj){
        if(obj.firstElementChild.firstElementChild.checked==1){
            obj.firstElementChild.firstElementChild.checked = 0//取消选择
            obj.bgColor="#ffffff";
            obj.classList.add("change");
        }else{
            obj.firstElementChild.firstElementChild.checked = 1;//选择
            obj.bgColor="#fef5e5";
            obj.classList.remove("change");
        }
    }
    function set(obj){
        var sum = 0;
        var count = 0;
        arr = obj.children[0].children;
        for (var i = 0; i < arr.length; i++) {
            if(arr[i].firstElementChild.firstElementChild.checked==1){
                sum=parseFloat(sum)+parseFloat(arr[i].lastElementChild.firstElementChild.innerHTML);
                count++;
            }
        }
        if(count>0){
            document.getElementById("quereng").style.backgroundColor="#fec107";
            document.getElementById("quereng").style.color="#000000";
            document.getElementById("delete").style.backgroundColor="#fec107";
            document.getElementById("delete").style.color="#000000";
            document.getElementById("Jisuan").innerHTML=count+"款内容合计：¥"+sum+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;优惠：${zheshu}折";
            document.getElementById("yinggu").innerHTML="应付总额：<span class='jiage'>¥"+(sum*${zheshu}).toFixed(1)+"</span>";
            document.getElementById("zhan").innerHTML="<input type='hidden' value="+(sum*${zheshu}).toFixed(1)+" name='jiaqian' id='zongji'/>"
            document.getElementById("NeiRong").innerHTML="您已选择"+count+"款内容";
            document.getElementById("quereng").style.cursor="pointer";
            document.getElementById("delete").style.cursor="pointer";
            document.getElementById("quereng").style.pointerEvents="auto";
            document.getElementById("delete").style.pointerEvents="auto";
            document.getElementById("zongjia").value=(sum*${zheshu}).toFixed(1);
        }else{
            document.getElementById("quereng").style.backgroundColor="rgb(238,238,238)";
            document.getElementById("quereng").style.color="rgb(193,193,193)";
            document.getElementById("delete").style.backgroundColor="rgb(238,238,238)";
            document.getElementById("delete").style.color="rgb(193,193,193)";
            document.getElementById("Jisuan").innerHTML=count+"款内容合计：--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;优惠：--";
            document.getElementById("yinggu").innerHTML="应付总额：<span class='jiage'>¥"+(sum*${zheshu}).toFixed(1)+"</span>";
            document.getElementById("NeiRong").innerHTML="共"+(document.getElementsByTagName("tr").length-2)+"款内容";
            document.getElementById("quereng").style.cursor="default";
            document.getElementById("delete").style.cursor="default";
            document.getElementById("quereng").style.pointerEvents="none";
            document.getElementById("delete").style.pointerEvents="none";
            document.getElementById("zhan").innerHTML="<input type='hidden' value="+0+" name='jiaqian' id='zongji'/>"
            document.getElementById("zongjia").value=(sum*${zheshu}).toFixed(1);
        }
    }
    $(function() {
        var text;
        $("#Sous").focus(function () {
            text = $(this).attr("placeholder");
            $(this).attr("placeholder", "");
        }).blur(function () {
            $(this).attr("placeholder", text);
        });
    })
    function f(){
        var a=document.getElementById("Sous").value;
        window.location.href = "/dome/CommServiceServlet?sousuo="+a
    };
</script>
</body>
</html>