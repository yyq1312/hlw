package com.servlet;

import com.service.Houtai;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/Houtai2Servlet")
public class Houtai2Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doGet(request,response);
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String shan1= request.getParameter("shan1");
        String shan2= request.getParameter("shan2");
        String shan3= request.getParameter("shan3");
        Houtai sc=new Houtai();
       if (shan1!=null){
           String id=request.getParameter("id");
           sc.shanchu1(id);
           response.sendRedirect("/dome/HoutaiServlet");
       }
       if(shan2!=null){
           String id=request.getParameter("id");
           sc.shanchu2(id);
           response.sendRedirect("/dome/HoutaiServlet");
       }if(shan3!=null){
            String id=request.getParameter("id");
            sc.shanchu3(id);
            response.sendRedirect("/dome/HoutaiServlet");
       }
    }
}
