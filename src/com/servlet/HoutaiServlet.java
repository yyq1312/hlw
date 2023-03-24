package com.servlet;

import com.bean.CommodityBeen;
import com.bean.ConfirmPurchase;
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

@WebServlet("/HoutaiServlet")
public class HoutaiServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        Houtai sc= new Houtai();
        String ming1=request.getParameter("ming1");
        String ming2=request.getParameter("ming2");
        String ming3=request.getParameter("ming3");
        if (ming1!=null){
            String ming11=new String(request.getParameter("ming1").getBytes("ISO-8859-1"),"UTF-8");
            ArrayList<NumberBeen> list1=sc.chaxun1(ming11,0);
            request.setAttribute("list1",list1);
        }else{
            ArrayList<NumberBeen> list1=sc.chaxun1(ming1,0);
            request.setAttribute("list1",list1);
        }
        if (ming2!=null){
            String mingl2=new String(request.getParameter("ming2").getBytes("ISO-8859-1"),"UTF-8");
            ArrayList<CommodityBeen> list2=sc.chaxun2(mingl2,0);
            request.setAttribute("list2",list2);
        }else{
            ArrayList<CommodityBeen> list2=sc.chaxun2(ming2,0);
            request.setAttribute("list2",list2);
        }
        if (ming3!=null){
            String mingl3=new String(request.getParameter("ming3").getBytes("ISO-8859-1"),"UTF-8");
            ArrayList<ConfirmPurchase> list3=sc.chaxun3(mingl3,0);
            request.setAttribute("list3",list3);
        }else {
            ArrayList<ConfirmPurchase> list3=sc.chaxun3(ming3,0);
            request.setAttribute("list3",list3);
        }
        request.getRequestDispatcher("houtai.jsp").forward(request,response);
    }

}
