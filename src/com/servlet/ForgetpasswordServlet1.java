package com.servlet;

import com.service.ForgetpasswordService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/ForgetPasswordServlet1")
public class ForgetpasswordServlet1 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                    doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            //获取账号
            String username= request.getParameter("username");

           String password =request.getParameter("password");
           ForgetpasswordService forgetpasswordService =new ForgetpasswordService();
           //修改密码

               forgetpasswordService.setPassword(password,username);
               request.getRequestDispatcher("index.jsp").forward(request, response);
           }

}
