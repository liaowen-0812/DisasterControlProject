package com.lovo.disaster.system.service.impl;

import com.lovo.disaster.db.GetSession;
import com.lovo.disaster.system.dao.ILogDao;
import com.lovo.disaster.system.service.ILogService;
import com.lovo.disaster.warehouse.page.Page;
import org.apache.ibatis.session.SqlSession;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class LogServiceImpl implements ILogService {
    @Override
    public Map findAllLogByDay(String startDay, String lastDay, String currentPage) {
        SqlSession session = GetSession.creatSession();
        ILogDao dao = session.getMapper(ILogDao.class);

        Map map = new HashMap();

        //设置类型
        map.put("startDay",startDay);
        map.put("lastDay",lastDay);
        Page page = new Page();
        //获得总行数
        int count = dao.findLogCount(map);
        page.setAllCount(count);
        //设置开始页面
        map.put("startPage",(Integer.parseInt(currentPage)-1)*5);
        map.put("countPage",page.getCountPage());

        //得到所有用户list集合
        List list = dao.findAllLogByDay(map);
        Map m = new HashMap();
        m.put("UserList",list);
        m.put("allCount",count);
        m.put("countPage",page.getCountPage());

        session.close();
        return m;
    }
}
