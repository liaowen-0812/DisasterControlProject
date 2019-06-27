package com.lovo.disaster.specialist.servlet;

import com.lovo.disaster.specialist.bean.DoctorResult;
import com.lovo.disaster.specialist.bean.SysDoctor;
import com.lovo.disaster.specialist.service.IResultService;
import com.lovo.disaster.specialist.service.impl.ResultServiceImpl;
import com.lovo.disaster.util.DateUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class AddResultServlet extends HttpServlet {
    IResultService service=new ResultServiceImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setHeader("Content-type", "text/plain;charset=UTF-8");
        String str=request.getParameter("tName");
        String str2=request.getParameter("wName");
        String date= DateUtils.getInternateDate("1");

//        DoctorResult result=new DoctorResult();
//        result.setDoctorEventDate(date);
//        result.setDoctorEventResult(str2);
//        result.setList(str);
        String[] strings=str.split(",");
        String str3="";
        for (String s:strings) {
          SysDoctor d=  service.findById(Integer.parseInt(s));
          str3+=d.getDoctorName()+",";
        }
        String str4=str3.substring(0,str3.length()-1);
        List<DoctorResult> list2=new ArrayList<>();
        DoctorResult result=new DoctorResult();
        //result.setList(str4);
        result.setDoctorEventResult(str2);
        result.setDoctorEventDate(date);
        list2.add(result);
       // request.setAttribute("rList",list2);
        List<SysDoctor> list=service.findAll();
        request.setAttribute("nameList",list);
       request.getRequestDispatcher("webpage/specialistPage/addConsultSpecialistPage.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
