package com.lovo.disaster.system.servlet;

import com.lovo.disaster.system.bean.SysRole;
import com.lovo.disaster.system.bean.SysUser;
import com.lovo.disaster.system.service.IRoleService;
import com.lovo.disaster.system.service.IUserService;
import com.lovo.disaster.system.service.impl.RoleServiceImpl;
import com.lovo.disaster.system.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

public class userServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String type = request.getParameter("type");
        String currentPage = request.getParameter("currentPage");
        String btnId = request.getParameter("btnId");

        if (currentPage == null || "".equals(currentPage)) {
            currentPage = "1";
        } if(btnId!=null){
            currentPage = "1";
        }
        IUserService service = new UserServiceImpl();
        Map map = service.findAllUserByType(type, currentPage);
        List<SysUser> userL = (List<SysUser>) map.get("UserList");
        int allCount = (Integer) map.get("allCount");
        request.setAttribute("userList", userL);
        request.setAttribute("allCount", allCount);
        request.setAttribute("newPage", currentPage);

        IRoleService roleService = new RoleServiceImpl();
        List<SysRole> list = roleService.findAllRole();

        request.setAttribute("rolelist", list);
        request.setAttribute("type", type);
        request.setAttribute("countPage", map.get("countPage"));


        request.getRequestDispatcher("webpage/system/userControl.jsp").forward(request, response);


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
