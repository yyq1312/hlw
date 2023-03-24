package com.servlet;

import com.bean.NumberBeen;
import com.jdbc.JDBCUtils;
import com.service.LoginService;
import com.service.RechargeService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet("/LogServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                     //登录
                    request.setCharacterEncoding("utf-8");
                    response.setCharacterEncoding("utf-8");
                    String str1=request.getParameter("username");
                    String str2=request.getParameter("passoword");
                     LoginService loginService = new LoginService();
                    if (loginService.checkLogin1(str1, str2)) {
                            response.sendRedirect("HoutaiServlet");
                    }else{
                        request.getSession().setAttribute("name", str1);
                        if (loginService.checkLogin(str1, str2)) {
                            if(str1!=null){
                                RechargeService l2 = new RechargeService();
                                ArrayList<NumberBeen> l1 = l2.chuaxun(str1);
                                Double z1 = l1.get(0).getQian();
                                String z3 = l1.get(0).getHuiyuan();
                                request.setAttribute("qian", z1);
                                request.setAttribute("huiyuan", z3);
                            }   
                            request.setAttribute("name1", str1);
                            request.getRequestDispatcher("/html//Home_page.jsp").forward(request, response);
                        } else {
                            response.sendRedirect("Kong.jsp");
                        }
                    }
    }
}
