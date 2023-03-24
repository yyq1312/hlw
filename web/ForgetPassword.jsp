<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/12/9 0009
  Time: 14:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>葫芦娃游戏商城</title>

    <link rel="icon" href="img/lo.png" type="image/x-icon">
    <script type=" text/javascript" src="./Jq/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" type="text/css" href="./css/forget.css">
    <script type="text/javascript" src="./js/ForgetPassword.js"></script>
</head>
<body>
<form action="/dome/ForgetPasswordServlet" method="post">
    <div id="kuang">
        <div id="navigation_bar">
            <div id="logo">
                <img src="img/lo.png" style="float: left;">
                <div class="loginName">四个葫芦娃游戏商城</div>
            </div>
            <div id="wenzi">
                <ul>
                    <li><a href="/dome/html/Home_page.jsp"><b>首页</b></a></li>
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
                    <p>您需要找回密码后才可以进行相关操作</p>

                </div>
                <img src="img/ti.png">
            </div>
            <div id="DIV">
                <div id="zhuce1">忘记密码
                    <p id="zhuce2">快乐一天，乐在游戏。</p></div>
                <div id="bgDIV">
                    <div>
                        <input type="text" placeholder="请输入账号" id="zhang" name="username" onblur="yanzheng()" >
                    </div>
                    <div>
                        <input type="email" placeholder="请输入邮箱" id="youxiang" style="display: block;" name="email" onblur="yanzheng()">
                    </div>
                    <div id="zhuce">
                        <div id="anniu">
                            <input type="submit" value="验证"  id="btn" onclick="ab1()"/>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
</body>
</html>