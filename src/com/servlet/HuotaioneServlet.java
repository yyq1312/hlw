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

@WebServlet("/HuotaioneServlet")
public class HuotaioneServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Houtai sc = new Houtai();
        String ming1 = request.getParameter("ming1");
        if (ming1!=null){
            response.setContentType("text/html;charset=utf-8");
            ArrayList<NumberBeen> list1 = new ArrayList<>();
            list1 = sc.chaxun1(ming1,0);
            JSONArray data = JSONArray.fromObject(list1);
            PrintWriter printWriter = response.getWriter();
            printWriter.write(data.toString());
            printWriter.flush();
            printWriter.close();
            System.out.println(data);
            printWriter.println(data);
        }else{
            ArrayList<NumberBeen> list1=sc.chaxun1(ming1,0);
            request.setAttribute("list1",list1);
            request.getRequestDispatcher("houtai.jsp").forward(request,response);
        }
    }
}
