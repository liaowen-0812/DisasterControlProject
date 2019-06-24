package com.lovo.disaster.warehouse.servlet;

import com.lovo.disaster.warehouse.service.IShowDrugService;
import com.lovo.disaster.warehouse.service.ITypeService;
import com.lovo.disaster.warehouse.service.impl.ShowDrugServiceImpl;
import com.lovo.disaster.warehouse.service.impl.TypeServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AddServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
//        response.setHeader("Content-type", "text/plain;charset=UTF-8");
//        response.setContentType("text/html;charset=utf-8");
        String drugName=request.getParameter("title1");
        int drugNum1=Integer.parseInt(request.getParameter("title2"));
        int val1=Integer.parseInt(request.getParameter("city"));
         int val2=Integer.parseInt(request.getParameter("city2"));
            String drugUseWay= request.getParameter("wby");
        ITypeService service=new TypeServiceImpl();
      long typ1=  service.findTypeByKey(val1,"fzlx");
        long typ2=  service.findTypeByKey(val2,"yjlb");

        IShowDrugService service1=new ShowDrugServiceImpl();
        service1.addDurg(drugName,typ1,typ2,drugUseWay,drugNum1);

//        request.getRequestDispatcher("showDrug.lovo");
        response.sendRedirect("showDrug.lovo");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }
}
