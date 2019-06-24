package com.lovo.disaster.system.service.impl;

import com.lovo.disaster.db.GetSession;
import com.lovo.disaster.system.bean.SysRole;
import com.lovo.disaster.system.dao.IRoleDao;
import com.lovo.disaster.system.service.IRoleService;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class RoleServiceImpl implements IRoleService {


    /**
     * 查询所有的角色类型
     * @return 角色类型
     */
    public List<SysRole> findAllRole(){
        SqlSession session = GetSession.creatSession();
        IRoleDao dao = session.getMapper(IRoleDao.class);
        List<SysRole> role = dao.findAllRole();
        session.close();
        return role;
    }
}
