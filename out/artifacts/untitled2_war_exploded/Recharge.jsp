<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022/3/20
  Time: 15:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
</head>
<style type="text/css">
    *{
        margin: 0px;
        padding: 0px;
    }
    .classA{
        width: 776px;
        height: 513px;
        font-size: 18px;
        font-family: "微软雅黑";
    }
    #yue{
        width: 776px;
        height: 51px;
        border-bottom: 1px solid #b5b5b5;

    }
    span.yue{
        display: inline-block;
        margin:12px 65px;
        color: #b5b5b5;
    }
    span.jiage{
        display: inline-block;
        width: 100px;
        margin: 17px 105px;
    }
    span.jiage1{
        display: inline-block;
        width: 100px;
        margin: 17px 100px;
    }
    #jiemian{
        width:776px;
        height:513px;
    }
    table{

        width: 100%;
        height: 373px;
        border-collapse: collapse;
    }
    table tr{
        height: 100px;
    }
    table tr td{
        width: 270px;
    }
    table tr td:nth-of-type(1){
        text-align: right;
        width: 200px;
    }
    .edu{
        width: 242px;
        height: 58px;
        border: 1px solid #CCCCCC;
        border-radius: 7px;
    }
    .edu1{

        width: 242px;
        height: 58px;
        border: 1px solid #CCCCCC;
        border-radius: 7px;
    }
    table input{
        outline: none;
        width: 312px;
        height: 39px;
        border-radius: 7px;
        border-color: #CCCCCC;
        font-size: 16px;
    }
    input[type=submit]{
        cursor: pointer;
        border: none;
        width: 180px;
        height: 50px;
        background-color: #01aef2;
        color: #ffffff;
        border-radius: 5px;
        margin-left: 210px;
        font-size: 16px;
        margin-top: 15px;
    }
    #yanz{
        font-size: 16px;
        color: blueviolet;
    }
    #yanz a{
        text-decoration: none;
    }
    #yanz a:hover{
        text-decoration: underline;
    }
    td>a{
        color: #000000;
    }
    td>a>div:hover{
        background-color: #CCCCCC;
    }
    .mang{
        width: 100%;
        height: 100%;
        text-align: center;
        font-size: 19px;
    }
    input[readonly=readonly]{
        user-select:none;
    }
</style>
<body>
<c:forEach var="list" items="${list}">
 <form method="post" action="/dome//Recharge1Servlet">
<div class="classA">
    <div id="yue">
        <span class="yue">账户可用余额：<span style="color: #ff7600;">${list.qian}</span>元</span>
    </div>
    <div id="jiemian">
        <table>
            <tr>
                <td>需要充值的账号：</td>
                <td colspan="2">
                    <input type="text" readonly="readonly" value="${list.account}"/>
                    <input type="hidden" id="chongzhi" name="mi" value=""/>
                    <span id="yanz">&nbsp;&nbsp;&nbsp;*检查是否为本人账号</span>
                </td>
            </tr>
            <tr>
                <td>选择充值的面额：</td>
                <td>
                    <a href="#" onclick="onmouse(this)">
                        <div class="edu">
                            <span class="jiage">10</span>
                        </div>
                    </a>
                </td>
                <td>
                    <a href="#" onclick="onmouse(this)">
                        <div class="edu">
                            <span class="jiage">30</span>
                        </div>
                    </a>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <a href="#" onclick="onmouse(this)">
                        <div class="edu">
                            <span class="jiage">50</span>
                        </div>
                    </a>
                </td>
                <td>
                    <a href="#" onclick="onmouse(this)"  id="zdy">
                        <div class="edu1">
                            <span class="jiage1">自定义</span>
                        </div>
                    </a>
                </td>
            </tr>
            <tr>
                <td>支付密码：</td>
                <td colspan="2">
                    <input type="password" id="mima" name="mima"/>
                    <span id="yanz">&nbsp;&nbsp;&nbsp;<a onclick="al()">忘记支付密码?</a></span>
                </td>
            </tr>
        </table>
        <input type="submit" value="充值"/>
    </div>
</div>
<script type="text/javascript">
    
    
    function onmouse(obj){
        var arr = document.getElementsByClassName("edu");
        for (var i = 0; i < arr.length; i++) {
            arr[i].style.borderColor="#CCCCCC";
            arr[i].firstElementChild.style.color="#000000";
        }
        obj.firstElementChild.style.borderColor="blueviolet";
        obj.firstElementChild.firstElementChild.style.color="blueviolet";
        if(obj.innerText=="自定义"){
            obj.firstElementChild.innerHTML="<input type='number' class='mang' onblur='zhuanhuan(this)'/>";
            obj.removeAttribute("onclick");
        }else{
            var a = document.getElementsByClassName("edu1")[0].parentElement;
            a.innerHTML="<div class='edu1'><span class='jiage1'>自定义</span></div>";
            a.setAttribute("onclick","onmouse(this)");
            obj.setAttribute("onclick","onmouse(this)");
        }
        document.getElementById("mima").value="";
        document.getElementById("chongzhi").value = obj.innerText;
    }
    function zhuanhuan(obj){
        var str = obj.value;
        if(str==""){
            document.getElementById("chongzhi").value ="";
            obj.parentElement.parentElement.setAttribute("onclick","onmouse(this)");
            obj.parentElement.parentElement.innerHTML="<div class='edu1'><span class='jiage1'>自定义</span></div>";
        }else{
            str = Number.parseInt(str);
            document.getElementById("chongzhi").value =str;
            obj.value=str;
        }
    }
    function al() {
        window.opener.location.href="ForgetPassword.jsp";
        window.close();
    }
</script>
 </form>
</c:forEach>
</body>
</html>
