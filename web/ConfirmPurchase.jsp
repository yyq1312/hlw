<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/12/27 0027
  Time: 15:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="utf-8" />
    <title>葫芦娃游戏商城</title>
    <link rel="icon" href="img/lo.png" type="image/x-icon">
   <link type="text/css" rel="stylesheet" href="css/ConfirmPurchase.css">
</head>

<body>

<div id="Div">
    <div id="biankuang">
        <div id="shang">
            <div id="tupian">
                <img src="img/c1.png" style="width: 100px"/>
            </div>
            <div style="font-size: 30px; font-weight: bold; margin-top: 10px;">购买成功</div>
        </div>
        <div id="yem">
            <div id="dingwei">
                <div>订单号：<span>${con.order_number}</span></div>
                <div class="a1">购买账号：<span>${con.purchase_account}</span></div>
                <div class="a1">购买时间：<span>${con.purchase_time}</span></div>
                <div class="a1">消费金额：<span>${con.purchase_amount}&nbsp;&nbsp;RMB</span></div>
                <div class="a1">购买游戏：<span>${con1}</span></div>
            </div>

        </div>
        <div id="anniu"><input type="button" value="确定 " id="yangs" style="cursor:pointer;" onclick="a()"></div>
        <script>
            function  a() {
                window.location.href="/dome/ShoppingcartServlet"

            }
        </script>
    </div>
</div>
</body>

</html>