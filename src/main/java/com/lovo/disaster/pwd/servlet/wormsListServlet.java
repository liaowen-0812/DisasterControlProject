package com.lovo.disaster.pwd.servlet;

import com.lovo.disaster.pwd.bean.WormsBean;
import com.lovo.disaster.pwd.service.IWormsService;
import com.lovo.disaster.pwd.service.impl.WormsServiceImpl;
import com.lovo.disaster.warehouse.page.Page;

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

        if(null!=wormsName && !"".equals(wormsName)){
            map.put("wName",wormsName);
        }
        if(null!=host && !"".equals(host)){
            map.put("hName",host);
        }
        List<WormsBean> list=service.findAll(map);
        int allCount= service.countPage(map);
        request.setAttribute("wormsList",list);
        request.setAttribute("cerPage",cerPage2);
        request.setAttribute("allCount",allCount);
        request.setAttribute("wName",wormsName);
        request.setAttribute("hName",host);
        request.getRequestDispatcher("webpage/PDM/worms.jsp").forward(request,response);


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);

    }
}
