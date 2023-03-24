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

@WebServlet("/RechargeServlet")
public class RechargeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RechargeService sc =new RechargeService();
      String a1= (String) request.getSession().getAttribute("name");
      if (a1==null){
            response.sendRedirect("Recharge1.jsp");
        }else {
          ArrayList<NumberBeen> cs = sc.chuaxun(a1);
          double a = cs.get(0).getQian();
          request.getSession().setAttribute("qian", a);
          request.getSession().setAttribute("zongqian", cs.get(0).getZongqianshu());
          request.setAttribute("list", cs);
          request.getRequestDispatcher("Recharge.jsp").forward(request, response);
      }

    }
}
