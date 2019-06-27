package com.lovo.disaster.warehouse.servlet;

import com.lovo.disaster.warehouse.dto.LookLeaveHouseDto;
import com.lovo.disaster.warehouse.page.Page;
import com.lovo.disaster.warehouse.service.IShowDrugService;
import com.lovo.disaster.warehouse.service.impl.ShowDrugServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class LookLeaveHouseServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
          request.setCharacterEncoding("UTF-8");
        IShowDrugService service=new ShowDrugServiceImpl();
        //获取表单数据
        String checkInfo=request.getParameter("checkInfo");
        String currentPage2=request.getParameter("currentPage");

        Page p=new Page();
        int currentPage=1;
        if(null!=currentPage2) {
            currentPage = Integer.parseInt(currentPage2);
        }
        p.setCurrentPage(currentPage);
        //设置起始位置
        p.setStart(p.getCurrentPage());

        String[] strA=checkInfo.split(",");
        String className=strA[0];
        String date1=strA[1];
        String leaveHouseMan=strA[2];
        String leaveNum=strA[3];
        Map<String,Object> map= new HashMap<>();
   map.put("className",className);
        map.put("date1",date1);
        map.put("leaveHouseMan",leaveHouseMan);

        map.put("start",p.getStart());
        map.put("hang",p.getCountPage());

     List<LookLeaveHouseDto> list= service.findLookLeaveHouse(map);

     request.setAttribute("list",list);
     request.setAttribute("className",className);
     request.setAttribute("date1",date1);
     request.setAttribute("leaveHouseMan",leaveHouseMan);
    request.setAttribute("currentPage",currentPage);
    request.setAttribute("allCount",service.findLookLeaveCount(map));
        request.setAttribute("countPage",p.getCountPage());
  request.getRequestDispatcher("webpage/warehouse/lookLeaveWarehouse.jsp").forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
          doPost(request,response);
    }
}
