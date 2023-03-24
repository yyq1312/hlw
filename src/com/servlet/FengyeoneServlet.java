package com.servlet;

import com.bean.NumberBeen;
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

@WebServlet("/FengyeoneServlet")
public class FengyeoneServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Houtai sc = new Houtai();
        int fy1 = (Integer.parseInt(request.getParameter("fy1"))-1)*7;    //当前页数
        int yc1 = Integer.parseInt(request.getParameter("yc1"));    //1为单击过查询按钮,0为没有单机查询按钮
        String yc11 = request.getParameter("yc11");     //查询内容
        if (yc1!=0){
            response.setContentType("text/html;charset=utf-8");
            ArrayList<NumberBeen> list1 = new ArrayList<>();
            list1 = sc.chaxun1(yc11,fy1);
            JSONArray data = JSONArray.fromObject(list1);
            PrintWriter printWriter = response.getWriter();
            printWriter.write(data.toString());
            printWriter.flush();
            printWriter.close();
            System.out.println(data);
            printWriter.println(data);
        }else{
            ArrayList<NumberBeen> list1=sc.chaxun1(fy1);
            JSONArray data = JSONArray.fromObject(list1);
            PrintWriter printWriter = response.getWriter();
            printWriter.write(data.toString());
            printWriter.flush();
            printWriter.close();
            System.out.println(data);
            printWriter.println(data);
        }
    }
}
