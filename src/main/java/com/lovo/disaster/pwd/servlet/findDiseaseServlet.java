package com.lovo.disaster.pwd.servlet;

import com.lovo.disaster.pwd.bean.DiseaseBean;
import com.lovo.disaster.pwd.service.IDiseaseService;
import com.lovo.disaster.pwd.service.impl.diseaseServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class findDiseaseServlet extends HttpServlet {
    IDiseaseService service=new diseaseServiceImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setHeader("Content-type", "text/plain;charset=UTF-8");
        String dId = request.getParameter("idStr");
        DiseaseBean disease=service.findById(Integer.parseInt(dId));
        request.setAttribute("diseaseName", disease.getDiseaseName());
        request.setAttribute("source", disease.getSource());
        request.setAttribute("symptom", disease.getSymptom());
        request.setAttribute("rule",disease.getRule());
        request.setAttribute("diseasePath", disease.getDiseasePath());
        request.setAttribute("diseaseMethod", disease.getDiseaseMethod());
        request.setAttribute("diseaseHarm", disease.getDiseaseHarm());
        request.getRequestDispatcher("webpage/PDM/diseaseInformation.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
