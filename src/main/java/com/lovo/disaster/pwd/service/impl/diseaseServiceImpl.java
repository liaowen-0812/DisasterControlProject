package com.lovo.disaster.pwd.service.impl;

import com.lovo.disaster.db.GetSession;
import com.lovo.disaster.pwd.bean.DiseaseBean;
import com.lovo.disaster.pwd.bean.WormsBean;
import com.lovo.disaster.pwd.dao.IDiseaseDao;
import com.lovo.disaster.pwd.dao.IWormsDao;
import com.lovo.disaster.pwd.service.IDiseaseService;
import org.apache.ibatis.session.SqlSession;

import java.util.List;
import java.util.Map;

public class diseaseServiceImpl implements IDiseaseService {
    @Override
    public void addDisease(DiseaseBean diseaseBean) {
        SqlSession session= GetSession.creatSession();
        IDiseaseDao dao=session.getMapper(IDiseaseDao.class);
        dao.addDisease(diseaseBean);
        session.commit();
        session.close();
    }

    @Override
    public int findByItem(DiseaseBean diseaseBean) {
        return 0;
    }

    @Override
    public DiseaseBean findById(int diseaseId) {
        SqlSession session=GetSession.creatSession();
        DiseaseBean disease=session.getMapper(IDiseaseDao.class).findById(diseaseId);
        session.close();
        return disease;
    }

    @Override
    public List<DiseaseBean> findAll(Map map) {
        SqlSession session= GetSession.creatSession();
        IDiseaseDao dao=session.getMapper(IDiseaseDao.class);
        List<DiseaseBean> list=dao.findAll(map);
        session.close();
        return list;
    }

    @Override
    public Integer countPage(Map map) {
        SqlSession session= GetSession.creatSession();
        IDiseaseDao dao=session.getMapper(IDiseaseDao.class);
        int countPage=dao.countPage(map);
        session.close();
        return countPage;
    }

}
