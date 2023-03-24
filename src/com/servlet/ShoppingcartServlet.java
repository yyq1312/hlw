package com.servlet;

import com.bean.NumberBeen;
import com.bean.ShoppingcartBeen;
import com.service.RechargeService;
import com.service.ShoppingcartService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

@WebServlet("/ShoppingcartServlet")
public class ShoppingcartServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                doGet(request,response);
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ShoppingcartService sc= new ShoppingcartService();
        String p1= (String) request.getSession().getAttribute("name");
        request.setAttribute("name1",p1);
        String a2= (String) request.getSession().getAttribute("name");
        if (a2==null){
            request.getRequestDispatcher("Shoppingcat.jsp").forward(request, response);
        }else {
            ArrayList<ShoppingcartBeen> a1 = sc.setShoppingcart(a2);
            //  判定购物车是否有商品
            if (a1.size() == 0) {
                RechargeService l2=new RechargeService();
                ArrayList<NumberBeen> l1= l2.chuaxun(p1);
                double z1=l1.get(0).getQian();
                String z3=l1.get(0).getHuiyuan();
                request.setAttribute("qian",z1);
                request.setAttribute("huiyuan",z3);
                request.getRequestDispatcher("ShoppingCart.jsp").forward(request, response);
            } else {
                RechargeService l2=new RechargeService();
               ArrayList<NumberBeen> l1= l2.chuaxun(p1);
                double z1=l1.get(0).getQian();
               Double z2=l1.get(0).getZheshu();
               String z3=l1.get(0).getHuiyuan();
               request.setAttribute("qian",z1);
               request.setAttribute("zheshu",z2);
               request.setAttribute("huiyuan",z3);
                request.setAttribute("a2", a2);
                request.setAttribute("list", a1);
                request.getRequestDispatcher("Shopping.jsp").forward(request, response);
            }
        }

    }
}
