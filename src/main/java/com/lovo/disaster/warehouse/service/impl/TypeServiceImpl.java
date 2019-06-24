package com.lovo.disaster.warehouse.service.impl;

import com.lovo.disaster.db.GetSession;
import com.lovo.disaster.warehouse.entity.SysType;
import com.lovo.disaster.warehouse.dao.ITypeDao;
import com.lovo.disaster.warehouse.service.ITypeService;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class TypeServiceImpl implements ITypeService {
    @Override
    public long findTypeByKey(int key, String typeName) {
        SqlSession session= GetSession.creatSession();

      long id=  session.getMapper(ITypeDao.class).findTypeByKey(key,typeName);

        return id;
    }

    @Override
    public List<SysType> findAlltype(String type) {
        SqlSession session = GetSession.creatSession();
        List<SysType> list=  session.getMapper(ITypeDao.class).findAlltype(type);
        return list;
    }
}
