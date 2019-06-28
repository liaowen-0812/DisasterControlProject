package com.lovo.disaster.pwd.service.impl;

import com.lovo.disaster.db.GetSession;
import com.lovo.disaster.pwd.bean.MouseBean;
import com.lovo.disaster.pwd.bean.WormsBean;
import com.lovo.disaster.pwd.dao.IMouseDao;
import com.lovo.disaster.pwd.dao.IWormsDao;
import com.lovo.disaster.pwd.service.IMouseService;
import org.apache.ibatis.session.SqlSession;

import java.util.List;
import java.util.Map;

public class MouseServiceImpl implements IMouseService {
    @Override
    public void addMouse(MouseBean mouseBean) {
        SqlSession session= GetSession.creatSession();
        IMouseDao dao=session.getMapper(IMouseDao.class);
        dao.addMouse(mouseBean);
        session.commit();
        session.close();

    }

    @Override
    public MouseBean findById(int mouseId) {
        SqlSession session=GetSession.creatSession();
        MouseBean mouse=session.getMapper(IMouseDao.class).findById(mouseId);
        session.close();
        return mouse;
    }

    @Override
    public Integer countPage(Map map) {
        SqlSession session= GetSession.creatSession();
        IMouseDao dao=session.getMapper(IMouseDao.class);
        int countPage=dao.countPage(map);
        session.close();
        return countPage;
    }

    @Override
    public List<MouseBean> findAll(Map map) {
        SqlSession session= GetSession.creatSession();
        IMouseDao dao=session.getMapper(IMouseDao.class);
        List<MouseBean> list=dao.findAll(map);
        session.close();
        return list;
    }
}
