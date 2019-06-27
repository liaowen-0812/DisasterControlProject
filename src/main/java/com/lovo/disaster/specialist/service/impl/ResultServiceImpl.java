package com.lovo.disaster.specialist.service.impl;

import com.lovo.disaster.db.GetSession;
import com.lovo.disaster.specialist.bean.DoctorResult;
import com.lovo.disaster.specialist.bean.SysDoctor;
import com.lovo.disaster.specialist.dao.IResultDao;
import com.lovo.disaster.specialist.dto.eventDto;
import com.lovo.disaster.specialist.service.IResultService;
import org.apache.ibatis.session.SqlSession;

import java.util.List;
import java.util.Map;

public class ResultServiceImpl implements IResultService {
    @Override
    public List<eventDto> find(Map map) {
        SqlSession session= GetSession.creatSession();
        List<eventDto> list= session.getMapper(IResultDao.class).find(map);
        session.close();
        return list;
    }

    @Override
    public eventDto findArea(Map map) {
        SqlSession session= GetSession.creatSession();
        eventDto d= session.getMapper(IResultDao.class).findArea(map);
        session.close();
        return d;
    }

    @Override
    public Integer countPage(Map map) {
        SqlSession session= GetSession.creatSession();
        int countPage= session.getMapper(IResultDao.class).countPage(map);
        session.close();
        return countPage;
    }

    @Override
    public SysDoctor findById(int doctorId) {
        SqlSession session=GetSession.creatSession();
        SysDoctor d=session.getMapper(IResultDao.class).findById(doctorId);
        session.close();
        return d;
    }

    @Override
    public Integer findId(int sId) {
        SqlSession session=GetSession.creatSession();
        int d=session.getMapper(IResultDao.class).findId(sId);
        session.close();
        return d;
    }

    @Override
    public List<DoctorResult> findDoctorResultList(long zId) {
        SqlSession session=GetSession.creatSession();
        List<DoctorResult> list=session.getMapper(IResultDao.class).findDoctorResultList(zId);
        session.close();
        return list;
    }

    @Override
    public List<SysDoctor> findDoctorId(long jId) {
        SqlSession session=GetSession.creatSession();
        List<SysDoctor> list=session.getMapper(IResultDao.class).findDoctorId(jId);
        session.close();
        return list;
    }

    @Override
    public List<SysDoctor> findDoctorName(long dId) {
        SqlSession session=GetSession.creatSession();
        List<SysDoctor> list=session.getMapper(IResultDao.class).findDoctorName(dId);
        session.close();
        return list;
    }

    @Override
    public List<SysDoctor> findAll() {
        SqlSession session=GetSession.creatSession();
        List<SysDoctor> list=session.getMapper(IResultDao.class).findAll();
        session.close();
        return list;
    }
}

