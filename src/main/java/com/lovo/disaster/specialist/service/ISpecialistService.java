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
     * 根据对象查询用户ID
     * @param sysDoctor 专家对象
     * @return 专家ID
     */
    public int findId(SysDoctor sysDoctor);

    /**
     * 根据ID查询专家对象
     * @param sysDoctorId 专家ID
     * @return 专家对象
     */
    public SysDoctor findById(int sysDoctorId);

    /**
     * 根据ID修改专家信息
     * @param sysDoctorId 专家ID
     */
    public void updateSpecialist(int sysDoctorId);

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
}
