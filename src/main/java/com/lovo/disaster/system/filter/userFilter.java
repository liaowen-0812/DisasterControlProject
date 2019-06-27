package com.lovo.disaster.system.filter;

import com.lovo.disaster.system.bean.SysPower;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class userFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        ((HttpServletRequest) req).setCharacterEncoding("UTF-8");
        ((HttpServletResponse) resp).setCharacterEncoding("UTF-8");
        String path = ((HttpServletRequest) req).getRequestURL()+"";
        String[] paths = path.split("/");
        String lastPath = paths[paths.length-1];
        if(lastPath.indexOf("login") != -1){
            chain.doFilter(req, resp);
            return;
        }
        boolean flag = false;
        if(((HttpServletRequest) req).getSession().getAttribute("userObj")!=null){
            if(lastPath.indexOf("main") != -1){
                chain.doFilter(req, resp);
                return;
            }
            if(lastPath.indexOf(".jsp") == -1){

                List<SysPower> powerList = (List<SysPower>) ((HttpServletRequest) req).getSession().getAttribute("powerList");
                for (SysPower power:powerList) {
                   if(power.getPowerSource().equals(lastPath)){
                       flag=true;
                       break;
                   }
                }
            }
        }
        if(flag){
            chain.doFilter(req, resp);
            return;
        }else {
            ((HttpServletResponse) resp).sendRedirect("http://localhost:8081/dp/webpage/system/login.jsp");
        }

    }

    public void init(FilterConfig config) throws ServletException {

    }

}
