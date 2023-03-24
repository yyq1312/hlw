package com.servlet;

import com.bean.ConfirmPurchase;
import com.bean.NumberBeen;
import com.bean.ShoppingcartBeen;
import com.service.ConfirmPurchaseService;
import com.service.RechargeService;
import com.service.ShoppingcartService;
import com.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

@WebServlet("/ShoppingServlet")
public class ShoppingServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String a1=request.getParameter("quereng");
        String a3=request.getParameter("delete");
        String [] a2=request.getParameterValues("fuxian");
       String m1= (String) request.getSession().getAttribute("name");
        RechargeService l2=new RechargeService();
        ArrayList<NumberBeen> x1= l2.chuaxun(m1);
        Double z1=x1.get(0).getQian();
        String y1=request.getParameter("zongjia");
      Double z2 = Double.parseDouble(y1);
        if ("确认购买".equals(a1)) {
            if (z1>=z2) {
                z1=z1-z2;
                l2.xiugai2(z1,m1);
                UserService p1 = new UserService();
                String[] a7 = request.getParameterValues("game");
                //获取账号价格
                String b2 = request.getParameter("jiaqian");
                String l1 = request.getParameter("zhanghu");

                //生成时间格式化时间
                SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                Date date = new Date();
                String time = format.format(date);
                ConfirmPurchase confirmPurchase = new ConfirmPurchase();
                String k1="";
                for (int i=0;i<a2.length;i++){
                   k1=k1+a2[i]+"  ";
                }
                //订单号
                String b1 = date.getTime() - 164073800 + "HL";
                //添加订单记录
                for (int i=0;i<a2.length;i++){
                    ConfirmPurchaseService confirmPurchaseService = new ConfirmPurchaseService();
                    confirmPurchase.setOrder_number(b1);
                    confirmPurchase.setPurchase_account(l1);
                    confirmPurchase.setPurchase_time(time);
                    confirmPurchase.setPurchase_amount(b2);
                    confirmPurchase.setGoumaiyouxi(a2[i]);
                    confirmPurchaseService.addCo(confirmPurchase);
                }
                //删除购物车列表
                ShoppingcartService sc = new ShoppingcartService();
                for (int i = 0; i < a2.length; i++) {
                    sc.DelteShopping(a2[i]);
                    p1.tianjia(l1, a7[i]);
                }
                request.setAttribute("con1", k1);
                request.setAttribute("con", confirmPurchase);
                request.getRequestDispatcher("ConfirmPurchase.jsp").forward(request, response);
            }else{
                request.getRequestDispatcher("Shopping2.jsp").forward(request,response);
            }
        }
         else if ("删除商品".equals(a3)) {
            ShoppingcartService sc = new ShoppingcartService();
            for (int i = 0; i < a2.length; i++) {
                System.out.println();
                sc.DelteShopping(a2[i]);
            }
            response.sendRedirect("/dome/ShoppingcartServlet");
        }
    }
}
