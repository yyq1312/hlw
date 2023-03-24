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

@WebServlet("/Deleteid2Servlet")
public class Deleteid2Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        Houtai sc = new Houtai();
        String id = request.getParameter("id");
        int fy1 = (Integer.parseInt(request.getParameter("fy1"))-1)*7;    //当前页数
        int yc1 = Integer.parseInt(request.getParameter("dele1"));    //1为单击过查询按钮,0为没有单机查询按钮
        String yc11 = request.getParameter("dele2");     //查询内容
        sc.shanchu3(id);
        if (yc1!=0){

            ArrayList<ConfirmPurchase> list1 = new ArrayList<>();
            list1 = sc.chaxun3(yc11,fy1);
            if (list1.size()==0){
                if (fy1!=0){
                    fy1 = fy1-7;
                }
            }
            list1 = sc.chaxun3(yc11,fy1);
            JSONArray data = JSONArray.fromObject(list1);
            PrintWriter printWriter = response.getWriter();
            printWriter.write(data.toString());
            printWriter.flush();
            printWriter.close();
            System.out.println(data);
            printWriter.println(data);
        }else{
            ArrayList<ConfirmPurchase> list1=sc.chaxun3(fy1);
            if (list1.size()==0) {
                if (fy1 != 0) {
                    fy1 = fy1 - 7;
                }
            }
            list1=sc.chaxun3(fy1);
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
