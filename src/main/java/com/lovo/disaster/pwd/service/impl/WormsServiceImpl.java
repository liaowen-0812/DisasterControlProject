package com.lovo.disaster.pwd.service.impl;


import com.lovo.disaster.db.GetSession;
import com.lovo.disaster.pwd.bean.WormsBean;
import com.lovo.disaster.pwd.dao.IWormsDao;
import com.lovo.disaster.pwd.service.IWormsService;
import com.lovo.disaster.specialist.bean.SysDoctor;
import com.lovo.disaster.specialist.dao.ISpecialistDao;
import org.apache.ibatis.session.SqlSession;

import java.util.List;
import java.util.Map;


public class WormsServiceImpl implements IWormsService {
    @Override
    public void addWorms(WormsBean wormsBean) {
        SqlSession session= GetSession.creatSession();
        IWormsDao dao=session.getMapper(IWormsDao.class);
        dao.addWorms(wormsBean);
        session.commit();
        session.close();

    }

    @Override
    public int findByItem(WormsBean wormsBean) {
        return 0;
    }

    @Override
    public WormsBean findByWormsId(int wormsId) {
        return null;
    }

    @Override
    public List<WormsBean> findAll(Map map) {
        SqlSession session= GetSession.creatSession();
        IWormsDao dao=session.getMapper(IWormsDao.class);
        List<WormsBean> list=dao.findAll(map);
        session.close();
        return list;

    }
}
