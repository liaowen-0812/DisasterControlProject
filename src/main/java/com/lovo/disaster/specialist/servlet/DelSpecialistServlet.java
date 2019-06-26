package com.lovo.disaster.specialist.servlet;

import com.lovo.disaster.specialist.service.ISpecialistService;
import com.lovo.disaster.specialist.service.impl.ISpecialistServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DelSpecialistServlet extends HttpServlet {
    ISpecialistService service=new ISpecialistServiceImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setHeader("Content-type", "text/plain;charset=UTF-8");
        String dId=request.getParameter("idStr");
        service.delSpecialist(Integer.parseInt(dId));
        response.sendRedirect("specialistServlet.lovo");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
