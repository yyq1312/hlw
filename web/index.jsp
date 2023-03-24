<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/12/3 0003
  Time: 10:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>葫芦娃游戏商城</title>
  <link rel="icon" href="img/lo.png" type="image/x-icon">
  <link rel="stylesheet" type="text/css" href="./css/Login.css" />
  <script type="text/javascript" src="./Jq/jquery-3.3.1.min.js"></script>
  <script src="./js/Login.js" type="text/javascript" charset="utf-8"></script>
</head>
<body>
<div id="DIV">
  <div id="bgDiv">
    <form action="/dome/LogServlet" method="post">
      <fieldset>
        <legend>登录</legend>
        <div id="abc01">
          <img src="img/loginErweima.png" />
        </div>
        <div id="abc02">
          <div id="abcDenglu">
            <a href="#"><span>密码登录</span></a>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="#"><span>邮箱登录</span></a>
          </div>
          <div id="YanZheng">
            <div>账&nbsp;&nbsp;&nbsp;&nbsp;号：<input type="text" placeholder="请输入账号" style="border: 1px solid #ddd; height: 30px;" name="username" value="${zhanghao}"/></div>
            <div>密&nbsp;&nbsp;&nbsp;&nbsp;码：<input type="password" placeholder="请输入密码" style="border: 1px solid #ddd;height: 30px; " name="passoword" value="${mima}"/></div>
            <div>
              <div class="code">
                <div style="margin-left: 3px;">
                  验证码：<input type="text" placeholder="请输入验证码" style="width: 90px;" class="input-val"/>
                  <canvas id="canvas" width="100" height="30" style="margin-left: 4px;"></canvas>
                </div>
              </div>
              <div style="width: 300px; height: 50px;margin-left: 11px;">
                <input type="submit" value="登录" class="btn" />
              </div>
              <div class="div_a">
                <a href="Register.jsp" class="ZheChe" style="margin-left: 70px;">用户注册</a>
                &nbsp;&nbsp;<span class="ZheChe">|</span>&nbsp;&nbsp;
                <a href="ForgetPassword.jsp" class="ZheChe">忘记密码？</a>
              </div>
            </div>
          </div>
        </div>
      </fieldset>
    </form>
  </div>
  <script>
  </script>
</div>
</body>
</html>