package com.lovo.disaster.system.servlet;

import com.lovo.disaster.system.bean.SysRole;
import com.lovo.disaster.system.service.IRoleService;
import com.lovo.disaster.system.service.impl.RoleServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class aDDUserFindSelectServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        IRoleService service = new RoleServiceImpl();
        List<SysRole> roleList = service.findAllRole();
        request.setAttribute("rolelist",roleList);
        request.getRequestDispatcher("webpage/system/addUser.jsp").forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
