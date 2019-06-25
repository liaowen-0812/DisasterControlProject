package com.lovo.disaster.specialist.servlet;

import com.lovo.disaster.specialist.bean.SysDoctor;
import com.lovo.disaster.specialist.service.ISpecialistService;
import com.lovo.disaster.specialist.service.impl.ISpecialistServiceImpl;
import com.lovo.disaster.util.PageUtil;
import com.lovo.disaster.warehouse.page.Page;

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
        if(null!=name && !"".equals(name)){
            map.put("sName",name);
            request.setAttribute("sName",name);
        }
        if(null!=company && !"".equals(company)){
            map.put("pName",company);
            request.setAttribute("pName",company);
        }
        if(null!=home && !"".equals(home)){
            map.put("hName",home);
            request.setAttribute("hName",home);
        }
       List<SysDoctor> list= service.findAll(map);
        int allCount= service.countPage(map);
        request.setAttribute("doctorList",list);
        request.setAttribute("cerPage",cerPage2);
        request.setAttribute("allCount",allCount);
        request.getRequestDispatcher("webpage/specialistPage/specialistPage.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
