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
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class AddResultServlet extends HttpServlet {
    IResultService service=new ResultServiceImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setHeader("Content-type", "text/plain;charset=UTF-8");
        //专家ID
        String str=request.getParameter("tttName");
        //事件ID
        String str4=request.getParameter("aaaName");
        //文本会商内容
        String str2=request.getParameter("wName");
        //专家事件ID
        String str3=request.getParameter("zjsjName");
        //日期
        String date= DateUtils.getInternateDate("1");
        //专家ID集合
        String[] strArray=str.split(",");
        Map<String,Object> map=new HashMap<>();
        map.put("zjsjName",Integer.parseInt(str3));
        map.put("date",date);
        map.put("wName",str2);
        service.addDoctorResult(map);
        int maxId= service.findMax();
        map.put("maxId",maxId);
        for(int i=0;i<strArray.length;i++){
            map.put("doctorId",Integer.parseInt(strArray[i]));
            service.addSpecialist(map);
        }
        request.setAttribute("textName",str4);
       request.getRequestDispatcher("result.lovo").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}


