<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/12/3 0003
  Time: 10:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>葫芦娃游戏商城</title>

    <link rel="icon" href="img/lo.png" type="image/x-icon">
    <script type=" text/javascript" src="./Jq/jquery-3.3.1.min.js"></script>

    <link rel="stylesheet" type="text/css" href="./css/Register.css">
    <script type="text/javascript" src="./js/register.js">
    </script>
</head>

<body>
<form action="/dome/RegisterServlet" method="post">
    <div id="kuang">
        <div id="navigation_bar">
            <div id="logo">
                <img src="img/lo.png" style="float: left;">
                <div class="loginName">四个葫芦娃游戏商城</div>
            </div>
            <div id="wenzi">
                <ul>
                    <li><a href="html/Home_page.jsp"><b>首页</b></a></li>
                    <li><a href="/dome/CommServiceServlet?sousuo="><b>商店</b></a></li>
                    <li><a href="/dome/index.jsp"><b>账号登入</b></a></li>
                    <li><a href="/dome/Register.jsp"><b>账号注册</b></a></li>
                </ul>
            </div>
        </div>
    <div id="kuang3">
        <div id="bgDiv1">
            <div id="ziti">
                <h1>葫芦娃游戏欢迎您的到来</h1>
                <p>您需要注册后才可以进行相关操作</p>
            </div>
            <img src="img/ti.png">
        </div>
        <div id="DIV">
            <div id="zhuce1">欢迎注册葫芦侠
                <p id="zhuce2">快乐一天，乐在游戏。</p></div>
            <div id="bgDIV">
                <div>
                    <input type="text" readonly="true" id="zhanghao" name="zhanghao" >
                </div>
                <div>
                    <input type="password" placeholder="密码：包含大小写和数字，长度在8-10之间" id="mima" onblur="panduan()" name="mima">
                </div>

                <div>
                    <input type="password" placeholder="正确密码：与上一次密码一致" id="quereng" onblur="panduan()" >
                </div>
                <div>
                    <input type="email" placeholder="邮箱：正确的邮箱格式"id="youx" onblur="panduan()" name="youx">
                </div>
                <div style="float: left;">
                    <input type="text" placeholder="请输入验证码" style="width: 200px;" class="input-val"/>
                </div>
                <div>
                    <canvas id="canvas" width="150" height="50" style="margin-left: 10px; margin-top: 15px;"></canvas>
                </div>
                <div id="zhuce">
                    <input type="submit" value="注册" id="btn"/>
                </div>
            </div>
        </div>
    </div>
</div>
</form>
</body>
</html>
