package com.lovo.disaster.specialist.service;

import com.lovo.disaster.specialist.bean.SysDoctor;

import java.util.List;
import java.util.Map;

public interface ISpecialistService {
    /**
     * 添加专家
     * @param sysDoctor 专家对象
     */
    public void addSpecialist(SysDoctor sysDoctor);

    /**
     * 根据ID查询专家对象
     * @param sysDoctorId 专家ID
     * @return 专家对象
     */
    public SysDoctor findById(int sysDoctorId);

    /**
     * 修改专家信息
     */
    public void updateSpecialist(Map map);

    /**
     * 根据ID删除专家
     * @param sysDoctorId 专家ID
     */
    public void delSpecialist(int sysDoctorId);

    /**
     * 动态查询专家集合
     * @param map 查询条件集合
     * @return 专家集合
     */
    public List<SysDoctor> findAll(Map map);

    /**
     * 计算总行数
     * @return
     */
    public Integer countPage(Map map);
}
