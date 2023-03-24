<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022/3/27
  Time: 14:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>葫芦娃管理系统</title>
    <link rel="icon" href="img/lo.png" type="image/x-icon">
    <link rel="stylesheet" href="./css/style.css">
    <script type="text/jscript" src="./js/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" type="text/css" href="./js/jquery-ui.css"/>
    <script src="./js/jquery-ui.js" type="text/javascript" charset="utf-8"></script>
</head>

<body>
<div class="sidebar" style="float: left;">
    <div class="sidebar__top">
        <div class="top">
            <h2>葫芦娃管理系统</h2>
            <div style="width: 90px;height: 90px;">
                <img src="img/logo.png">
            </div>
        </div>
        <div class="sidebar__nav">
            <ul class="sidebar__menu">
                <a href="javascript:;" onclick="c(0);">
                    <li class="sidebar__menu--item" >
                        <img src="img/zhu.png">
                        <span style="font-size: 18px;position: absolute;top:179px;">个人信息</span>
                    </li>
                </a>
                <a href="javascript:;" onclick="c(1);">
                    <li class="sidebar__menu--item" >
                        <img src="img/shang.png" />
                        <span style="font-size: 18px; position: absolute;top:242px;">商品信息</span>
                    </li>
                </a>
                <a href="javascript:;" onclick="c(2);">
                    <li class="sidebar__menu--item">
                        <img src="img/ke.png" >
                        <span style="font-size: 18px;position: absolute;top:309px;">订单管理</span>
                    </li>
                </a>
            </ul>
        </div>
        <div class="sidebar__profile">
            <div class="avatar">
            </div>
            <div class="content" style="margin-top: 200px; margin-left: 80px;">
                <strong style="color: #FFFFFF;font-family: Maiandra GD;">Hello</strong>
                <p>尊敬的管理员</p>
                <div style="margin-top: 20px;margin-left: 100px;">
                    <a href="#"><img src="img/tui.png" style="width: 20px;height: 20px;"></a>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="a0" style="font-size: 50px;">
    <div class="beijing_div01">
                <div class="div21">
                    <div class="shuru">
                        <input type="text" name="" id="sou1"  placeholder="输入用户账号" class="Sous"/>
                    </div>
                    <div class="sousuo">
                        <input type="button" onclick="sousuo1()" name="" value="搜索" />
                    </div>
                    <input type="hidden" value="0" id="yingcang1">
                    <input type="hidden" value="" id="yingcang11">
                </div>
            <table class="tab_01" border="1" id="tab01">
                <tr>
                    <th>序号</th>
                    <th>用户账号</th>
                    <th>用户密码</th>
                    <th>用户邮箱</th>
                    <th>余额</th>
                    <th>vip等级</th>
                    <th>操作</th>
                </tr>
                <!--迭代这个tr-->
                <c:forEach var="list1" items="${list1}" >
                <tr>
                    <td>${list1.id}</td>
                    <td>${list1.account}</td>
                    <td>${list1.password}</td>
                    <td>${list1.email}</td>
                    <td>${list1.qian}</td>
                    <td>${list1.huiyuan}</td>
                    <td>
                        <input type="button" name="" value="修改" class="xg1" id="xg11"/>
                        <div class="xiugai1">
                            <p>用户账号：<input type="text" id="tianjia1" name="" placeholder="输入用户账号" class="Sous"/></p>
                            <p>用户密码：<input type="text" id="tianjia2" name="" placeholder="输入用户密码" class="Sous"/></p>
                            <p>用户邮箱：<input type="text" id="tianjia3" name="" placeholder="输入用户邮箱" class="Sous"/></p>
                        </div>
                        <input type="button" name="shan1" value="删除"  onclick="a1(${list1.id})" id="diyi"/>
                    </td>
                </tr>
                </c:forEach>

            </table>
            <div class="fenye">
                <input type="button" name="" class="one" value="上一页" id="shang1"/>
                <input type="number" readonly="readonly"  value="1" id="fy1"/>
                <input type="button" name="" class="two" value="下一页" id="xia1"/>
            </div>
        </form>
    </div>
</div>
<div id="a1" style="display:none; size: 50px;font-size: 50px;">
    <div class="beijing_div01">
        <form action="" method="post">
                <div class="div21">
                    <div class="shuru">
                        <input type="text" name=""  id="sou2" placeholder="输入商品名称" class="Sous"/>
                    </div>
                    <div class="sousuo">
                        <input type="button" name="" onclick="sousuo2()" value="搜索" />
                    </div>
                    <div class="xinzen">
                        <input type="button" name="" value="新增商品" id="xinzeng1"/>
                        <div id="xinzengyh1">
                            <p>商品名称：<input type="text" id="game" placeholder="输入商品名称" class="Sous"/></p>
                            <p>商品信息：<input type="text" id="xxi" placeholder="输入商品信息" class="Sous"/></p>
                            <p>商品价格：<input type="text" id="jiage" placeholder="输入商品价格" class="Sous"/></p>
                        </div>
                        <input type="hidden" value="0" id="yingcang2">
                        <input type="hidden" value="" id="yingcang22">
                    </div>
                </div>
            <table class="tab_01" border="1" id="tab02">
                <tr>
                    <th>序号</th>
                    <th>商品名称</th>
                    <th>商品信息</th>
                    <th>商品价格</th>
                    <th>操作</th>
                </tr>
                <c:forEach var="list2" items="${list2}">
                <tr>
                    <td class="p1">${list2.id}</td>
                    <td class="p2">${list2.com_name}</td>
                    <td class="p3">${list2.introduce}</td>
                    <td class="p4">${list2.price}</td>
                    <td>
                        <input type="button" name="" value="修改" class="xg2"/>
                        <div class="xiugai2">
                            <p>商品名称：<input type="text" name="" placeholder="输入商品名称" class="Sous"/></p>
                            <p>商品信息：<input type="text" name="" placeholder="输入商品信息" class="Sous"/></p>
                            <p>商品价格：<input type="text" name="" placeholder="输入商品价格" class="Sous"/></p>
                        </div>
                        <input type="button" name="shan2" value="删除" onclick="a2(${list2.id})" id="dier"/>
                    </td>
                </tr>
                </c:forEach>
            </table>
            <div class="fenye">
                <input type="button" name="" class="one" value="上一页" id="shang2"/>
                <input type="number" readonly="readonly" value="1" id="fy2"/>
                <input type="button" name="" class="two" value="下一页" id="xia2"/>
            </div>
        </form>
    </div>
</div>
<div id="a2" style="display:none; size: 50px;font-size: 50px;">
    <form action="" method="post">

            <div class="div21">
                <div class="shuru">
                    <input type="text" name="" id="sou3" placeholder="输入账号" class="Sous"/>
                </div>
                <div class="sousuo">
                    <input type="button" onclick="sousuo3()" value="搜索" />
                </div>
                <input type="hidden" value="0" id="yingcang3">
                <input type="hidden" value="" id="yingcang33">
            </div>
        <table class="tab_02" border="1" id="tab03">
            <tr>
                <th>购买账号</th>
                <th>购买时间</th>
                <th>购买金额</th>
                <th>订单号</th>
                <th>操作</th>
            </tr>
            <!--迭代这个tr-->
           <c:forEach var="list3" items="${list3}">
            <tr>
                <td>${list3.purchase_account}</td>
                <td>${list3.purchase_time}</td>
                <td>${list3.purchase_amount}</td>
                <td>${list3.order_number}</td>
                <td>
                    <input type="button" name="" value="修改" class="xg3"/>
                    <div class="xiugai3">
                        <p>购买账号：<input type="text" name="" placeholder="输入购买账号" class="Sous"/></p>
                        <p>购买时间：<input type="text" name="" placeholder="输入购买时间" class="Sous"/></p>
                        <p>订单编号：<input type="text" name="" placeholder="输入订单编号" class="Sous"/></p>
                    </div>
                    <input type="button" name="shan3" value="删除" onclick="a3(${list3.id})" />
                </td>
            </tr>
           </c:forEach>
        </table>
        <div class="fenye">
            <input type="button" name="" class="one" value="上一页" id="shang3"/>
            <input type="number" name=""  value="1" id="fy3"/>
            <input type="button" name="" class="two" value="下一页" id="xia3"/>
        </div>
    </form>
</div>
</body>

<script>
    function a1(id) {
        var ID = id;
        var le = $("#tab01 tr").length-1;
        var fy1 = document.getElementById("fy1").value;
        var dele1 = document.getElementById("yingcang1").value;
        var dele2 = document.getElementById("yingcang11").value;
        $.ajax({
            url:"/dome//DeleteidServlet",
            type: "POST",
            data:{
                id:ID,
                fy1:fy1,
                dele1:dele1,
                dele2:dele2,
            },
            dataType: "json",
            success:function (data) {
                var str2 =
                    "<tr>" +
                    "<th>序号</th>" +
                    "<th>用户账号</th>" +
                    "<th>用户密码</th>" +
                    "<th>用户邮箱</th>" +
                    "<th>余额</th>" +
                    "<th>vip等级</th>" +
                    "<th>操作</th>" +
                    "</tr>";
                var len = getJsonLength(data);
                for (var i = 0;i<len;i=i+1) {
                    var str1 ="<tr>" +
                        "<td>"+data[i].id+"</td>" +
                        "<td>"+data[i].account+"</td>" +
                        "<td>"+data[i].password+"</td>" +
                        "<td>"+data[i].email+"</td>" +
                        "<td>"+data[i].qian+"</td>" +
                        "<td>"+data[i].huiyuan+"</td>" +
                        "<td>" +
                        "<input type='button' name='' value='修改' class='xg1' />" +
                        "<div class='xiugai1'>" +
                        "<p>用户账号：<input type='text' name='' placeholder='输入用户账号' class='Sous'/></p>" +
                        "<p>用户密码：<input type='text' name='' placeholder='输入用户密码' class='Sous'/></p>" +
                        "<p>用户邮箱：<input type='text' name='' placeholder='输入用户邮箱' class='Sous'/></p>" +
                        "</div>" +
                        "<input type='button' name='shan1' value='删除'  onclick='a1("+data[i].id+")' id='diyi'/>" +
                        "</td>" +
                        "</tr>";

                    str2 = str2+str1;
                }
                $("#tab01").html(str2)
                $(function() {
                    $('.xg1').button();
                    $('.xiugai1').dialog({
                        autoOpen: false,
                    });
                    $('.xg1').click(function() {
                        $('.xiugai1').dialog('open');
                    });
                });
                $(".xiugai1").dialog({
                    autoOpen: false,
                    closeOnEscape: false,
                    title: '修改用户信息',
                    open: function (event, ui) {
                        $(".ui-dialog-titlebar-close", $(this).parent()).hide();
                    },
                    buttons: {
                        '取消': function() {
                            $('.xiugai1').dialog('close');
                        },
                        '保存': function() {
                            //点击确定时调用的方法
                        },
                    },
                    width: 450,
                    height: 300,
                    show: 'blind',
                    hide: 'blind',
                    draggable: false,
                    resizable: false,
                    modal: true,
                    closeText : '关闭',
                });
                settab();
                if (len!=le&&len==7){
                    document.getElementById("fy1").value = fy1-1;
                }
            },
            error:function (xhr) {
                alert("错误")
            }
        })
        // window.location.href="/dome//Houtai2Servlet?shan1=1&id="+id;
    }
    function a2(id) {
        // window.location.href="/dome//Houtai2Servlet?shan2=2&id="+id;
        var ID = id;
        var le = $("#tab02 tr").length-1;
        var fy1 = document.getElementById("fy2").value;
        var dele1 = document.getElementById("yingcang2").value;
        var dele2 = document.getElementById("yingcang22").value;
        $.ajax({
            url:"/dome//Deleteid1Servlet",
            type: "POST",
            data:{
                id:ID,
                fy1:fy1,
                dele1:dele1,
                dele2:dele2,
            },
            dataType: "json",
            success:function (data) {
                var str2 =
                    "<tr>" +
                    "<th>序号</th>" +
                    "<th>商品名称</th>" +
                    "<th>商品信息</th>" +
                    "<th>商品价格</th>" +
                    "<th>操作</th>" +
                    "</tr>" +
                    "<tr>";
                var len = getJsonLength(data);
                for (var i = 0;i<len;i=i+1) {
                    var str1 =
                        "<td class='p1'>"+data[i].id+"</td>" +
                        "<td class='p2'>"+data[i].com_name+"</td>" +
                        "<td class='p3'>"+data[i].introduce+"</td>" +
                        "<td class='p4'>"+data[i].price+"</td>" +
                        "<td>" +
                        "<input type='button' name='' value='修改' class='xg2'/>" +
                        "<div class='xiugai2'>" +
                        "<p>商品名称：<input type='text' name='' placeholder='输入商品名称' class='Sous'/></p>" +
                        "<p>商品信息：<input type='text' name='' placeholder='输入商品信息' class='Sous'/></p>" +
                        "<p>商品价格：<input type='text' name='' placeholder='输入商品价格' class='Sous'/></p>" +
                        "</div>" +
                        "<input type='button' name='shan2' value='删除' onclick='a2("+data[i].id+")' id='dier'/>" +
                        "</td>" +
                        "</tr>";
                    str2 = str2+str1;
                }
                $("#tab02").html(str2);
                $(function() {
                    $('.xg2').button();
                    $('.xiugai2').dialog({
                        autoOpen: false,
                    });
                    $('.xg2').click(function() {
                        $('.xiugai2').dialog('open');
                    });

                });
                $(".xiugai2").dialog({
                    autoOpen: false,
                    closeOnEscape: false,
                    title: '修改商品信息',
                    open: function (event, ui) {
                        $(".ui-dialog-titlebar-close", $(this).parent()).hide();
                    },
                    buttons: {
                        '取消': function() {
                            $('.xiugai2').dialog('close');
                        },
                        '保存': function() {
                            //点击确定时调用的方法
                        },
                    },
                    width: 450,
                    height: 300,
                    show: 'blind',
                    hide: 'blind',
                    draggable: false,
                    resizable: false,
                    modal: true,
                    closeText : '关闭',
                });
                settab();
                if (len!=le&&len==7){
                    document.getElementById("fy2").value = fy1-1;
                }
            },
            error:function (xhr) {
                alert("错误");
            }
        })
    }
    function a3(id) {
        // window.location.href="/dome//Houtai2Servlet?shan3=3&id="+id;
        var ID = id;
        var le = $("#tab03 tr").length-1;
        var fy1 = document.getElementById("fy3").value;
        var dele1 = document.getElementById("yingcang3").value;
        var dele2 = document.getElementById("yingcang33").value;
        $.ajax({
            url:"/dome//Deleteid2Servlet",
            type: "POST",
            data:{
                id:ID,
                fy1:fy1,
                dele1:dele1,
                dele2:dele2,
            },
            dataType: "json",
            success:function (data) {
                var str2 =
                    "<tr>" +
                    "<th>购买账号</th>" +
                    "<th>购买时间</th>" +
                    "<th>购买金额</th>" +
                    "<th>订单号</th>" +
                    "<th>操作</th>" +
                    "</tr>";
                var len = getJsonLength(data);
                for (var i = 0;i<len;i=i+1) {
                    var str1 =
                        "<tr>" +
                        "<td>"+data[i].purchase_account+"</td>" +
                        "<td>"+data[i].purchase_time+"</td>" +
                        "<td>"+data[i].purchase_amount+"</td>" +
                        "<td>"+data[i].order_number+"</td>" +
                        "<td>" +
                        "<input type='button' name='' value='修改' class='xg3'/>" +
                        "<div class='xiugai3'>" +
                        "<p>购买账号：<input type='text' name='' placeholder='输入购买账号' class='Sous'/></p>" +
                        "<p>购买时间：<input type='text' name='' placeholder='输入购买时间' class='Sous'/></p>" +
                        "<p>订单编号：<input type='text' name='' placeholder='输入订单编号' class='Sous'/></p>" +
                        "</div>" +
                        "<input type='button' name='shan3' value='删除' onclick='a3("+data[i].id+")' />" +
                        "</td>"+
                        "</tr>";
                    str2 = str2+str1;
                }
                $("#tab03").html(str2);
                $(function() {
                    $('.xg3').button();
                    $('.xiugai3').dialog({
                        autoOpen: false,
                    });
                    $('.xg3').click(function() {
                        $('.xiugai3').dialog('open');
                    });


                });
                $(".xiugai3").dialog({
                    autoOpen: false,
                    closeOnEscape: false,
                    title: '修改订单信息',
                    open: function (event, ui) {
                        $(".ui-dialog-titlebar-close", $(this).parent()).hide();
                    },
                    buttons: {
                        '取消': function() {
                            $('.xiugai3').dialog('close');
                        },
                        '保存': function() {
                            //点击确定时调用的方法
                        },
                    },
                    width: 450,
                    height: 300,
                    show: 'blind',
                    hide: 'blind',
                    draggable: false,
                    resizable: false,
                    modal: true,
                    closeText : '关闭',
                });
                settab();
                if (len!=le&&len==7){
                    document.getElementById("fy3").value = fy1-1;
                }
            },
            error:function (xhr) {
                alert("错误");
            }
        })
    }
    function  sousuo1() {
        var a =  document.getElementById("sou1").value;
            $.ajax({
            url : "/dome/HuotaioneServlet",
            type: 'POST',
            data: {
                ming1:a,
            },
            dataType:"json",
            success: function (data) {
                var str2 =
                    "<tr>" +
                    "<th>序号</th>" +
                    "<th>用户账号</th>" +
                    "<th>用户密码</th>" +
                    "<th>用户邮箱</th>" +
                    "<th>余额</th>" +
                    "<th>vip等级</th>" +
                    "<th>操作</th>" +
                    "</tr>";
                var len = getJsonLength(data);
                for (var i = 0;i<len;i=i+1) {
                    var str1 ="<tr>" +
                        "<td>"+data[i].id+"</td>" +
                        "<td>"+data[i].account+"</td>" +
                        "<td>"+data[i].password+"</td>" +
                        "<td>"+data[i].email+"</td>" +
                        "<td>"+data[i].qian+"</td>" +
                        "<td>"+data[i].huiyuan+"</td>" +
                        "<td>" +
                            "<input type='button' name='' value='修改' class='xg1' />" +
                                "<div class='xiugai1'>" +
                                    "<p>用户账号：<input type='text' name='' placeholder='输入用户账号' class='Sous'/></p>" +
                                    "<p>用户密码：<input type='text' name='' placeholder='输入用户密码' class='Sous'/></p>" +
                                    "<p>用户邮箱：<input type='text' name='' placeholder='输入用户邮箱' class='Sous'/></p>" +
                                "</div>" +
                            "<input type='button' name='shan1' value='删除'  onclick='a1("+data[i].id+")' id='diyi'/>" +
                            "</td>" +
                        "</tr>";

                    str2 = str2+str1;
                }
                $("#tab01").html(str2)
                $(function() {
                    $('.xg1').button();
                    $('.xiugai1').dialog({
                        autoOpen: false,
                    });
                    $('.xg1').click(function() {
                        $('.xiugai1').dialog('open');
                    });
                });
                $(".xiugai1").dialog({
                    autoOpen: false,
                    closeOnEscape: false,
                    title: '修改用户信息',
                    open: function (event, ui) {
                        $(".ui-dialog-titlebar-close", $(this).parent()).hide();
                    },
                    buttons: {
                        '取消': function() {
                            $('.xiugai1').dialog('close');
                        },
                        '保存': function() {
                            //点击确定时调用的方法
                        },
                    },
                    width: 450,
                    height: 300,
                    show: 'blind',
                    hide: 'blind',
                    draggable: false,
                    resizable: false,
                    modal: true,
                    closeText : '关闭',
                });
                settab();
                if(a!=null){
                    document.getElementById("yingcang1").value=1;   //1代表有值查询
                }else{
                    document.getElementById("yingcang1").value=0;   //0代表空值查询
                }
                document.getElementById("yingcang11").value = a;
                document.getElementById("fy1").value = 1;
            },
            error:function (xhr) {
                alert("错误");
            },
        })
    }

    function  sousuo2() {
        var a=  document.getElementById("sou2").value;
        $.ajax({
            url : "/dome/HuotaitwoServlet",
            type: 'POST',
            data: {
                ming2:a,
            },
            dataType:"json",
            success: function (data) {
                var str2 =
                    "<tr>" +
                    "<th>序号</th>" +
                    "<th>商品名称</th>" +
                    "<th>商品信息</th>" +
                    "<th>商品价格</th>" +
                    "<th>操作</th>" +
                    "</tr>" +
                    "<tr>";
                var len = getJsonLength(data);
                for (var i = 0;i<len;i=i+1) {
                    var str1 =
                        "<td class='p1'>"+data[i].id+"</td>" +
                        "<td class='p2'>"+data[i].com_name+"</td>" +
                        "<td class='p3'>"+data[i].introduce+"</td>" +
                        "<td class='p4'>"+data[i].price+"</td>" +
                        "<td>" +
                        "<input type='button' name='' value='修改' class='xg2'/>" +
                        "<div class='xiugai2'>" +
                        "<p>商品名称：<input type='text' name='' placeholder='输入商品名称' class='Sous'/></p>" +
                        "<p>商品信息：<input type='text' name='' placeholder='输入商品信息' class='Sous'/></p>" +
                        "<p>商品价格：<input type='text' name='' placeholder='输入商品价格' class='Sous'/></p>" +
                        "</div>" +
                        "<input type='button' name='shan2' value='删除' onclick='a2("+data[i].id+")' id='dier'/>" +
                        "</td>" +
                        "</tr>";
                    str2 = str2+str1;
                }
                $("#tab02").html(str2);
                $(function() {
                    $('.xg2').button();
                    $('.xiugai2').dialog({
                        autoOpen: false,
                    });
                    $('.xg2').click(function() {
                        $('.xiugai2').dialog('open');
                    });

                });
                $(".xiugai2").dialog({
                    autoOpen: false,
                    closeOnEscape: false,
                    title: '修改商品信息',
                    open: function (event, ui) {
                        $(".ui-dialog-titlebar-close", $(this).parent()).hide();
                    },
                    buttons: {
                        '取消': function() {
                            $('.xiugai2').dialog('close');
                        },
                        '保存': function() {
                            //点击确定时调用的方法
                        },
                    },
                    width: 450,
                    height: 300,
                    show: 'blind',
                    hide: 'blind',
                    draggable: false,
                    resizable: false,
                    modal: true,
                    closeText : '关闭',
                });
                settab();
                if(a!=null){
                    document.getElementById("yingcang2").value=1;   //1代表有值查询
                }else{
                    document.getElementById("yingcang2").value=0;   //0代表空值查询
                }
                document.getElementById("yingcang22").value = a;
                document.getElementById("fy2").value= 1;
            },
            error:function (xhr) {
                alert("错误");
            },
        })
    }

    function  sousuo3() {
        var a=  document.getElementById("sou3").value;
        $.ajax({
            url : "/dome/HuotaithereServlet",
            type: 'POST',
            data: {
                ming3:a,
            },
            dataType:"json",
            success: function (data) {
                var str2 =
                    "<tr>" +
                        "<th>购买账号</th>" +
                        "<th>购买时间</th>" +
                        "<th>购买金额</th>" +
                        "<th>订单号</th>" +
                        "<th>操作</th>" +
                    "</tr>";
                var len = getJsonLength(data);
                for (var i = 0;i<len;i=i+1) {
                    var str1 =
                        "<tr>" +
                            "<td>"+data[i].purchase_account+"</td>" +
                            "<td>"+data[i].purchase_time+"</td>" +
                            "<td>"+data[i].purchase_amount+"</td>" +
                            "<td>"+data[i].order_number+"</td>" +
                            "<td>" +
                                "<input type='button' name='' value='修改' class='xg3'/>" +
                                    "<div class='xiugai3'>" +
                                        "<p>购买账号：<input type='text' name='' placeholder='输入购买账号' class='Sous'/></p>" +
                                        "<p>购买时间：<input type='text' name='' placeholder='输入购买时间' class='Sous'/></p>" +
                                        "<p>订单编号：<input type='text' name='' placeholder='输入订单编号' class='Sous'/></p>" +
                                    "</div>" +
                                "<input type='button' name='shan3' value='删除' onclick='a3("+data[i].id+")' />" +
                            "</td>"+
                        "</tr>";
                    str2 = str2+str1;
                }
                $("#tab03").html(str2);
                $(function() {
                    $('.xg3').button();
                    $('.xiugai3').dialog({
                        autoOpen: false,
                    });
                    $('.xg3').click(function() {
                        $('.xiugai3').dialog('open');
                    });


                });
                $(".xiugai3").dialog({
                    autoOpen: false,
                    closeOnEscape: false,
                    title: '修改订单信息',
                    open: function (event, ui) {
                        $(".ui-dialog-titlebar-close", $(this).parent()).hide();
                    },
                    buttons: {
                        '取消': function() {
                            $('.xiugai3').dialog('close');
                        },
                        '保存': function() {
                            //点击确定时调用的方法
                        },
                    },
                    width: 450,
                    height: 300,
                    show: 'blind',
                    hide: 'blind',
                    draggable: false,
                    resizable: false,
                    modal: true,
                    closeText : '关闭',
                });
                settab();
                if(a!=null){
                    document.getElementById("yingcang3").value=1;   //1代表有值查询
                }else{
                    document.getElementById("yingcang3").value=0;   //0代表空值查询
                }
                document.getElementById("yingcang33").value = a;
                document.getElementById("fy3").value= 1;
            },
            error:function (xhr) {
                alert("错误");
            },
        })
    }
    function getJsonLength(jsonData){//获取json长度
        var jsonLength = 0;
        for(var item in jsonData){
            jsonLength++;
        }
        return jsonLength;
    }

    function settab() {
        var table1 = document.getElementsByClassName("tab_01")[0];
        var tr1 = table1.getElementsByTagName("tr").length;
        table1.style.height = ((tr1-1) * 73 +45) + "px";

        var table2 = document.getElementsByClassName("tab_01")[1];
        var tr2 = table2.getElementsByTagName("tr").length;
        table2.style.height = ((tr2-1) * 73 +45) + "px";

        var table2 = document.getElementsByClassName("tab_02")[0];
        var tr2 = table2.getElementsByTagName("tr").length;
        table2.style.height = ((tr2-1) * 73 +45) + "px";
    }


    $("#xia1").click(function () {
        var fy1 = document.getElementById("fy1").value;
        var yc1 = document.getElementById("yingcang1").value;
        var yc11 = document.getElementById("yingcang11").value;
        fy1 = parseInt(fy1)+1;
        $.ajax({
            url : "/dome/FengyeoneServlet",
            type: 'POST',
            data: {
                fy1:fy1,
                yc1:yc1,
                yc11:yc11,
            },
            dataType:"json",
            success: function (data) {
                if (getJsonLength(data)>0){
                    var str2 =
                        "<tr>" +
                        "<th>序号</th>" +
                        "<th>用户账号</th>" +
                        "<th>用户密码</th>" +
                        "<th>用户邮箱</th>" +
                        "<th>余额</th>" +
                        "<th>vip等级</th>" +
                        "<th>操作</th>" +
                        "</tr>";
                    var len = getJsonLength(data);
                    for (var i = 0;i<len;i=i+1) {
                        var str1 ="<tr>" +
                            "<td>"+data[i].id+"</td>" +
                            "<td>"+data[i].account+"</td>" +
                            "<td>"+data[i].password+"</td>" +
                            "<td>"+data[i].email+"</td>" +
                            "<td>"+data[i].qian+"</td>" +
                            "<td>"+data[i].huiyuan+"</td>" +
                            "<td>" +
                            "<input type='button' name='' value='修改' class='xg1' />" +
                            "<div class='xiugai1'>" +
                            "<p>用户账号：<input type='text' name='' placeholder='输入用户账号' class='Sous'/></p>" +
                            "<p>用户密码：<input type='text' name='' placeholder='输入用户密码' class='Sous'/></p>" +
                            "<p>用户邮箱：<input type='text' name='' placeholder='输入用户邮箱' class='Sous'/></p>" +
                            "</div>" +
                            "<input type='button' name='shan1' value='删除'  onclick='a1("+data[i].id+")' id='diyi'/>" +
                            "</td>" +
                            "</tr>";

                        str2 = str2+str1;
                    }
                    $("#tab01").html(str2)
                    $(function() {
                        $('.xg1').button();
                        $('.xiugai1').dialog({
                            autoOpen: false,
                        });
                        $('.xg1').click(function() {
                            $('.xiugai1').dialog('open');
                        });
                    });
                    $(".xiugai1").dialog({
                        autoOpen: false,
                        closeOnEscape: false,
                        title: '修改用户信息',
                        open: function (event, ui) {
                            $(".ui-dialog-titlebar-close", $(this).parent()).hide();
                        },
                        buttons: {
                            '取消': function() {
                                $('.xiugai1').dialog('close');
                            },
                            '保存': function() {
                                //点击确定时调用的方法
                            },
                        },
                        width: 450,
                        height: 300,
                        show: 'blind',
                        hide: 'blind',
                        draggable: false,
                        resizable: false,
                        modal: true,
                        closeText : '关闭',
                    });
                    settab();
                    document.getElementById("fy1").value = fy1;
                }
            },
            error:function (xhr) {
                alert(xhr);
            },
        })
    })


    $("#shang1").click(function () {
        var fy1 = document.getElementById("fy1").value;
        var yc1 = document.getElementById("yingcang1").value;
        var yc11 = document.getElementById("yingcang11").value;
        fy1 = parseInt(fy1)-1;
        if (fy1>=1){
            $.ajax({
                url : "/dome/FengyeoneServlet",
                type: 'POST',
                data: {
                    fy1:fy1,
                    yc1:yc1,
                    yc11:yc11,
                },
                dataType:"json",
                success: function (data) {
                    if (getJsonLength(data)>0) {
                        var str2 =
                            "<tr>" +
                            "<th>序号</th>" +
                            "<th>用户账号</th>" +
                            "<th>用户密码</th>" +
                            "<th>用户邮箱</th>" +
                            "<th>余额</th>" +
                            "<th>vip等级</th>" +
                            "<th>操作</th>" +
                            "</tr>";
                        var len = getJsonLength(data);
                        for (var i = 0;i<len;i=i+1) {
                            var str1 ="<tr>" +
                                "<td>"+data[i].id+"</td>" +
                                "<td>"+data[i].account+"</td>" +
                                "<td>"+data[i].password+"</td>" +
                                "<td>"+data[i].email+"</td>" +
                                "<td>"+data[i].qian+"</td>" +
                                "<td>"+data[i].huiyuan+"</td>" +
                                "<td>" +
                                "<input type='button' name='' value='修改' class='xg1' />" +
                                "<div class='xiugai1'>" +
                                "<p>用户账号：<input type='text' name='' placeholder='输入用户账号' class='Sous'/></p>" +
                                "<p>用户密码：<input type='text' name='' placeholder='输入用户密码' class='Sous'/></p>" +
                                "<p>用户邮箱：<input type='text' name='' placeholder='输入用户邮箱' class='Sous'/></p>" +
                                "</div>" +
                                "<input type='button' name='shan1' value='删除'  onclick='a1("+data[i].id+")' id='diyi'/>" +
                                "</td>" +
                                "</tr>";

                            str2 = str2+str1;
                        }
                        $("#tab01").html(str2)
                        $(function() {
                            $('.xg1').button();
                            $('.xiugai1').dialog({
                                autoOpen: false,
                            });
                            $('.xg1').click(function() {
                                $('.xiugai1').dialog('open');
                            });
                        });
                        $(".xiugai1").dialog({
                            autoOpen: false,
                            closeOnEscape: false,
                            title: '修改用户信息',
                            open: function (event, ui) {
                                $(".ui-dialog-titlebar-close", $(this).parent()).hide();
                            },
                            buttons: {
                                '取消': function() {
                                    $('.xiugai1').dialog('close');
                                },
                                '保存': function() {
                                    //点击确定时调用的方法
                                },
                            },
                            width: 450,
                            height: 300,
                            show: 'blind',
                            hide: 'blind',
                            draggable: false,
                            resizable: false,
                            modal: true,
                            closeText : '关闭',
                        });
                        settab();
                        document.getElementById("fy1").value = fy1;
                    }
                },
                error:function (xhr) {
                    alert(xhr);
                },
            })
        }else {
            return false;
        }
    })


    $("#xia2").click(function () {
        var fy2 = document.getElementById("fy2").value;
        var yc2 = document.getElementById("yingcang2").value;
        var yc22 = document.getElementById("yingcang22").value;
        fy2 = parseInt(fy2)+1;
        $.ajax({
            url : "/dome/FengyetowServlet",
            type: 'POST',
            data: {
                fy2:fy2,
                yc2:yc2,
                yc22:yc22,
            },
            dataType:"json",
            success: function (data) {
                if (getJsonLength(data)>0){
                    var str2 =
                        "<tr>" +
                        "<th>序号</th>" +
                        "<th>商品名称</th>" +
                        "<th>商品信息</th>" +
                        "<th>商品价格</th>" +
                        "<th>操作</th>" +
                        "</tr>" +
                        "<tr>";
                    var len = getJsonLength(data);
                    for (var i = 0;i<len;i=i+1) {
                        var str1 =
                            "<td class='p1'>"+data[i].id+"</td>" +
                            "<td class='p2'>"+data[i].com_name+"</td>" +
                            "<td class='p3'>"+data[i].introduce+"</td>" +
                            "<td class='p4'>"+data[i].price+"</td>" +
                            "<td>" +
                            "<input type='button' name='' value='修改' class='xg2'/>" +
                            "<div class='xiugai2'>" +
                            "<p>商品名称：<input type='text' name='' placeholder='输入商品名称' class='Sous'/></p>" +
                            "<p>商品信息：<input type='text' name='' placeholder='输入商品信息' class='Sous'/></p>" +
                            "<p>商品价格：<input type='text' name='' placeholder='输入商品价格' class='Sous'/></p>" +
                            "</div>" +
                            "<input type='button' name='shan2' value='删除' onclick='a2("+data[i].id+")' id='dier'/>" +
                            "</td>" +
                            "</tr>";
                        str2 = str2+str1;
                    }
                    $("#tab02").html(str2);
                    $(function() {
                        $('.xg2').button();
                        $('.xiugai2').dialog({
                            autoOpen: false,
                        });
                        $('.xg2').click(function() {
                            $('.xiugai2').dialog('open');
                        });

                    });
                    $(".xiugai2").dialog({
                        autoOpen: false,
                        closeOnEscape: false,
                        title: '修改商品信息',
                        open: function (event, ui) {
                            $(".ui-dialog-titlebar-close", $(this).parent()).hide();
                        },
                        buttons: {
                            '取消': function() {
                                $('.xiugai2').dialog('close');
                            },
                            '保存': function() {
                                //点击确定时调用的方法
                            },
                        },
                        width: 450,
                        height: 300,
                        show: 'blind',
                        hide: 'blind',
                        draggable: false,
                        resizable: false,
                        modal: true,
                        closeText : '关闭',
                    });
                    settab();
                    document.getElementById("fy2").value = fy2;
                }else{
                    return false;
                }
            },
            error:function (xhr) {
                alert("错误");
            },
        })
    })
    
    
    $("#shang2").click(function () {
        var fy2 = document.getElementById("fy2").value;
        var yc2 = document.getElementById("yingcang2").value;
        var yc22 = document.getElementById("yingcang22").value;
        fy2 = parseInt(fy2)-1;
        if (fy2>=1){
            $.ajax({
                url : "/dome/FengyetowServlet",
                type: 'POST',
                data: {
                    fy2:fy2,
                    yc2:yc2,
                    yc22:yc22,
                },
                dataType:"json",
                success: function (data) {
                    if (getJsonLength(data)>0){
                        var str2 =
                            "<tr>" +
                            "<th>序号</th>" +
                            "<th>商品名称</th>" +
                            "<th>商品信息</th>" +
                            "<th>商品价格</th>" +
                            "<th>操作</th>" +
                            "</tr>" +
                            "<tr>";
                        var len = getJsonLength(data);
                        for (var i = 0;i<len;i=i+1) {
                            var str1 =
                                "<td class='p1'>"+data[i].id+"</td>" +
                                "<td class='p2'>"+data[i].com_name+"</td>" +
                                "<td class='p3'>"+data[i].introduce+"</td>" +
                                "<td class='p4'>"+data[i].price+"</td>" +
                                "<td>" +
                                "<input type='button' name='' value='修改' class='xg2'/>" +
                                "<div class='xiugai2'>" +
                                "<p>商品名称：<input type='text' name='' placeholder='输入商品名称' class='Sous'/></p>" +
                                "<p>商品信息：<input type='text' name='' placeholder='输入商品信息' class='Sous'/></p>" +
                                "<p>商品价格：<input type='text' name='' placeholder='输入商品价格' class='Sous'/></p>" +
                                "</div>" +
                                "<input type='button' name='shan2' value='删除' onclick='a2("+data[i].id+")' id='dier'/>" +
                                "</td>" +
                                "</tr>";
                            str2 = str2+str1;
                        }
                        $("#tab02").html(str2);
                        $(function() {
                            $('.xg2').button();
                            $('.xiugai2').dialog({
                                autoOpen: false,
                            });
                            $('.xg2').click(function() {
                                $('.xiugai2').dialog('open');
                            });

                        });
                        $(".xiugai2").dialog({
                            autoOpen: false,
                            closeOnEscape: false,
                            title: '修改商品信息',
                            open: function (event, ui) {
                                $(".ui-dialog-titlebar-close", $(this).parent()).hide();
                            },
                            buttons: {
                                '取消': function() {
                                    $('.xiugai2').dialog('close');
                                },
                                '保存': function() {
                                    //点击确定时调用的方法
                                },
                            },
                            width: 450,
                            height: 300,
                            show: 'blind',
                            hide: 'blind',
                            draggable: false,
                            resizable: false,
                            modal: true,
                            closeText : '关闭',
                        });
                        settab();
                        document.getElementById("fy2").value = fy2;
                    }else{
                        return false;
                    }
                },
                error:function (xhr) {
                    alert("错误");
                },
            })
        }
    })
    

    $("#xia3").click(function () {
        var fy3 = document.getElementById("fy3").value;
        var yc3 = document.getElementById("yingcang3").value;
        var yc33 = document.getElementById("yingcang33").value;
        fy3 = parseInt(fy3)+1;
        $.ajax({
            url : "/dome/FengyethereServlet",
            type: 'POST',
            data: {
                fy3:fy3,
                yc3:yc3,
                yc33:yc33,
            },
            dataType:"json",
            success: function (data) {
                if(getJsonLength(data)>0){
                    var str2 =
                        "<tr>" +
                        "<th>购买账号</th>" +
                        "<th>购买时间</th>" +
                        "<th>购买金额</th>" +
                        "<th>订单号</th>" +
                        "<th>操作</th>" +
                        "</tr>";
                    var len = getJsonLength(data);
                    for (var i = 0;i<len;i=i+1) {
                        var str1 =
                            "<tr>" +
                            "<td>"+data[i].purchase_account+"</td>" +
                            "<td>"+data[i].purchase_time+"</td>" +
                            "<td>"+data[i].purchase_amount+"</td>" +
                            "<td>"+data[i].order_number+"</td>" +
                            "<td>" +
                            "<input type='button' name='' value='修改' class='xg3'/>" +
                            "<div class='xiugai3'>" +
                            "<p>购买账号：<input type='text' name='' placeholder='输入购买账号' class='Sous'/></p>" +
                            "<p>购买时间：<input type='text' name='' placeholder='输入购买时间' class='Sous'/></p>" +
                            "<p>订单编号：<input type='text' name='' placeholder='输入订单编号' class='Sous'/></p>" +
                            "</div>" +
                            "<input type='button' name='shan3' value='删除' onclick='a3("+data[i].id+")' />" +
                            "</td>"+
                            "</tr>";
                        str2 = str2+str1;
                    }
                    $("#tab03").html(str2);
                    $(function() {
                        $('.xg3').button();
                        $('.xiugai3').dialog({
                            autoOpen: false,
                        });
                        $('.xg3').click(function() {
                            $('.xiugai3').dialog('open');
                        });


                    });
                    $(".xiugai3").dialog({
                        autoOpen: false,
                        closeOnEscape: false,
                        title: '修改订单信息',
                        open: function (event, ui) {
                            $(".ui-dialog-titlebar-close", $(this).parent()).hide();
                        },
                        buttons: {
                            '取消': function() {
                                $('.xiugai3').dialog('close');
                            },
                            '保存': function() {
                                //点击确定时调用的方法
                            },
                        },
                        width: 450,
                        height: 300,
                        show: 'blind',
                        hide: 'blind',
                        draggable: false,
                        resizable: false,
                        modal: true,
                        closeText : '关闭',
                    });
                    settab();
                    document.getElementById("fy3").value = fy3;
                }
            },
            error:function (xhr) {
                alert("错误");
            },
        })
    })
    
    
    $("#shang3").click(function () {
        var fy3 = document.getElementById("fy3").value;
        var yc3 = document.getElementById("yingcang3").value;
        var yc33 = document.getElementById("yingcang33").value;
        fy3 = parseInt(fy3)-1;
        if (fy3>=1){
            $.ajax({
                url : "/dome/FengyethereServlet",
                type: 'POST',
                data: {
                    fy3:fy3,
                    yc3:yc3,
                    yc33:yc33,
                },
                dataType:"json",
                success: function (data) {
                    if(getJsonLength(data)>0){
                        var str2 =
                            "<tr>" +
                            "<th>购买账号</th>" +
                            "<th>购买时间</th>" +
                            "<th>购买金额</th>" +
                            "<th>订单号</th>" +
                            "<th>操作</th>" +
                            "</tr>";
                        var len = getJsonLength(data);
                        for (var i = 0;i<len;i=i+1) {
                            var str1 =
                                "<tr>" +
                                "<td>"+data[i].purchase_account+"</td>" +
                                "<td>"+data[i].purchase_time+"</td>" +
                                "<td>"+data[i].purchase_amount+"</td>" +
                                "<td>"+data[i].order_number+"</td>" +
                                "<td>" +
                                "<input type='button' name='' value='修改' class='xg3'/>" +
                                "<div class='xiugai3'>" +
                                "<p>购买账号：<input type='text' name='' placeholder='输入购买账号' class='Sous'/></p>" +
                                "<p>购买时间：<input type='text' name='' placeholder='输入购买时间' class='Sous'/></p>" +
                                "<p>订单编号：<input type='text' name='' placeholder='输入订单编号' class='Sous'/></p>" +
                                "</div>" +
                                "<input type='button' name='shan3' value='删除' onclick='a3("+data[i].id+")' />" +
                                "</td>"+
                                "</tr>";
                            str2 = str2+str1;
                        }
                        $("#tab03").html(str2);
                        $(function() {
                            $('.xg3').button();
                            $('.xiugai3').dialog({
                                autoOpen: false,
                            });
                            $('.xg3').click(function() {
                                $('.xiugai3').dialog('open');
                            });


                        });
                        $(".xiugai3").dialog({
                            autoOpen: false,
                            closeOnEscape: false,
                            title: '修改订单信息',
                            open: function (event, ui) {
                                $(".ui-dialog-titlebar-close", $(this).parent()).hide();
                            },
                            buttons: {
                                '取消': function() {
                                    $('.xiugai3').dialog('close');
                                },
                                '保存': function() {
                                    //点击确定时调用的方法
                                },
                            },
                            width: 450,
                            height: 300,
                            show: 'blind',
                            hide: 'blind',
                            draggable: false,
                            resizable: false,
                            modal: true,
                            closeText : '关闭',
                        });
                        settab();
                        document.getElementById("fy3").value = fy3;
                    }else{
                        return false;
                    }
                },
                error:function (xhr) {
                    alert("错误");
                },
            })
        }
    })

</script>
<script src="js/script.js"></script>
<script src="js/dome.js" type="text/javascript" charset="utf-8"></script>
</html>