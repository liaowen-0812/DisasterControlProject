package com.lovo.disaster.warehouse.service.impl;

import com.lovo.disaster.db.GetSession;
import com.lovo.disaster.warehouse.dao.IDrugDao;
import com.lovo.disaster.warehouse.service.ISaveLeaveHouseInfo;
import org.apache.ibatis.session.SqlSession;

public class SaveLeaveServiceImpl implements ISaveLeaveHouseInfo {
    @Override
    public void saveChuku(int classId, int manId, String date1) {
        SqlSession session= GetSession.creatSession();
        session.getMapper(IDrugDao.class).saveChuku(classId,manId,date1);
        session.close();

    }

    @Override
    public void saveDrugStockpile(int drugId, int leaveNum) {
        SqlSession session= GetSession.creatSession();
        session.getMapper(IDrugDao.class).saveDrugStockpile(drugId,leaveNum);

    }
}
