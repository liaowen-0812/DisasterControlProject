package com.lovo.disaster.system.dao;

import com.lovo.disaster.system.bean.SysRole;

import java.util.List;

public interface IRoleDao {


    /**
     * 查询所有的角色类型
     * @return 角色类型
     */
    public List<SysRole> findAllRole();
}
