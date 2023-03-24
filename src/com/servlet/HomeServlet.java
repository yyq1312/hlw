package com.servlet;

import com.bean.NumberBeen;
import com.service.RechargeService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/HomeServlet")
public class HomeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doGet(request,response);
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     String p1= (String) request.getSession().getAttribute("name");
        RechargeService l2=new RechargeService();
        ArrayList<NumberBeen> l1= l2.chuaxun(p1);
        double z1=l1.get(0).getQian();
        String z3=l1.get(0).getHuiyuan();
        request.setAttribute("qian",z1);
        request.setAttribute("huiyuan",z3);
        request.getSession().setAttribute("name",p1);
        request.getRequestDispatcher("/html/Home_page.jsp").forward(request, response);
    }
}
