package com.lovo.disaster.pwd.servlet;

import com.lovo.disaster.pwd.bean.MouseBean;
import com.lovo.disaster.pwd.bean.WormsBean;
import com.lovo.disaster.pwd.service.IMouseService;
import com.lovo.disaster.pwd.service.impl.MouseServiceImpl;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class findMouseServlet extends HttpServlet {
    IMouseService service=new MouseServiceImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setHeader("Content-type", "text/plain;charset=UTF-8");
        String dId = request.getParameter("idStr");
        MouseBean mouse = service.findById(Integer.parseInt(dId));
        request.setAttribute("mouseName", mouse.getMouseName());
        request.setAttribute("food", mouse.getFood());
        request.setAttribute("mouseBreed", mouse.getMouseBreed());
        request.setAttribute("mouseEnemy",mouse.getMouseEnemy());
        request.setAttribute("pathImg", mouse.getPathImg());
        request.setAttribute("mouseMethod", mouse.getMouseMethod());
        request.setAttribute("mouseHarm", mouse.getMouseHarm());

        request.getRequestDispatcher("webpage/PDM/mouseInformation.jsp").forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
