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

@WebServlet("/FengyetowServlet")
public class FengyetowServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Houtai sc = new Houtai();
        response.setContentType("text/html;charset=utf-8");
        int fy2 = (Integer.parseInt(request.getParameter("fy2"))-1)*7;    //当前页数
        int yc2 = Integer.parseInt(request.getParameter("yc2"));    //1为单击过查询按钮,0为没有单机查询按钮
        String yc22 = request.getParameter("yc22");     //查询内容
        if (yc2!=0){
            response.setContentType("text/html;charset=utf-8");
            ArrayList<CommodityBeen> list2 = new ArrayList<>();
            list2 = sc.chaxun2(yc22,fy2);
            JSONArray data = JSONArray.fromObject(list2);
            PrintWriter printWriter = response.getWriter();
            printWriter.write(data.toString());
            printWriter.flush();
            printWriter.close();
            System.out.println(data);
            printWriter.println(data);
        }else{
            ArrayList<CommodityBeen> list2=sc.chaxun2(fy2);
            JSONArray data = JSONArray.fromObject(list2);
            PrintWriter printWriter = response.getWriter();
            printWriter.write(data.toString());
            printWriter.flush();
            printWriter.close();
            System.out.println(data);
            printWriter.println(data);
        }
    }
}
