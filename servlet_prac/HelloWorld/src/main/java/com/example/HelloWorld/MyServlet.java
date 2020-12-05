package com.example.HelloWorld;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "MyServlet")
public class MyServlet extends HttpServlet {

    @Override
    public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
//        super.service(req, res);

        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) res;

        request.setCharacterEncoding("utf-8");
        String name = request.getParameter("name");

        response.setContentType("text/html; charset=utf-8");
        PrintWriter out = response.getWriter();
        out.print("<h3>这是一个Service方法</h3>");
        out.print("<h3>name参数: " + name + ".</h3>");
        out.close();

    }

//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//        request.setCharacterEncoding("utf-8");
//        String name = request.getParameter("name");
//
//        response.setContentType("text/html; charset=utf-8");
//        PrintWriter out = response.getWriter();
//        out.print("<h3>这是一个Post请求</h3>");
//        out.print("<h3>name参数: " + name + ".</h3>");
//        out.close();
//    }
//
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//        request.setCharacterEncoding("utf-8");
//        String name = request.getParameter("name");
//
//        response.setContentType("text/html; charset=utf-8");
//        PrintWriter out = response.getWriter();
//        out.print("<h3>这是一个Get请求</h3>");
//        out.print("<h3>name参数: " + name + ".</h3>");
//        out.close();
//    }
}
