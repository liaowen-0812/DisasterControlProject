package com.lovo.disaster.system.servlet;

import com.lovo.disaster.system.bean.SysUser;
import com.lovo.disaster.system.service.IUserService;
import com.lovo.disaster.system.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class loginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        IUserService service = new UserServiceImpl();
        SysUser user = service.loginUser(username,password);
        PrintWriter pw = response.getWriter();
        if(user !=null){
            request.getSession().setAttribute("userObj",user);
            pw.write("true");
        }else{
            pw.write("flage");
        }
        pw.close();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
