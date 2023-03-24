package com.servlet;

import com.service.DetailedServic;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/Detailed1Servlet")
public class Detailed1Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                doGet(request,response);
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String a1 = (String) request.getSession().getAttribute("name");
        if (a1 != null) {
            String a2 = new String(request.getParameter("game").getBytes("ISO-8859-1"), "UTF-8");
            request.getSession().setAttribute("game", a2);
            int a3 = Integer.parseInt(request.getParameter("qian"));
            String a5 = (String) request.getSession().getAttribute("img1");
            DetailedServic sc = new DetailedServic();
            sc.tianjia(a1, a2, a3, a5);
            String l1 = request.getParameter("goumai");
            if (l1 != null) {
                request.getRequestDispatcher("/ShoppingcartServlet").forward(request, response);
            } else {
                response.sendRedirect("/dome/DetailedServlet");
            }
        }else{
            request.getRequestDispatcher("Shoppingcat.jsp").forward(request, response);
        }
    }
}
