package com.lovo.disaster.warehouse.servlet;

import com.lovo.disaster.util.DateUtils;
import com.lovo.disaster.warehouse.service.ISaveLeaveHouseInfo;
import com.lovo.disaster.warehouse.service.impl.SaveLeaveServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class GoAwayServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    request.setCharacterEncoding("UTF-8");
      String drur=request.getParameter("checked1");
      String class1=request.getParameter("classId1");
      String dat1= DateUtils.getInternateDate("1");//获得日期
      String leaveNum=request.getParameter("leaveNum");

        ISaveLeaveHouseInfo service= new SaveLeaveServiceImpl();

        //保存出库信息
            service.saveChuku(Integer.parseInt(class1),3,dat1);
         String [] drurArray=drur.split(",");
         String [] leaveNumArray=leaveNum.split(",");
         for(int i=0;i<drurArray.length;i++){
             service.saveDrugStockpile(Integer.parseInt(drurArray[i]),Integer.parseInt(leaveNumArray[i]));
         }


    response.sendRedirect("leaveHouse.lovo");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  doPost(request,response);
    }
}
