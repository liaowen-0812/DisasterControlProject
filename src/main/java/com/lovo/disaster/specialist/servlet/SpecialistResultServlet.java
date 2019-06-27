package com.lovo.disaster.specialist.servlet;

import com.lovo.disaster.specialist.bean.DoctorResult;
import com.lovo.disaster.specialist.bean.SysDoctor;
import com.lovo.disaster.specialist.service.IResultService;
import com.lovo.disaster.specialist.service.impl.ResultServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class SpecialistResultServlet extends HttpServlet {
    IResultService service=new ResultServiceImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setHeader("Content-type", "text/plain;charset=UTF-8");
        String sId=request.getParameter("textName");
        List<SysDoctor> list=service.findAll();
        int aId= service.findId(Integer.parseInt(sId));
        List<DoctorResult> list4=new ArrayList<>();
        List<DoctorResult> list1= service.findDoctorResultList(aId);
        for (DoctorResult r:list1) {
            String name="";
            DoctorResult result=new DoctorResult();
            result.setDoctorEventDate(r.getDoctorEventDate());
            result.setDoctorEventResult(r.getDoctorEventResult());
           List<SysDoctor> list2= service.findDoctorId(r.getResultId());
            for (SysDoctor s:list2) {
               List<SysDoctor> list7=service.findDoctorName(s.getDoctorId());
                for (SysDoctor d:list7) {
                    name+=d.getDoctorName()+",";
                }
            }
            String name1=name.substring(0,name.length()-1);
            result.setList(name1);
            list4.add(result);
        }
        request.setAttribute("resultList",list4);
        request.setAttribute("nameList",list);
        request.setAttribute("sId",sId);
        request.getRequestDispatcher("webpage/specialistPage/addConsultSpecialistPage.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
