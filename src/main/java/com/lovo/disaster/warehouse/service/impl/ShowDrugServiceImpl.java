package com.lovo.disaster.warehouse.service.impl;

import com.lovo.disaster.db.GetSession;
import com.lovo.disaster.warehouse.dto.LookLeaveHouseDto;
import com.lovo.disaster.warehouse.entity.SysClass;
import com.lovo.disaster.warehouse.entity.SysDrug;
import com.lovo.disaster.warehouse.dao.IDrugDao;
import com.lovo.disaster.warehouse.service.IShowDrugService;
import org.apache.ibatis.session.SqlSession;

import java.util.List;
import java.util.Map;

public class ShowDrugServiceImpl implements IShowDrugService {
    @Override
    public List<SysClass> findAllClass() {
        SqlSession session =GetSession.creatSession();
       List<SysClass> list= session.getMapper(IDrugDao.class).findAllClass();
        return list;
    }

    @Override
    public SysDrug findDrugById(int id) {
        SqlSession session =GetSession.creatSession();

      SysDrug drug=  session.getMapper(IDrugDao.class).findDrugById(id);

        return drug;
    }

    @Override
    public List<SysDrug> findDrugByCondition(Map<String,Object> map) {
        SqlSession session =GetSession.creatSession();
        List<SysDrug> list=  session.getMapper(IDrugDao.class).findDrugByCondition(map);
session.close();
        return list;
    }

    @Override
    public List<LookLeaveHouseDto> findLookLeaveHouse(Map<String,Object> map) {
        SqlSession session=GetSession.creatSession();
        List<LookLeaveHouseDto> list=  session.getMapper(IDrugDao.class).findLookLeaveHouse(map);
        session.close();
        return list;
    }

    @Override
    public int findLookLeaveCount(Map<String,Object> map) {
        SqlSession session=GetSession.creatSession();
       int a= session.getMapper(IDrugDao.class).findLookLeaveCount(map);

        return a;
    }

    @Override
    public int findAllDtoCount(Map<String, Object> map) {
        SqlSession session =GetSession.creatSession();
 int a=session.getMapper(IDrugDao.class).findAllDtoCount(map);
        return a;
    }

    @Override
    public void addDurg(String drugName, long type1, long type2, String drugUseWay, int drugNum) {
        SqlSession session = GetSession.creatSession();
        session.getMapper(IDrugDao.class).addDurg(drugName,type1,type2,drugUseWay,drugNum);
        session.close();

    }

    @Override
    public List<LookLeaveHouseDto> findAllLeaveHouseDto(Map<String, Object> map) {
        SqlSession session=GetSession.creatSession();
        List<LookLeaveHouseDto>  list=    session.getMapper(IDrugDao.class).findAllLeaveHouseDto(map);
session.close();
        return list;
    }

    @Override
    public int allPage(Map<String, Object> map) {
        SqlSession session= GetSession.creatSession();
       int allPage= session.getMapper(IDrugDao.class).allPage(map);

        return allPage;
    }
}
