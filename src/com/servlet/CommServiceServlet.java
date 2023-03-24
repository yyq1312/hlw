package com.servlet;

import com.bean.CommodityBeen;
import com.bean.NumberBeen;
import com.service.RechargeService;
import com.service.commodityService;
import com.sun.org.apache.bcel.internal.generic.IF_ACMPEQ;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import java.util.ArrayList;

@WebServlet("/CommServiceServlet")
public class CommServiceServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
                doGet(request,response);
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        commodityService cs= new commodityService();
        String str1= (String) request.getSession().getAttribute("name");
        request.setAttribute("name1",str1);
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String sousuo=new String(request.getParameter("sousuo").getBytes("ISO-8859-1"),"UTF-8");
        ArrayList<CommodityBeen> nm = cs.quancha(sousuo);
        if (nm.size()!=0) {
        ArrayList<CommodityBeen> op = new ArrayList<CommodityBeen>();
        int q2 = nm.size();
        double q = nm.size();
        double q1 = q / 5 + 1;
        String l2 = request.getParameter("xia");
        String l = request.getParameter("shuzi");
        int l1 = 1;
        String l3 = request.getParameter("shang");
        String l4 = request.getParameter("queren");
        int c = 0;
        int n = 1;
        if (l == null) {
            l1 = 1;
            n = 0;
        } else {
            l1 = Integer.parseInt(l);
            if (l2 != null) {
                l1 = l1 + 1;
                c = l1 * 5;
                n = c - 5;
            }
            if (l3 != null) {
                l1 = l1 - 1;
                c = l1 * 5;
                n = c - 5;
            }
            if (l4 != null) {
                c = l1 * 5;
                n = c - 5;
            }
        }
        ArrayList<CommodityBeen> sc = cs.chaxun(n, 5 ,sousuo);
        request.setAttribute("length", q1);
        request.setAttribute("sousuo",sousuo);
        request.setAttribute("list", sc);
        request.setAttribute("shu", l1);
        request.setAttribute("size", q2);
        if(str1!=null){
            RechargeService m3=new RechargeService();
            ArrayList<NumberBeen> m1= m3.chuaxun(str1);
            Double z1=m1.get(0).getQian();
            String z3=m1.get(0).getHuiyuan();
            request.setAttribute("qian",z1);
            request.setAttribute("huiyuan",z3);
        }

        request.getRequestDispatcher("Commodity.jsp").forward(request, response);
    }else {
            int a1=nm.size();
            request.setAttribute("length",a1 );
            RechargeService m3=new RechargeService();
            ArrayList<NumberBeen> m1= m3.chuaxun(str1);
            Double z1=m1.get(0).getQian();
            String z3=m1.get(0).getHuiyuan();
            request.setAttribute("qian",z1);
            request.setAttribute("huiyuan",z3);
            request.getRequestDispatcher("Commodity1.jsp").forward(request, response);
        }
    }
}
