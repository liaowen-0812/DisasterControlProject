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

public class updateUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String passWord= request.getParameter("passWord");
        String userId = request.getParameter("userId");
        String city = request.getParameter("city");
        boolean flag = false;
        if(userId!= null && !"".equals(userId)){
            int id = Integer.parseInt(userId);
            int cityId = Integer.parseInt(city);
            SysUser user = new SysUser();
            user.setUserId(id);
            user.setUserPwd(passWord);
            SysRole role = new SysRole();
            role.setRoleId(cityId);
            user.setRoleObj(role);
            IUserService service = new UserServiceImpl();
            service.updateUser(user);
            flag = true;
        }
        PrintWriter pw = response.getWriter();
        pw.write(flag+"");
        pw.close();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
