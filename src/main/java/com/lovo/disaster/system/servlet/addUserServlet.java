package com.lovo.disaster.system.servlet;

import com.lovo.disaster.system.bean.SysRole;
import com.lovo.disaster.system.bean.SysUser;
import com.lovo.disaster.system.service.IUserService;
import com.lovo.disaster.system.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class addUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = request.getParameter("userName");
        String passWord = request.getParameter("passWord");
        String realName = request.getParameter("realName");
        int city = Integer.parseInt(request.getParameter("city"));

        SysUser user = new SysUser();
        user.setUserName(userName);
        user.setUserPwd(passWord);
        user.setUserTrueName(realName);
        SysRole role = new SysRole();
        role.setRoleId(city);
        user.setRoleObj(role);
        IUserService service = new UserServiceImpl();
        boolean falg = service.insertUser(user);
        PrintWriter pw  = response.getWriter();
        pw.write(falg+"");
        pw.close();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
