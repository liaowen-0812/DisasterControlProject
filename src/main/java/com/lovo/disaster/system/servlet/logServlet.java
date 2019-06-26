package com.lovo.disaster.system.servlet;

import com.lovo.disaster.system.bean.SysLog;
import com.lovo.disaster.system.service.ILogService;
import com.lovo.disaster.system.service.impl.LogServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

public class logServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String startDay = request.getParameter("startDay");
        String lastDay = request.getParameter("lastDay");
        String currentPage = request.getParameter("currentPage");
        String btnId = request.getParameter("btnId");

        if (currentPage == null || "".equals(currentPage)) {
            currentPage = "1";
        } if(btnId!=null){
            currentPage = "1";
        }

        ILogService service = new LogServiceImpl();
        Map map = service.findAllLogByDay(startDay,lastDay, currentPage);
        List<SysLog> logList = (List<SysLog>) map.get("UserList");
        int allCount = (Integer) map.get("allCount");
        request.setAttribute("logList", logList);
        request.setAttribute("allCount", allCount);
        request.setAttribute("newPage", currentPage);


        request.setAttribute("startDay", startDay);
        request.setAttribute("lastDay", lastDay);
        request.setAttribute("countPage", map.get("countPage"));


        request.getRequestDispatcher("webpage/system/logShow.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
