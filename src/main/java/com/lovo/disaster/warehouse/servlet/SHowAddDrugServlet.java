package com.lovo.disaster.warehouse.servlet;

import com.lovo.disaster.warehouse.entity.SysType;
import com.lovo.disaster.warehouse.service.ITypeService;
import com.lovo.disaster.warehouse.service.impl.TypeServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class SHowAddDrugServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ITypeService typeService = new TypeServiceImpl();
        List<SysType> list1=  typeService.findAlltype("fzlx");
        List<SysType> list2=  typeService.findAlltype("yjlb");

        String drugName="";
        String type1="";
        String type2="";

        request.setAttribute("list1",list1);
        request.setAttribute("list2",list2);

        request.getRequestDispatcher("webpage/warehouse/add2.jsp").forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           doPost(request,response);
    }
}
