<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/12/7 0007
  Time: 21:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>葫芦娃游戏商城</title>
    <link rel="icon" href="${pageContext.request.contextPath}/img/lo.png" type="image/x-icon">
    <script type=" text/javascript" src="${pageContext.request.contextPath}/Jq/jquery-3.3.1.min.js"></script>
    <link type="text/css" href="${pageContext.request.contextPath}/css/home_page.css" rel="stylesheet" />
</head>
<body bgcolor="#ecebeb">

<div id="kuang">
    <!--
        导航栏
    -->
    <div id="navigation_bar">
        <div id="logo">
            <img src="${pageContext.request.contextPath}/img/logo.png" style="float: left;">
            <div class="loginName">四个葫芦娃游戏商城</div>
        </div>
        <div id="wenzi">
            <ul>
                <li><a href="/dome/html/Home_page.jsp"><b>首页</b></a></li>
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
    <div class="dandanjun">
        <div class="dandanjun_first">
            <a href="/dome/ShoppingcartServlet">
            <img src="${pageContext.request.contextPath}/img/gouwuche1.png"/></a>
        </div>
        <div class="dandanjun_first" onclick="xinyou()">
            <img src="${pageContext.request.contextPath}/img/youxi.png"/>
        </div>
        <div class="dandanjun_first" onclick="houdong()">
            <img src="${pageContext.request.contextPath}/img/liwu.png"/>
        </div>
        <div class="dandanjun_first"  onclick="fanghui()">
            <img src="${pageContext.request.contextPath}/img/houjian.png" style="position: fixed;">
        </div>
    </div>
    <div style="width: 1532px;height: 76px;background: rgb(30,30,30);"></div>
    <div id="Div01">
        <table id="one">
            <tr>
                <td>
                    <a href="#">
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
                        <div class="to">
                            <b>所有内容</b>
                        </div>
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
                    <input type="text" placeholder="部落与弯刀1.0" id="Sous" style="padding-left: 10px;padding-top: 2px;"/>
                    <div id="suosoutu"><a href="#"><img src="${pageContext.request.contextPath}/img/suosoutu.png" onclick="f()" id="kuang1"></a></div>
                </td>
            </tr>
        </table>
    </div>
    <div id="Div02">
        <div style="width: 1500px;height: 500px;">
            <div class="BiaoQian">
                <section>
                    <header>
                        <span style="color: #3C3C3C;"><b>热门分类</b></span>
                    </header>
                    <div class="frcontent">
                        <div class="frcontent-tit"><b>按标签</b></div>
                        <ul class="frcontent-list">
                            <li class="frcontent-item">
                                <img src="${pageContext.request.contextPath}/img/Biaoqian.png"/>
                                <a href="/dome/CommServiceServlet?sousuo=" class="frcontent-item-link">角色扮演</a>
                            </li>
                            <li class="frcontent-item">
                                <img src="${pageContext.request.contextPath}/img/Biaoqian.png"/>
                                <a href="/dome/CommServiceServlet?sousuo=" class="frcontent-item-link">动作冒险</a>
                            </li>
                            <li class="frcontent-item">
                                <img src="${pageContext.request.contextPath}/img/Biaoqian.png"/>
                                <a href="/dome/CommServiceServlet?sousuo=" class="frcontent-item-link">电子竞技</a>
                            </li>
                            <li class="frcontent-item">
                                <img src="${pageContext.request.contextPath}/img/Biaoqian.png"/>
                                <a href="/dome/CommServiceServlet?sousuo=" class="frcontent-item-link">国产</a>
                            </li>
                            <li class="frcontent-item">
                                <img src="${pageContext.request.contextPath}/img/Biaoqian.png"/>
                                <a href="/dome/CommServiceServlet?sousuo=" class="frcontent-item-link">功能游戏</a>
                            </li>
                            <li class="frcontent-item">
                                <img src="${pageContext.request.contextPath}/img/Biaoqian.png"/>
                                <a href="/dome/CommServiceServlet?sousuo=" class="frcontent-item-link">角色扮演</a>
                            </li>
                        </ul>
                    </div>
                    <div class="frcontent">
                        <div class="frcontent-tit"><b>按特性</b></div>
                        <ul class="frcontent-list">
                            <li class="frcontent-item">
                                <img src="${pageContext.request.contextPath}/img/Biaoqian.png"/>
                                <a href="/dome/CommServiceServlet?sousuo=" class="frcontent-item-link">支持端手互通</a>
                            </li>
                            <li class="frcontent-item">
                                <img src="${pageContext.request.contextPath}/img/Biaoqian.png"/>
                                <a href="/dome/CommServiceServlet?sousuo=" class="frcontent-item-link">支持多人联机</a>
                            </li>
                            <li class="frcontent-item">
                                <img src="${pageContext.request.contextPath}/img/Biaoqian.png"/>
                                <a href="/dome/CommServiceServlet?sousuo=" class="frcontent-item-link">支持WG卡牌</a>
                            </li>
                            <li class="frcontent-item">
                                <img src="${pageContext.request.contextPath}/img/Biaoqian.png"/>
                                <a href="/dome/CommServiceServlet?sousuo=" class="frcontent-item-link">支持云游戏</a>
                            </li>
                        </ul>
                    </div>
                </section>
            </div>
            <div class="lunbotu">
                <img src="${pageContext.request.contextPath}/img/qingyunian.gif"class="active" alt="1">
                <img src="${pageContext.request.contextPath}/img/longzhongkuimeng.gif" lt="1">
                <img src="${pageContext.request.contextPath}/img/yizujueqi.gif" alt="1">
                <img src="${pageContext.request.contextPath}/img/mipidamaoxian.gif"alt="1">
                <img src="${pageContext.request.contextPath}/img/benghuai3.gif" alt="1">
                <img src="${pageContext.request.contextPath}/img/xiaoaojianghu.gif" alt="1">
                <img src="${pageContext.request.contextPath}/img/cf.gif" alt="1">
                <img src="${pageContext.request.contextPath}/img/yinxionglianmeng.webp" alt="1">
                <ul class="lunbotu-ul">
                    <li onclick="getvalue(this)" class="lunbotu-ul-li" id="Active" value="0"><span ondblclick="x1()"><b>庆余年</b></span></li>
                    <li onclick="getvalue(this)" class="lunbotu-ul-li" value="1"><span ondblclick="x2()"><b>笼中窥梦</b></span></li>
                    <li onclick="getvalue(this)" class="lunbotu-ul-li" value="2"><span ondblclick="x3()"><b>蚁族崛起</b></span></li>
                    <li onclick="getvalue(this)" class="lunbotu-ul-li" value="3"><span ondblclick="x4()"><b>米皮大冒险</b></span></li>
                    <li onclick="getvalue(this)" class="lunbotu-ul-li" value="4"><span ondblclick="x5()"><b>崩坏3</b></span></li>
                    <li onclick="getvalue(this)" class="lunbotu-ul-li" value="5"><span ondblclick="x6()"><b>笑傲江湖OL</b></span></li>
                    <li onclick="getvalue(this)" class="lunbotu-ul-li" value="6"><span ondblclick="x7()"><b>穿越火线+HD</b></span></li>
                    <li onclick="getvalue(this)" class="lunbotu-ul-li" value="7"><span ondblclick="x8()"><b>英雄联盟</b></span></li>
                </ul>
            </div>
        </div>
        <div class="DaKuang">
            <div class="xinyou">
                <div class="div_xinyou">新游发布</div>
                <div class="div_input">
                    <div class="div_gengduo">
                        <img src="${pageContext.request.contextPath}/img/shoubing.png"/>
                        <span><b>更多新游</b></span>
                    </div>
                </div>
            </div>
            <div class="youxijianjie">
                <div class="riqi">
                    <div class="riqi_time"><b>03.04</b></div>
                    <div class="riqi_time"><b>03.10</b></div>
                    <div class="riqi_time"><b>03.17</b></div>
                    <div class="riqi_time"><b>03.25</b></div>
                    <div class="riqi_time"><b>03.31</b></div>
                </div>
            </div>

            <div class="youxitupian">
                <a href="/dome/DetailedServlet?game=米皮大冒险：梦境&img1=img/m3.jpg">
                <div class="tupian1">
                    <div class="imgaes1">
                        <img src="${pageContext.request.contextPath}/img/xinyou1.jpg"/>
                    </div>
                    <div class="yingcang">
                        <div style="width: 150px;height: 20px;margin-left: 10px;">
                            <p style="display: block;"><b>米皮大冒险：梦境</b></p>
                        </div>
                        <div style="width: 150px;height: 30px;margin-left: 10px;">
                            <img src="${pageContext.request.contextPath}/img/fenxiang.png"/>
                            <span>分享游戏</span>
                        </div>
                        <div style="width: 150px;height: 30px;margin-left: 10px;">
                            <img src="${pageContext.request.contextPath}/img/guanzu.png"/>
                            <span style="font-size: 13px;">3.1w人关注</span>
                        </div>
                        <div class="jinhoudong1">
                            <div class="jinhoudong1_text">前往活动</div>
                        </div>
                        <div class="xiangqing1">
                            <div class="xiangqing1_text">应用详情</div>
                        </div>
                    </div>
                </div>
            </a>

                <a href="/dome/DetailedServlet?game=避难所：生存&img1=img/m6.png">
                <div class="tupian2_5">
                    <div class="imgaes">
                        <img src="${pageContext.request.contextPath}/img/xinyou2.png"/>
                    </div>
                    <div class="yingcang1">
                        <div style="width: 150px;height: 20px;margin-left: 10px;">
                            <p style="display: block;"><b>避难所：生存</b></p>
                        </div>
                        <div style="width: 150px;height: 30px;margin-left: 10px;">
                            <img src="${pageContext.request.contextPath}/img/fenxiang.png"/>
                            <span>分享游戏</span>
                        </div>
                        <div style="width: 150px;height: 30px;margin-left: 10px;">
                            <img src="${pageContext.request.contextPath}/img/guanzu.png"/>
                            <span style="font-size: 13px;">7.2w人关注</span>
                        </div>
                        <div class="jinhoudong">
                            <div class="jinhoudong_text">前往活动</div>
                        </div>
                        <div class="xiangqing">
                            <div class="xiangqing_text">应用详情</div>
                        </div>
                    </div>
                </div>
                </a>
                <a href="/dome/DetailedServlet?game=巫泡&img1=img/m8.jpg">
                <div class="tupian2_5">
                    <div class="imgaes">
                        <img src="${pageContext.request.contextPath}/img/xinyou3.jpg"/>
                    </div>
                    <div class="yingcang1">
                        <div style="width: 150px;height: 20px;margin-left: 10px;">
                            <p style="display: block;"><b>巫泡</b></p>
                        </div>
                        <div style="width: 150px;height: 30px;margin-left: 10px;">
                            <img src="${pageContext.request.contextPath}/img/fenxiang.png"/>
                            <span>分享游戏</span>
                        </div>
                        <div style="width: 150px;height: 30px;margin-left: 10px;">
                            <img src="${pageContext.request.contextPath}/img/guanzu.png"/>
                            <span style="font-size: 13px;">2.5w人关注</span>
                        </div>
                        <div class="jinhoudong">
                            <div class="jinhoudong_text">前往活动</div>
                        </div>
                        <div class="xiangqing">
                            <div class="xiangqing_text">应用详情</div>
                        </div>
                    </div>
                </div>
                </a>
                <a href="/dome/DetailedServlet?game=蚁族崛起&img1=img/m2.jpg">
                <div class="tupian2_5">
                    <div class="imgaes">
                        <img src="${pageContext.request.contextPath}/img/xinyou4.jpg"/>
                    </div>
                    <div class="yingcang1">
                        <div style="width: 150px;height: 20px;margin-left: 10px;">
                            <p style="display: block;"><b>蚁族崛起</b></p>
                        </div>
                        <div style="width: 150px;height: 30px;margin-left: 10px;">
                            <img src="${pageContext.request.contextPath}/img/fenxiang.png"/>
                            <span>分享游戏</span>
                        </div>
                        <div style="width: 150px;height: 30px;margin-left: 10px;">
                            <img src="${pageContext.request.contextPath}/img/guanzu.png"/>
                            <span style="font-size: 13px;">6.3w人关注</span>
                        </div>
                        <div class="jinhoudong">
                            <div class="jinhoudong_text">前往活动</div>
                        </div>
                        <div class="xiangqing">
                            <div class="xiangqing_text">应用详情</div>
                        </div>
                    </div>
                </div>
                </a>
                <a href="/dome/DetailedServlet?game=从军&img1=img/img/m5.jpg">
                <div class="tupian2_5">
                    <div class="imgaes">
                        <img src="${pageContext.request.contextPath}/img/xinyou5.jpg"/>
                    </div>
                    <div class="yingcang1">
                        <div style="width: 150px;height: 20px;margin-left: 10px;">
                            <p style="display: block;"><b>从军</b></p>
                        </div>
                        <div style="width: 150px;height: 30px;margin-left: 10px;">
                            <img src="${pageContext.request.contextPath}/img/fenxiang.png"/>
                            <span>分享游戏</span>
                        </div>
                        <div style="width: 150px;height: 30px;margin-left: 10px;">
                            <img src="${pageContext.request.contextPath}/img/guanzu.png"/>
                            <span style="font-size: 13px;">5.2w人关注</span>
                        </div>
                        <div class="jinhoudong">
                            <div class="jinhoudong_text">前往活动</div>
                        </div>
                        <div class="xiangqing">
                            <div class="xiangqing_text">应用详情</div>
                        </div>
                    </div>
                </div>
                </a>
            </div>
        </div>
        <div class="Kuang_fabu">
            <div class="fabu">
                <div class="div_fabu">最新活动</div>
            </div>
            <div class="huodong">
                <div class="tu_left" onclick="z1()">
                    <img src="${pageContext.request.contextPath}/img/yizujueqi.webp"/>
                    <div class="tu_left_text">
                        <div style="color: #D2D2D2;font-size: 14px;">蚁族崛起</div>
                        <div style="color: #FFFFFF;font-size: 18px;">登录游戏抽iPad Air</div>
                    </div>
                </div>
                <div class="tu_top_rigth" onclick="z2()">
                    <img src="${pageContext.request.contextPath}/img/jizhan2.jpg"/>
                    <div class="tu_rigth">
                        <div style="color: #D2D2D2;font-size: 14px;">剧情游戏专题</div>
                        <div style="color: #FFFFFF;font-size: 15px;">宅家煲剧的更多选择</div>
                    </div>
                </div>
                <div class="tu_top_left" onclick="z3()">
                    <img src="${pageContext.request.contextPath}/img/cf.jpg"/>
                    <div class="tu_rigth">
                        <div style="color: #D2D2D2;font-size: 14px;">穿越火线+HD高清大区</div>
                        <div style="color: #FFFFFF;font-size: 15px;">专属动效武器 一局免费领</div>
                    </div>
                </div>
                <div class="tu_button_rigth" onclick="z4()">
                    <img src="${pageContext.request.contextPath}/img/sangousha.jpg"/>
                    <div class="tu_rigth">
                        <div style="color: #D2D2D2;font-size: 14px;">三国杀</div>
                        <div style="color: #FFFFFF;font-size: 15px;">时值乱世，当出奇才——庞德公</div>
                    </div>
                </div>
                <div class="tu_button_left" onclick="z5()">
                    <img src="${pageContext.request.contextPath}/img/wendao.jpg"/>
                    <div class="tu_rigth">
                        <div style="color: #D2D2D2;font-size: 14px;">问道</div>
                        <div style="color: #FFFFFF;font-size: 15px;">共战新服数码元宝乐享不停</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="daohang_Kuang">
            <div class="daohang">
                <div class="daohang_text">
                    <div class="text_left">
                        <div class="tou">下载客户端</div>
                        <div class="wei">
                            <div class="wei_button">
                                <img src="${pageContext.request.contextPath}/img/win.png"/>
                                <span>Windows版</span>
                            </div>
                            <div class="wei_button">
                                <img src="${pageContext.request.contextPath}/img/mac.png"/>
                                <span>Mac版（测试版）</span>
                            </div>
                        </div>
                    </div>
                    <div class="text_middle ">
                        <div class="tou">官方渠道</div>
                        <div class="wei">
                            <div class="wei_button">
                                <img src="${pageContext.request.contextPath}/img/weixing.png"/>
                                <span>微信</span>
                            </div>
                            <div class="wei_button">
                                <img src="${pageContext.request.contextPath}/img/weibo.png"/>
                                <span>微博</span>
                            </div>
                            <div class="wei_button">
                                <img src="${pageContext.request.contextPath}/img/bilibili-line.png"/>
                                <span>bilibili</span>
                            </div>
                        </div>
                    </div>
                    <div class="text_rigth">
                        <div class="tou">友情链接</div>
                        <div class="wei">
                            <div class="wei_button" style="width: 200px;">
                                <span style="margin-left: 0px;">INDIENOVA</span>
                                <span>腾讯GWB</span>
                            </div>
                            <div class="wei_button" style="width: 200px;">
                                <span style="margin-left: 0px;">腾讯动漫</span>
                                <span style="margin-left: 31px;">腾讯视频</span>
                            </div>
                        </div>
                    </div>
                    <div class="daohang_login">
                        <div class="login_img">
                            <img src="${pageContext.request.contextPath}/img/logo.png"/>
                        </div>
                        <div class="login_text">
                            葫芦娃
                        </div>
                    </div>
                </div>
                <div class="daohang_button">
                    <div class="button_one">
                        <span>关于葫芦娃</span><span>&nbsp;|&nbsp;</span><span>服务条款</span><span>&nbsp;|&nbsp;</span><span>软件许可及服务协议</span><span>&nbsp;|&nbsp;</span><span>隐私保护指引</span><span>&nbsp;|&nbsp;</span><span>儿童隐私保护指引</span><span>&nbsp;|&nbsp;</span>
                        <span>网络游戏行业防沉迷自律公约</span><span>&nbsp;|&nbsp;</span><span>侵权通知</span><span>&nbsp;|&nbsp;</span><span>广告服务</span><span>&nbsp;|&nbsp;</span><span>腾讯招聘</span><span>&nbsp;|&nbsp;</span>
                        <span>客服中心</span><span>&nbsp;|&nbsp;</span><span>网站导航</span><span>&nbsp;|&nbsp;</span><br/><span>联系我们</span><span>&nbsp;|&nbsp;</span><span>ICP备案号：粤B2-20090059-376</span><span>&nbsp;|&nbsp;</span>


                    </div>
                    <div class="button_two">
                        <span> COPYRIGHT © 2017 – 2022 TENCENT. ALL RIGHTS RESERVED. </span>
                    </div>
                    <div class="button_three">
                        <span>腾讯公司 版权所有</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<script type="text/javascript">




    function x1() {
        window.location.href="/dome/DetailedServlet?game=庆余年&img1=img/m4.jpg"
    }
    function x2() {
        window.location.href="/dome/DetailedServlet?game=笼中窥梦&img1=img/m11.jpg"
    }
    function x3() {
        window.location.href="/dome/DetailedServlet?game=蚁族崛起&img1=img/m2.jpg"
    }
    function x4() {
        window.location.href="/dome/DetailedServlet?game=米皮大冒险：梦境&img1=img/m3.jpg"
    }
    function x5() {
        window.location.href="/dome/DetailedServlet?game=崩坏三&img1=img/m1.jpg"
    }
    function x6() {
        window.location.href="/dome/DetailedServlet?game=笑傲江湖OL&img1=img/m9.jpg"
    }
    function x7() {
        window.location.href="/dome/DetailedServlet?game=穿越火线&img1=img/m7.jpg"
    }
    function x8() {
        window.location.href="/dome/DetailedServlet?game=英雄联盟&img1=img/m10.jpg"
    }


    function k1() {
        window.open ("/dome/RechargeServlet", "newwindow", "height=600, width=850,top=100,left=300");

    }
    function z1() {
        window.location.href="/dome/DetailedServlet?game=蚁族崛起&img1=img/m2.jpg"
    }
    function z2() {
        window.location.href="/dome/CommServiceServlet?sousuo="
    }
    function z3() {
        window.location.href="/dome/DetailedServlet?game=穿越火线&img1=img/m7.jpg"
    }
    function z4() {
        window.location.href="/dome/DetailedServlet?game=三国杀&img1=img/img/m13.jpg"
    }
    function z5() {
        window.location.href="/dome/DetailedServlet?game=问道&img1=img/yizujueqi.png"
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


    function f(){
        var a=document.getElementById("Sous").value;
        window.location.href = "/dome/CommServiceServlet?sousuo="+a+""
    }

    $('#Sous').bind('keyup', function(event) {
        if (event.keyCode == "13") {
           f();
        }
    });


    $(function(){
        var text;
        $("#Sous").focus(function() {
            text = $(this).attr("placeholder");
            $(this).attr("placeholder","");
        }).blur(function() {
            $(this).attr("placeholder",text);
        });
    })
    var list;
    var current;
    var imgs;
    //轮播图
    function slideshow() {
        var slideshow=document.getElementsByClassName("lunbotu")[0];
        imgs=slideshow.getElementsByTagName("img"); //得到图片们
        var Slideshow = document.getElementsByClassName("lunbotu-ul")[0];
        list = Slideshow.getElementsByTagName("li");
        current=0; //current为当前活跃的图片编号
        function slideOff() {
            imgs[current].className=""; //图片淡出
            list[current].id="";
        }
        function slideOn() {
            imgs[current].className="active"; //图片淡入
            list[current].id="Active";
        }
        function changeSlide(){ //切换图片的函数
            slideOff();
            current++; //自增1
            if(current>=imgs.length){
                current=0;
            }
            slideOn();
        }
        //每3s调用changeSlide函数进行图片轮播
        var slideon=setInterval(changeSlide,4000);
        slideshow.onmouseover=function () {

            clearInterval(slideon); //当鼠标移入时清除轮播事件
        }
        slideshow.onmouseout=function () {
            slideon=setInterval(changeSlide,4000); //当鼠标移出时重新开始轮播事件
        }

    }
    slideshow();
    function getvalue(obj){
        imgs[current].className="";
        list[current].id="";

        current = obj.value;
        imgs[current].className="active";
        list[current].id="Active";
    }

    //第一个图
    var xuantin1 = document.getElementsByClassName("tupian1")[0];
    xuantin1.onmouseover=function(){
        var yingcang = document.getElementsByClassName("yingcang")[0];
        yingcang.style.marginTop="100px";
        yingcang.addEventListener("transitionend",function(){
            if(yingcang.style.marginTop=="100px"&&yingcang.style.position=="relative"){
                yingcang.style.position="absolute";
            }else{
                yingcang.style.position="relative";
//						document.getElementsByClassName("tupian1")[0].style.boxShadow="";
            }
        });
    }
    xuantin1.onmouseout=function(){
        var yingcang = document.getElementsByClassName("yingcang")[0];
        if(yingcang.style.position="absolute"&&yingcang.style.marginTop=="100px"){
            yingcang.style.position="relative";
            yingcang.style.marginTop="200px";
        }
    }

    //后面二个图
    var xuantin2 = document.getElementsByClassName("tupian2_5")[0];
    xuantin2.onmouseover=function(){
        var yingcang = document.getElementsByClassName("yingcang1")[0];
        yingcang.style.marginTop="100px";
        yingcang.addEventListener("transitionend",function(){
            if(yingcang.style.marginTop=="100px"&&yingcang.style.position=="relative"){
                yingcang.style.position="absolute";
            }else{
                yingcang.style.position="relative";
//						document.getElementsByClassName("tupian1")[0].style.boxShadow="";
            }
        });
    }
    xuantin2.onmouseout=function(){
        var yingcang = document.getElementsByClassName("yingcang1")[0];
        if(yingcang.style.position="absolute"&&yingcang.style.marginTop=="100px"){
            yingcang.style.position="relative";
            yingcang.style.marginTop="200px";
        }
    }

    //第三个图
    var xuantin3 = document.getElementsByClassName("tupian2_5")[1];
    xuantin3.onmouseover=function(){
        var yingcang = document.getElementsByClassName("yingcang1")[1];
        yingcang.style.marginTop="100px";
        yingcang.addEventListener("transitionend",function(){
            if(yingcang.style.marginTop=="100px"&&yingcang.style.position=="relative"){
                yingcang.style.position="absolute";
            }else{
                yingcang.style.position="relative";
//						document.getElementsByClassName("tupian1")[0].style.boxShadow="";
            }
        });
    }
    xuantin3.onmouseout=function(){
        var yingcang = document.getElementsByClassName("yingcang1")[1];
        if(yingcang.style.position="absolute"&&yingcang.style.marginTop=="100px"){
            yingcang.style.position="relative";
            yingcang.style.marginTop="200px";
        }
    }

    //第四个图
    var xuantin4 = document.getElementsByClassName("tupian2_5")[2];
    xuantin4.onmouseover=function(){
        var yingcang = document.getElementsByClassName("yingcang1")[2];
        yingcang.style.marginTop="100px";
        yingcang.addEventListener("transitionend",function(){
            if(yingcang.style.marginTop=="100px"&&yingcang.style.position=="relative"){
                yingcang.style.position="absolute";
            }else{
                yingcang.style.position="relative";
//						document.getElementsByClassName("tupian1")[0].style.boxShadow="";
            }
        });
    }
    xuantin4.onmouseout=function(){
        var yingcang = document.getElementsByClassName("yingcang1")[2];
        if(yingcang.style.position="absolute"&&yingcang.style.marginTop=="100px"){
            yingcang.style.position="relative";
            yingcang.style.marginTop="200px";
        }
    }

    //第五个图
    var xuantin5 = document.getElementsByClassName("tupian2_5")[3];
    xuantin5.onmouseover=function(){
        var yingcang = document.getElementsByClassName("yingcang1")[3];
        yingcang.style.marginTop="100px";
        yingcang.addEventListener("transitionend",function(){
            if(yingcang.style.marginTop=="100px"&&yingcang.style.position=="relative"){
                yingcang.style.position="absolute";
            }else{
                yingcang.style.position="relative";
//						document.getElementsByClassName("tupian1")[0].style.boxShadow="";
            }
        });
    }
    xuantin5.onmouseout=function(){
        var yingcang = document.getElementsByClassName("yingcang1")[3];
        if(yingcang.style.position="absolute"&&yingcang.style.marginTop=="100px"){
            yingcang.style.position="relative";
            yingcang.style.marginTop="200px";
        }
    }


    //最新活动
    var xt1 = document.getElementsByClassName("wei_button")[0];
    xt1.onmouseover=function(){
        var xianshi1 = xt1.getElementsByTagName("img")[0];
        var xianshi2 = xt1.getElementsByTagName("span")[0];
        xianshi1.src="${pageContext.request.contextPath}/img/win1.png";
        xianshi2.style.color="#FFFFFF";
    }
    xt1.onmouseout=function(){
        var xianshi1 = xt1.getElementsByTagName("img")[0];
        var xianshi2 = xt1.getElementsByTagName("span")[0];
        xianshi1.src="${pageContext.request.contextPath}/img/win.png";
        xianshi2.style.color="#A4A4A4";
    }


    var xt2 = document.getElementsByClassName("wei_button")[1];
    xt2.onmouseover=function(){
        var xianshi1 = xt2.getElementsByTagName("img")[0];
        var xianshi2 = xt2.getElementsByTagName("span")[0];
        xianshi1.src="${pageContext.request.contextPath}/img/mac1.png";
        xianshi2.style.color="#FFFFFF";
    }
    xt2.onmouseout=function(){
        var xianshi1 = xt2.getElementsByTagName("img")[0];
        var xianshi2 = xt2.getElementsByTagName("span")[0];
        xianshi1.src="${pageContext.request.contextPath}/img/mac.png";
        xianshi2.style.color="#A4A4A4";
    }



    var xt3 = document.getElementsByClassName("wei_button")[2];
    xt3.onmouseover=function(){
        var xianshi1 = xt3.getElementsByTagName("img")[0];
        var xianshi2 = xt3.getElementsByTagName("span")[0];
        xianshi1.src="${pageContext.request.contextPath}/img/weixing1.png";
        xianshi2.style.color="#FFFFFF";
    }
    xt3.onmouseout=function(){
        var xianshi1 = xt3.getElementsByTagName("img")[0];
        var xianshi2 = xt3.getElementsByTagName("span")[0];
        xianshi1.src="${pageContext.request.contextPath}/img/weixing.png";
        xianshi2.style.color="#A4A4A4";
    }


    var xt4 = document.getElementsByClassName("wei_button")[3];
    xt4.onmouseover=function(){
        var xianshi1 = xt4.getElementsByTagName("img")[0];
        var xianshi2 = xt4.getElementsByTagName("span")[0];
        xianshi1.src="${pageContext.request.contextPath}/img/weibo1.png";
        xianshi2.style.color="#FFFFFF";
    }
    xt4.onmouseout=function(){
        var xianshi1 = xt4.getElementsByTagName("img")[0];
        var xianshi2 = xt4.getElementsByTagName("span")[0];
        xianshi1.src="${pageContext.request.contextPath}/img/weibo.png";
        xianshi2.style.color="#A4A4A4";
    }


    var xt5 = document.getElementsByClassName("wei_button")[4];
    xt5.onmouseover=function(){
        var xianshi1 = xt5.getElementsByTagName("img")[0];
        var xianshi2 = xt5.getElementsByTagName("span")[0];
        xianshi1.src="${pageContext.request.contextPath}/img/bilibili-fill1.png";
        xianshi2.style.color="#FFFFFF";
    }
    xt5.onmouseout=function(){
        var xianshi1 = xt5.getElementsByTagName("img")[0];
        var xianshi2 = xt5.getElementsByTagName("span")[0];
        xianshi1.src="${pageContext.request.contextPath}/img/bilibili-line.png";
        xianshi2.style.color="#A4A4A4";
    }
    document.body.style.zoom =1;

    var daohang_login1 = document.getElementsByClassName("dandanjun_first")[0];
    daohang_login1.onmouseover = function(){
        var xuantin = daohang_login1.getElementsByTagName("img")[0];
        xuantin.src = "${pageContext.request.contextPath}/img/gouwuche.png";
    }
    daohang_login1.onmouseout = function(){
        var xuantin = daohang_login1.getElementsByTagName("img")[0];
        xuantin.src = "${pageContext.request.contextPath}/img/gouwuche1.png";
    }


    var daohang_login2 = document.getElementsByClassName("dandanjun_first")[1];
    daohang_login2.onmouseover = function(){
        var xuantin = daohang_login2.getElementsByTagName("img")[0];
        xuantin.src = "${pageContext.request.contextPath}/img/youxi1.png";
    }
    daohang_login2.onmouseout = function(){
        var xuantin = daohang_login2.getElementsByTagName("img")[0];
        xuantin.src = "${pageContext.request.contextPath}/img/youxi.png";
    }


    var daohang_login3 = document.getElementsByClassName("dandanjun_first")[2];
    daohang_login3.onmouseover = function(){
        var xuantin = daohang_login3.getElementsByTagName("img")[0];
        xuantin.src = "${pageContext.request.contextPath}/img/liwu1.png";
    }
    daohang_login3.onmouseout = function(){
        var xuantin = daohang_login3.getElementsByTagName("img")[0];
        xuantin.src = "${pageContext.request.contextPath}/img/liwu.png";
    }

    var daohang_login4 = document.getElementsByClassName("dandanjun_first")[3];
    daohang_login4.onmouseover = function(){
//				alert("移入");
        var xuantin = daohang_login4.getElementsByTagName("img")[0];
        xuantin.src = "${pageContext.request.contextPath}/img/houjian1.png";

    }
    daohang_login4.onmouseout = function(){
//				alert("移出");
        var xuantin = daohang_login4.getElementsByTagName("img")[0];
        xuantin.src = "${pageContext.request.contextPath}/img/houjian.png";
    }
    function fanghui(){
        var img = daohang_login4.getElementsByTagName("img")[1];
        var Node = document.createElement("img");
        daohang_login4.appendChild(Node);
        var img = daohang_login4.getElementsByTagName("img")[1];
        img.src="${pageContext.request.contextPath}/img/houjian1.png";
        img.setAttribute("class","Position");
        if (getScroll()){
            setScroll();
        }
        img.style.position="absolute";
        img.style.marginTop="-500px";
        img.addEventListener("transitionend",function(){
            daohang_login4.removeChild(img);
        })
    }
    function getScroll() {
        return window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop;
    }
    let tag = false;
    document.addEventListener('wheel', moveWheel, false);
    function moveWheel(e) {
        let timerWheel = null;
        e = window.event;
        if (e.wheelDelta < 0) {
            tag = true;
        }
        // 滚轮停止不动200ms后tag为false，变回默认状态
        clearTimeout(timerWheel);
        timerWheel = setTimeout(function(){
            tag = false;
        }, 200);
    }

    function setScroll() {
        let timer = setInterval(function(){
            let base = getScroll();
            console.log(tag);
            if (base <= 1 || tag) {
                // 当滚轮往下滚动时tag为true，停止到达顶部
                clearInterval(timer);
            }
            document.documentElement.scrollTop = base - Math.pow(base, 2 / 5); // 速度可自己调整
        }, 10);
    }
    function xinyou(){
        var top = document.body.scrollTop + document.documentElement.scrollTop;
        var Noentop = document.getElementsByClassName("xinyou")[0].offsetTop;
        var sum = top-Noentop;
        var speed = sum / 10;
        speed = Math.abs(speed);
        speed = Math.floor(speed);
        var scrollToptimer = setInterval(function () {
            if(sum<0){
                if (document.documentElement.scrollTop<Noentop-100) {
                    document.documentElement.scrollTop += speed;
                }else{
                    clearInterval(scrollToptimer);
                }
            }else{
                if (document.documentElement.scrollTop>Noentop-100) {
                    document.documentElement.scrollTop -= speed;
                }else{
                    clearInterval(scrollToptimer);
                }
            }
        }, 20);
    }

    function houdong(){
        var top = document.body.scrollTop + document.documentElement.scrollTop;
        var Noentop = document.getElementsByClassName("fabu")[0].offsetTop;
        var sum = top-Noentop;
        var speed = sum / 10;
        speed = Math.abs(speed);
        speed = Math.floor(speed);
        var scrollToptimer = setInterval(function () {
            if(sum<0){
                if (document.documentElement.scrollTop<Noentop-150) {
                    document.documentElement.scrollTop += speed;
                }else{
                    clearInterval(scrollToptimer);
                }
            }else{
                if (document.documentElement.scrollTop>Noentop-100) {
                    document.documentElement.scrollTop -= speed;
                }else{
                    clearInterval(scrollToptimer);
                }
            }
        }, 20);
    }
</script>
</body>
</html>
