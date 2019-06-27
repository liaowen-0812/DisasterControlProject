package com.lovo.disaster.system.servlet;

import com.lovo.disaster.system.bean.SysPower;
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
import java.io.PrintWriter;
import java.util.List;

public class loginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("passWord");

        IUserService service = new UserServiceImpl();
        SysUser user = service.loginUser(username,password);
        PrintWriter pw = response.getWriter();
        if(user !=null){
            IRoleService roleService = new RoleServiceImpl();
            request.getSession().setAttribute("userObj",user);
            List<SysPower> powerList=   roleService.findPowerByRoleId(user.getRoleObj().getRoleId());
            request.getSession().setAttribute("powerList",powerList);
            request.setAttribute("powerList",powerList);
            request.getRequestDispatcher("webpage/warehouse/main.jsp").forward(request,response);
        }else{
            response.sendRedirect("webpage/system/login.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
