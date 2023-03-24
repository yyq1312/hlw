package com.servlet;

import com.bean.Detailed;
import com.bean.NumberBeen;
import com.service.DetailedServic;
import com.service.RechargeService;
import com.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/DetailedServlet")
public class DetailedServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        DetailedServic cs = new DetailedServic();
        request.setAttribute("name1",request.getSession().getAttribute("name"));
        String a2= (String) request.getSession().getAttribute("game");
        String p3= (String) request.getSession().getAttribute("name");
        UserService p1=new UserService();
        if (a2== null) {
            if (p3!=null){
                RechargeService m3=new RechargeService();
                ArrayList<NumberBeen> m1= m3.chuaxun(p3);
                Double z1=m1.get(0).getQian();
                String z3=m1.get(0).getHuiyuan();
                request.setAttribute("qian",z1);
                request.setAttribute("huiyuan",z3);
            }
           String l1= request.getParameter("img1");
           request.getSession().setAttribute("img1",l1);
            String a1 = new String(request.getParameter("game").getBytes("ISO-8859-1"), "UTF-8");
            ArrayList<Detailed> sc = cs.chaxun(a1);
            boolean p2=p1.checkLogin(p3,a1);
            boolean p5=p1.checkLogin1(p3,a1);
            request.setAttribute("panduan",p2);
            request.setAttribute("list", sc);
            request.setAttribute("panduan1",p5);
            request.getRequestDispatcher("Detailed.jsp").forward(request, response);

        }
        if (a2!=null){
            if (p3!=null){
                RechargeService m3=new RechargeService();
                ArrayList<NumberBeen> m1= m3.chuaxun(p3);
                Double z1=m1.get(0).getQian();
                String z3=m1.get(0).getHuiyuan();
                request.setAttribute("qian",z1);
                request.setAttribute("huiyuan",z3);
            }
            ArrayList<Detailed> sc = cs.chaxun(a2);
            boolean p2=p1.checkLogin(p3,a2);
            boolean p5=p1.checkLogin1(p3,a2);
            request.setAttribute("panduan",p2);
            request.setAttribute("panduan1",p5);
            request.setAttribute("list", sc);
            request.getRequestDispatcher("Detailed.jsp").forward(request, response);
            request.getSession().removeAttribute("game");
        }
    }
}
