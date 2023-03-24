package com.servlet;

import com.service.ForgetpasswordService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/ForgetPasswordServlet")
public class ForgetpasswordServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                    doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            //获取账号
            String username= request.getParameter("username");
           //获取邮箱
           String email= request.getParameter("email");
           ForgetpasswordService forgetpasswordService =new ForgetpasswordService();
               int a=  forgetpasswordService.isPassword(username,email);
               request.setAttribute("panduan",a);
               request.setAttribute("username",username);
               if (a==1){
                   request.getRequestDispatcher("ForgetPassword1.jsp").forward(request, response);
               }else{
                   request.getRequestDispatcher("Forget.jsp").forward(request, response);
               }
           }
    }

