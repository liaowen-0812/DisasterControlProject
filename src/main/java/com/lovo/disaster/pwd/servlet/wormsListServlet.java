package com.lovo.disaster.pwd.servlet;

import com.lovo.disaster.pwd.bean.WormsBean;
import com.lovo.disaster.pwd.service.IWormsService;
import com.lovo.disaster.pwd.service.impl.WormsServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class wormsListServlet extends HttpServlet {
    IWormsService service=new WormsServiceImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setHeader("Content-type", "text/plain;charset=UTF-8");
        String wormsName=request.getParameter("wName");
        String host=request.getParameter("hName");
        Map<String,Object> map=new HashMap<>();
        if(null!=wormsName && !"".equals(wormsName)){
            map.put("wName",wormsName);
        }
        if(null!=host && !"".equals(host)){
            map.put("hName",host);
        }
        List<WormsBean> list=service.findAll(map);
        request.setAttribute("wormsList",list);
        request.getRequestDispatcher("webpage/PDM/worms.jsp").forward(request,response);


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);

    }
}
