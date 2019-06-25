package com.lovo.disaster.specialist.servlet;

import com.lovo.disaster.specialist.bean.SysDoctor;
import com.lovo.disaster.specialist.service.ISpecialistService;
import com.lovo.disaster.specialist.service.impl.ISpecialistServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class FindSpecialistServlet extends HttpServlet {
    ISpecialistService service=new ISpecialistServiceImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setHeader("Content-type", "text/plain;charset=UTF-8");
        String dId= request.getParameter("idStr");
        SysDoctor doctor= service.findById(Integer.parseInt(dId));
        request.setAttribute("sName",doctor.getDoctorName());
        request.setAttribute("tName",doctor.getDoctorImgPath());
        request.setAttribute("cName",doctor.getDoctorBirthday());
        request.setAttribute("xName",doctor.getDoctorSex());
        request.setAttribute("zName",doctor.getDoctorSpeciality());
        request.setAttribute("wName",doctor.getDoctorPost());
        request.setAttribute("dName",doctor.getDoctorTel());
        request.setAttribute("gName",doctor.getDoctorCompany());
        request.setAttribute("txName",doctor.getDoctorHome());
        request.setAttribute("yName",doctor.getDoctorEmail());
        request.getRequestDispatcher("webpage/specialistPage/findSpecialistPage.jsp").forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
