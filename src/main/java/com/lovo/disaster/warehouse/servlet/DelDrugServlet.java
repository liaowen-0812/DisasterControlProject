package com.lovo.disaster.warehouse.servlet;

import com.lovo.disaster.warehouse.entity.SysClass;
import com.lovo.disaster.warehouse.entity.SysDrug;
import com.lovo.disaster.warehouse.page.Page;
import com.lovo.disaster.warehouse.service.IShowDrugService;
import com.lovo.disaster.warehouse.service.impl.ShowDrugServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class DelDrugServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
     String notChecked=request.getParameter("notChecked");
        IShowDrugService service2=new ShowDrugServiceImpl();

        List<SysClass> list2=service2.findAllClass();
        String classId=request.getParameter("selectId");
        String currentPage2=request.getParameter("currentPage");

        List list = new ArrayList();
     if(notChecked.length()!=0) {
         String[] notCheckedArray = notChecked.split(",");
         IShowDrugService service = new ShowDrugServiceImpl();
             for (String id : notCheckedArray) {
                 int id2 = Integer.parseInt(id);
                 SysDrug drug = service.findDrugById(id2);
                 list.add(drug);

         }
     }
   //分页
        Page p=new Page();

        int currentPage=1;
        if(null!=currentPage2) {
            currentPage = Integer.parseInt(currentPage2);
        }
        p.setCurrentPage(currentPage);
        //设置起始位置
        p.setStart(p.getCurrentPage());


        request.setAttribute("list2",list);
        request.setAttribute("list",list2);
        request.setAttribute("list3",list);
        request.setAttribute("currentPage",currentPage);
        request.getRequestDispatcher("webpage/warehouse/addLeaveWarehouse.jsp").forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  doPost(request,response);
    }
}
