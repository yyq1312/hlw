package com.servlet;

import com.bean.ConfirmPurchase;
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

@WebServlet("/FengyethereServlet")
public class FengyethereServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Houtai sc = new Houtai();
        response.setContentType("text/html;charset=utf-8");
        int fy3 = (Integer.parseInt(request.getParameter("fy3"))-1)*7;    //当前页数
        int yc3 = Integer.parseInt(request.getParameter("yc3"));    //1为单击过查询按钮,0为没有单机查询按钮
        String yc33 = request.getParameter("yc33");     //查询内容
        if (yc3!=0){
            response.setContentType("text/html;charset=utf-8");
            ArrayList<ConfirmPurchase> list3 = new ArrayList<>();
            list3 = sc.chaxun3(yc33,fy3);
            JSONArray data = JSONArray.fromObject(list3);
            PrintWriter printWriter = response.getWriter();
            printWriter.write(data.toString());
            printWriter.flush();
            printWriter.close();
            System.out.println(data);
            printWriter.println(data);
        }else{
            ArrayList<ConfirmPurchase> list3=sc.chaxun3(fy3);
            JSONArray data = JSONArray.fromObject(list3);
            PrintWriter printWriter = response.getWriter();
            printWriter.write(data.toString());
            printWriter.flush();
            printWriter.close();
            System.out.println(data);
            printWriter.println(data);
        }
    }
}
