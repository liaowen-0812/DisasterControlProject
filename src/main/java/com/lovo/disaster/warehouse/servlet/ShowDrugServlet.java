package com.lovo.disaster.warehouse.servlet;

import com.lovo.disaster.warehouse.entity.SysDrug;
import com.lovo.disaster.warehouse.entity.SysType;
import com.lovo.disaster.warehouse.service.IShowDrugService;
import com.lovo.disaster.warehouse.service.ITypeService;
import com.lovo.disaster.warehouse.service.impl.ShowDrugServiceImpl;
import com.lovo.disaster.warehouse.service.impl.TypeServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ShowDrugServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
          request.setCharacterEncoding("UTF-8");
//        response.setHeader("Content-type", "text/plain;charset=UTF-8");
        response.setContentType("text/html;charset=utf-8");
        IShowDrugService showDrugService = new ShowDrugServiceImpl();
        ITypeService typeService = new TypeServiceImpl();

        //获得表单数据
        String drugName=request.getParameter("title");
        String typeLx=request.getParameter("city");
        String typeLb=request.getParameter("city1");
        //根据选择的下拉的val。查询对应的类型ID
        long type1=0,type2=0;
        //查询类型的id
        if (null!=typeLx&&typeLx.length()!=0){
            type1=typeService.findTypeByKey(Integer.parseInt(typeLx),"fzlx");
        }
        if (null!=typeLb&&typeLb.length()!=0 ){
            type2=typeService.findTypeByKey(Integer.parseInt(typeLb),"yjlb");
        }
        //将条件放入集合
        Map<String,Object> map= new HashMap<>();
     map.put("drugName1",drugName);
     map.put("type1",type1);
     map.put("type2",type2);
      List<SysDrug> list= showDrugService.findDrugByCondition(map);
      //初始下拉框
      List<SysType> list1=  typeService.findAlltype("fzlx");
        List<SysType> list2=  typeService.findAlltype("yjlb");

      request.setAttribute("list",list);
        request.setAttribute("list1",list1);
        request.setAttribute("list2",list2);

      request.getRequestDispatcher("webpage/warehouse/drugAndAppliabce.jsp").forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doPost(request,response);
    }
}
