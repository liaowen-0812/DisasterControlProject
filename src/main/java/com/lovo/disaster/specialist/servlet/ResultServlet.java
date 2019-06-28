package com.lovo.disaster.specialist.servlet;

import com.lovo.disaster.specialist.dto.eventDto;
import com.lovo.disaster.specialist.service.IResultService;
import com.lovo.disaster.specialist.service.impl.ResultServiceImpl;
import com.lovo.disaster.util.GetUUID;
import com.lovo.disaster.warehouse.page.Page;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ResultServlet extends HttpServlet {
    IResultService service=new ResultServiceImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setHeader("Content-type", "text/plain;charset=UTF-8");
        Page p=new Page();
        Map<String,Object> map=new HashMap<>();
        //获得当前页
        String cerPage=request.getParameter("tName");
        int cerPage2=1;
        if(null!=cerPage && !"".equals(cerPage)){
            cerPage2=Integer.parseInt(cerPage);
        }
        p.setCurrentPage(cerPage2);
        p.setStart(cerPage2);
        map.put("start",p.getStart());
        map.put("hang",p.getCountPage());
        map.put("lx","JD");
        map.put("tt",3);
        int allCount=service.countPage(map);
        List<eventDto> list2=new ArrayList();
        List<eventDto> list=service.find(map);
        for (eventDto dto1:list) {
            eventDto dto=new eventDto();
            int name=dto1.getEventId();
            map.put("evName",name);
           dto.setEventArea(service.findArea(map).getEventArea());
           dto.setEventName(dto1.getEventName());
           dto.setEventId(dto1.getEventId());
           dto.setEventDate(dto1.getEventDate());
           dto.setEventMethod(dto1.getEventMethod());
           dto.setEventType(dto1.getEventType());
           list2.add(dto);
        }
        request.setAttribute("eventList",list2);
        request.setAttribute("cerPage",cerPage2);
        request.setAttribute("allCount",allCount);
        request.getRequestDispatcher("webpage/specialistPage/consultSpecialistPage.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}


