package com.lovo.disaster.warehouse.service.impl;

import com.lovo.disaster.db.GetSession;
import com.lovo.disaster.warehouse.entity.SysDrug;
import com.lovo.disaster.warehouse.dao.IDrugDao;
import com.lovo.disaster.warehouse.service.IShowDrugService;
import org.apache.ibatis.session.SqlSession;

import java.util.List;
import java.util.Map;

public class ShowDrugServiceImpl implements IShowDrugService {
    @Override
    public List<SysDrug> findDrugByCondition(Map<String,Object> map) {
        SqlSession session =GetSession.creatSession();
        List<SysDrug> list=  session.getMapper(IDrugDao.class).findDrugByCondition(map);
session.close();
        return list;
    }

    @Override
    public void addDurg(String drugName, long type1, long type2, String drugUseWay, int drugNum) {
        SqlSession session = GetSession.creatSession();
        session.getMapper(IDrugDao.class).addDurg(drugName,type1,type2,drugUseWay,drugNum);
        session.close();

    }

    @Override
    public int allPage(Map<String, Object> map) {
        SqlSession session= GetSession.creatSession();
       int allPage= session.getMapper(IDrugDao.class).allPage(map);

        return allPage;
    }
}
