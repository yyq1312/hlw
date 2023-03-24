package com.servlet;

import com.service.RegisterService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //注册功能
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        RegisterService registerService=new RegisterService();
        String a1=request.getParameter("zhanghao");
        String a2=request.getParameter("mima");
        String a3=request.getParameter("youx");
        double a4=0.0;
        double a5=0.0;
        String a6="vip0";
        double a7=1.0;
        if (registerService.setRegister(a1,a2,a3,a4,a5,a6,a7)){
            request.setAttribute("zhanghao", a1);
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }
}
