package com.lovo.disaster.specialist.servlet;

import com.lovo.disaster.specialist.bean.SysDoctor;
import com.lovo.disaster.specialist.service.ISpecialistService;
import com.lovo.disaster.specialist.service.impl.ISpecialistServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class SpecialistServlet extends HttpServlet {
    ISpecialistService service=new ISpecialistServiceImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setHeader("Content-type", "text/plain;charset=UTF-8");
        String name= request.getParameter("sName");
        String company=request.getParameter("pName");
        String home=request.getParameter("hName");
        Map<String,Object> map=new HashMap<>();
        if(null!=name && !"".equals(name)){
            map.put("sName",name);
        }
        if(null!=company && !"".equals(company)){
            map.put("pName",company);
        }
        if(null!=home && !"".equals(home)){
            map.put("hName",home);
        }
       List<SysDoctor> list= service.findAll(map);
        request.setAttribute("doctorList",list);
        request.getRequestDispatcher("webpage/specialistPage/specialistPage.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
