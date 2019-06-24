package com.lovo.disaster.specialist.dao;

import com.lovo.disaster.specialist.bean.SysDoctor;

import java.util.List;
import java.util.Map;

public interface ISpecialistDao {
    /**
     * 动态查询专家集合
     * @param map 查询条件集合
     * @return 专家集合
     */
    public List<SysDoctor> findAll(Map map);
    /**
     * 添加专家
     * @param sysDoctor 专家对象
     */
    public void addSpecialist(SysDoctor sysDoctor);
}
