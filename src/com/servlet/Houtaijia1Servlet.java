package com.servlet;

import com.service.Houtai;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/Houtaijia1Servlet")
public class Houtaijia1Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String game= request.getParameter("game");
        String xxi=  request.getParameter("xxi");
        String jiage= request.getParameter("jiage");
        Houtai sc=new Houtai();
        sc.tianjia(jiage,game,xxi);
        response.sendRedirect("/dome/HoutaiServlet");
    }
}
