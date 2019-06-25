package com.lovo.disaster.specialist.service.impl;

import com.lovo.disaster.db.GetSession;
import com.lovo.disaster.specialist.bean.SysDoctor;
import com.lovo.disaster.specialist.dao.ISpecialistDao;
import com.lovo.disaster.specialist.service.ISpecialistService;
import org.apache.ibatis.session.SqlSession;

import java.util.List;
import java.util.Map;

public class ISpecialistServiceImpl implements ISpecialistService {
    @Override
    public void addSpecialist(SysDoctor sysDoctor) {
        SqlSession session= GetSession.creatSession();
        ISpecialistDao dao=session.getMapper(ISpecialistDao.class);
        dao.addSpecialist(sysDoctor);
        session.commit();
        session.close();

    }

    @Override
    public int findId(SysDoctor sysDoctor) {
        return 0;
    }

    @Override
    public SysDoctor findById(int sysDoctorId) {
        SqlSession session=GetSession.creatSession();
        SysDoctor d= session.getMapper(ISpecialistDao.class).findById(sysDoctorId);
        session.close();
        return d;
    }

    @Override
    public void updateSpecialist(Map map) {
        SqlSession session=GetSession.creatSession();
        session.getMapper(ISpecialistDao.class).updateSpecialist(map);
        session.commit();
        session.close();

    }

    @Override
    public void delSpecialist(int sysDoctorId) {
        SqlSession session=GetSession.creatSession();
        session.getMapper(ISpecialistDao.class).delSpecialist(sysDoctorId);
        session.commit();
        session.close();
    }

    @Override
    public List<SysDoctor> findAll(Map map) {
        SqlSession session= GetSession.creatSession();
        ISpecialistDao dao=session.getMapper(ISpecialistDao.class);
        List<SysDoctor> list=dao.findAll(map);
        session.close();
        return list;
    }

    @Override
    public Integer countPage(Map map) {
        SqlSession session= GetSession.creatSession();
        ISpecialistDao dao=session.getMapper(ISpecialistDao.class);
        int countPage=dao.countPage(map);
        session.close();
        return countPage;
    }
}
