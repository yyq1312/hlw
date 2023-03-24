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

@WebServlet("/HuotaithereServlet")
public class HuotaithereServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Houtai sc = new Houtai();
        String ming3 = request.getParameter("ming3");
        if (ming3!=null){
            response.setContentType("text/html;charset=utf-8");
            ArrayList<ConfirmPurchase> list3 = sc.chaxun3(ming3,0);
            JSONArray data = JSONArray.fromObject(list3);
            PrintWriter printWriter = response.getWriter();
            printWriter.write(data.toString());
            printWriter.flush();
            printWriter.close();
            System.out.println(data);
            printWriter.println(data);
        }else{
            ArrayList<ConfirmPurchase> list3=sc.chaxun3(ming3,0);
            request.setAttribute("list3",list3);
            request.getRequestDispatcher("houtai.jsp").forward(request,response);
        }
    }
}
