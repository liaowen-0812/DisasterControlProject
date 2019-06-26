package com.lovo.disaster.system.dao;

import com.lovo.disaster.system.bean.SysPower;
import com.lovo.disaster.system.bean.SysRole;

import java.util.List;

public interface IRoleDao {


    /**
     * 查询所有的角色类型
     * @return 角色类型
     */
    public List<SysRole> findAllRole();

    /**
     * 根据角色id查询权限
     * @param roleId 角色id
     * @return 权限集合
     */
    public List<SysPower> findPowerByRoleId(long roleId);
}
