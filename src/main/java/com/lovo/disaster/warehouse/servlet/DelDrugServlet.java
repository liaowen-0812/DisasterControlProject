package com.lovo.disaster.warehouse.servlet;

import com.lovo.disaster.warehouse.entity.SysDrug;
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
        request.setAttribute("list2",list);

        request.getRequestDispatcher("webpage/warehouse/addLeaveWarehouse.jsp").forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  doPost(request,response);
    }
}
