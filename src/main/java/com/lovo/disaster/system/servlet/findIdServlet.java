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
import java.awt.*;
import java.io.IOException;
import java.util.List;

public class findIdServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String tempid = request.getParameter("idStr");
        if(tempid!=null && !"".equals(tempid)){
            int id = Integer.parseInt(tempid);
            IUserService service = new UserServiceImpl();
            SysUser user = service.findUserById(id);
            request.setAttribute("userObj",user);

            IRoleService service1 = new RoleServiceImpl();
            List<SysRole> list = service1.findAllRole();
            request.setAttribute("rolelist",list);

            request.getRequestDispatcher("webpage/system/updateUser.jsp").forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
