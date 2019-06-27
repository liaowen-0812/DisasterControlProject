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

public class LeaveHouseServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   request.setCharacterEncoding("UTF-8");
        IShowDrugService service=new ShowDrugServiceImpl();
        //获取表单数据
        String date1=request.getParameter("name1");
        String date2=request.getParameter("name2");
        String  currentPage2=request.getParameter("text1");
        String className=request.getParameter("className");
        Page p=new Page();
        int currentPage=1;
        if(null!=currentPage2) {
            currentPage = Integer.parseInt(currentPage2);
        }
        p.setCurrentPage(currentPage);
        //设置起始位置
        p.setStart(p.getCurrentPage());

        Map<String,Object> map= new HashMap<>();
map.put("dat1",date1);
map.put("dat2",date2);
map.put("start",p.getStart());
map.put("hang",p.getCountPage());
map.put("className",className);
//设置总行数
      p.setAllCount(service.findAllDtoCount(map));
     List<LookLeaveHouseDto> list= service.findAllLeaveHouseDto(map);

     request.setAttribute("currentPage",currentPage);
     request.setAttribute("list",list);
     request.setAttribute("allCount",p.getAllCount());
     request.setAttribute("countPage",p.getCountPage());
     request.setAttribute("date1",date1);
     request.setAttribute("date2",date2);
     request.setAttribute("drugName",className);
     request.getRequestDispatcher("webpage/warehouse/leaveWarehouse.jsp").forward(request,response);


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
