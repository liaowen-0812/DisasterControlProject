package com.lovo.disaster.pwd.servlet;

import com.lovo.disaster.pwd.bean.WormsBean;
import com.lovo.disaster.pwd.service.IWormsService;
import com.lovo.disaster.pwd.service.impl.WormsServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class findWormsServlet extends HttpServlet {
    IWormsService service=new WormsServiceImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setHeader("Content-type", "text/plain;charset=UTF-8");
        String dId = request.getParameter("idStr");
        WormsBean worms = service.findByWormsId(Integer.parseInt(dId));
        request.setAttribute("wormsName", worms.getWormsName());
        request.setAttribute("host", worms.getHost());
        request.setAttribute("wormsBreed", worms.getWormsBreed());
        request.setAttribute("wormsEnemy", worms.getWormsEnemy());
        request.setAttribute("babyImg", worms.getBabyImg());
        request.setAttribute("oldImg", worms.getOldImg());
        request.setAttribute("wormsMethod", worms.getWormsMethod());
        request.setAttribute("wormsHarm", worms.getWormsHarm());

        request.getRequestDispatcher("webpage/PDM/wormsInformation.jsp").forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);

    }
}
