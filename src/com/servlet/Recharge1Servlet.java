package com.servlet;

import com.bean.NumberBeen;
import com.service.LoginService;
import com.service.RechargeService;
import com.sun.org.apache.xpath.internal.operations.Number;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/Recharge1Servlet")
public class Recharge1Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String name= (String) request.getSession().getAttribute("name");
            String   q1=request.getParameter("mi");
                LoginService loginService=new LoginService();
                String mima=request.getParameter("mima");
                boolean a=loginService.checkLogin(name,mima);
                if (q1==""){
                    response.sendRedirect("Recharge2.jsp");
                }else {
                    if (a) {
                        double qian = (double) request.getSession().getAttribute("qian");
                        double zongqian = (double) request.getSession().getAttribute("zongqian");
                        double chongzhi = Double.parseDouble(q1);
                        if (chongzhi < 0) {
                            response.sendRedirect("Recharge3.jsp");
                        }else {
                            Double zheshu = 0.0;
                            String huiyuan = "";
                            qian = qian + chongzhi;
                            zongqian = zongqian + chongzhi;
                            request.getSession().setAttribute("qian", qian);
                            request.getSession().setAttribute("zongqian", zongqian);
                            if (zongqian < 100) {
                                huiyuan = "vip0";
                                zheshu = 1.0;
                            } else if (100 <= zongqian && zongqian < 500) {
                                huiyuan = "vip1";
                                zheshu = 0.99;
                            } else if (500 <= zongqian && zongqian < 3000) {
                                huiyuan = "vip2";
                                zheshu = 0.97;
                            } else if (3000 <= zongqian && zongqian < 10000) {
                                huiyuan = "vip3";
                                zheshu = 0.95;
                            } else if (10000 <= zongqian) {
                                huiyuan = "vip4";
                                zheshu = 0.9;
                            }
                            RechargeService l2 = new RechargeService();
                            l2.xiugai(qian, zongqian, huiyuan, zheshu, name);
                            ArrayList<NumberBeen> cs = l2.chuaxun(name);
                            request.setAttribute("list", cs);
                            request.setAttribute("pandaun", a);
                            request.getRequestDispatcher("Recharge.jsp").forward(request, response);
                        }
                    } else {
                        response.sendRedirect("Rechar.jsp");
                    }
                }

            }
}
