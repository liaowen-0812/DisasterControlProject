package com.lovo.disaster.pwd.servlet;

import com.lovo.disaster.pwd.bean.DiseaseBean;
import com.lovo.disaster.pwd.bean.MouseBean;
import com.lovo.disaster.pwd.service.IDiseaseService;
import com.lovo.disaster.pwd.service.impl.diseaseServiceImpl;
import com.lovo.disaster.warehouse.page.Page;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class diseaseListServlet extends HttpServlet {
    IDiseaseService service=new diseaseServiceImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setHeader("Content-type", "text/plain;charset=UTF-8");
        String diseaseName=request.getParameter("diseaseName");
        String symptom=request.getParameter("symptom");
        String symptom2=request.getParameter("aaaa");
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
        if (null!=diseaseName && !"".equals(diseaseName)){
            map.put("dName",diseaseName);
        }
        if (null!=symptom && !"".equals(symptom)){
            map.put("sName",symptom);
        }
        List<DiseaseBean> list=service.findAll(map);
        int allCount= service.countPage(map);
        request.setAttribute("diseaseList",list);
        request.setAttribute("cerPage",cerPage2);
        request.setAttribute("allCount",allCount);
        request.setAttribute("dName",diseaseName);
        request.setAttribute("sName",symptom);
        request.getRequestDispatcher("webpage/PDM/disease.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
