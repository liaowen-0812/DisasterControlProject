package com.lovo.disaster.warehouse.servlet;

import com.lovo.disaster.util.DateUtils;
import com.lovo.disaster.warehouse.entity.SysClass;
import com.lovo.disaster.warehouse.entity.SysDrug;
import com.lovo.disaster.warehouse.entity.SysUser;
import com.lovo.disaster.warehouse.page.Page;
import com.lovo.disaster.warehouse.service.IShowDrugService;
import com.lovo.disaster.warehouse.service.impl.ShowDrugServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;

public class AddLeaveHouseInfoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       request.setCharacterEncoding("UTF-8");
       String durgId=request.getParameter("durgId");
       String currentPage2=request.getParameter("currentPage");
        //获取选择的ID
        String str=request.getParameter("checkInfo");
       //获取选中的班级id
        String classId=request.getParameter("selectId");
        if (null==classId){
            classId="";
        }
        ////获取原有的药品id
        String notChecked=request.getParameter("notChecked");



        Page p=new Page();

        int currentPage=1;
        if(null!=currentPage2) {
            currentPage = Integer.parseInt(currentPage2);
        }
        p.setCurrentPage(currentPage);
        //设置起始位置
        p.setStart(p.getCurrentPage());

        IShowDrugService service=new ShowDrugServiceImpl();
        //查询所有班级。
        List<SysClass> list=service.findAllClass();
        //获得登录的真实姓名
     //  SysUser user=(SysUser) request.getSession().getAttribute("userObj");
       //  String userRealName=user.getUserTrueName();
           String date1= DateUtils.getInternateDate("1");
           IShowDrugService service1=new ShowDrugServiceImpl();

        List list2=new ArrayList();
        Set<String> set=new HashSet();
        //获得ID的集合.并去重
        if(null!=str || null!=notChecked) {
            String[] idA = str.split(",");
            String [] notCheckedArray=notChecked.split(",");

            for (String s:idA) {
                set.add(s);
            }
            for (String s2:notCheckedArray) {
                set.add(s2);
            }
        }
        for (String str1 : set) {
            if(str1.length()!=0) {
                int id = Integer.parseInt(str1);
                Map<String, Object> map = new HashMap<>();
                map.put("durgId", id);
                SysDrug drug = service.findDrugById(id);
                list2.add(drug);
            }
        }

List list3=new ArrayList();
for (int i=p.getStart();i<list2.size();i++){
    list3.add(list2.get(i));
}

request.setAttribute("classId",classId);
request.setAttribute("list2",list3);
//request.setAttribute("tVal",tVal);
request.setAttribute("list",list);
request.setAttribute("currentPage",currentPage);
// request.setAttribute("userRealName",userRealName);
request.setAttribute("list3",list2);
request.getRequestDispatcher("webpage/warehouse/addLeaveWarehouse.jsp").forward(request,response);


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }
}
