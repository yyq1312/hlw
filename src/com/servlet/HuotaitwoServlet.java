package com.servlet;

import com.bean.CommodityBeen;
import com.service.Houtai;
import net.sf.json.JSONArray;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet("/HuotaitwoServlet")
public class HuotaitwoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Houtai sc = new Houtai();
        String ming2 = request.getParameter("ming2");
        if (ming2!=null){
            response.setContentType("text/html;charset=utf-8");
            ArrayList<CommodityBeen> list2 = sc.chaxun2(ming2,0);
            JSONArray data = JSONArray.fromObject(list2);
            PrintWriter printWriter = response.getWriter();
            printWriter.write(data.toString());
            printWriter.flush();
            printWriter.close();
            System.out.println(data);
            printWriter.println(data);
        }else{
            ArrayList<CommodityBeen> list2=sc.chaxun2(ming2,0);
            request.setAttribute("list2",list2);
            request.getRequestDispatcher("houtai.jsp").forward(request,response);
        }
    }
}
