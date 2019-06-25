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
import java.util.Map;

public class UpdateServlet extends HttpServlet {
    ISpecialistService service=new ISpecialistServiceImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setHeader("Content-type", "text/plain;charset=UTF-8");
        String dId= request.getParameter("idStr");
        SysDoctor doctor= service.findById(Integer.parseInt(dId));
        String tag=request.getParameter("ttName");
        if(null==tag || "".equals(tag)) {
            request.setAttribute("idStr",dId);
            request.setAttribute("sName", doctor.getDoctorName());
            request.setAttribute("tName", doctor.getDoctorImgPath());
            request.setAttribute("cName", doctor.getDoctorBirthday());
            request.setAttribute("xName", doctor.getDoctorSex());
            request.setAttribute("zName", doctor.getDoctorSpeciality());
            request.setAttribute("wName", doctor.getDoctorPost());
            request.setAttribute("dName", doctor.getDoctorTel());
            request.setAttribute("gName", doctor.getDoctorCompany());
            request.setAttribute("txName", doctor.getDoctorHome());
            request.setAttribute("yName", doctor.getDoctorEmail());
            request.getRequestDispatcher("webpage/specialistPage/updateSpecialistPage.jsp").forward(request,response);
        }
        else {
            Map<String, Object> map = new HashMap<>();
            map.put("dId", Integer.parseInt(dId));
            String tel = request.getParameter("dName");
            if (!doctor.getDoctorTel().equals(tel)) {
                map.put("dName", tel);
            }
            String post = request.getParameter("wName");
            if (!doctor.getDoctorPost().equals(post)) {
                map.put("wName", post);
            }
            String company = request.getParameter("gName");
            if (!doctor.getDoctorCompany().equals(company)) {
                map.put("gName", company);
            }
            String email = request.getParameter("yName");
            if (!doctor.getDoctorEmail().equals(email)) {
                map.put("yName", email);
            }
            if(map.size()==1) {
               response.sendRedirect("specialistServlet.lovo");
            }else {
                service.updateSpecialist(map);
                response.sendRedirect("specialistServlet.lovo");
            }
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
