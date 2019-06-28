package com.lovo.disaster.specialist.dao;

import com.lovo.disaster.specialist.bean.DoctorEvent;
import com.lovo.disaster.specialist.bean.DoctorResult;
import com.lovo.disaster.specialist.bean.SysDoctor;
import com.lovo.disaster.specialist.bean.SysEvent;
import com.lovo.disaster.specialist.dto.eventDto;

import java.nio.channels.Pipe;
import java.util.List;
import java.util.Map;

public interface IResultDao {
    /**
     * 查找事件集合
     * @param map
     * @return
     */
    public List<eventDto> find(Map map);

    /**
     * 根据事件名称查询地区
     * @return
     */
    public eventDto findArea(Map map);

    /**
     * 计算总行数
     * @return
     */
    public Integer countPage(Map map);

    /**
     * 查询所有专家
     * @return 专家集合
     */
    public List<SysDoctor> findAll();

    /**
     * 根据ID查询对象
     * @param doctorId
     * @return
     */
    public SysDoctor findById(int doctorId);



    /**
     * 根据事件ID查询专家事件ID
     * @return 专家事件ID
     */
    public Integer findId(int sId);

    /**
     * 根据专家事件ID查询会商结果集合
     * @return
     */
    public List<DoctorResult> findDoctorResultList(long zId);

    /**
     * 根据结果ID查询专家ID集合
     * @return
     */
    public List<SysDoctor> findDoctorId(long jId);

    /**
     * 根据专家ID查询专家姓名集合
     * @return
     */
    public List<SysDoctor> findDoctorName(long dId);

    /**
     * 添加会商结果
     */
    public void addDoctorResult(Map map);

    /**
     * 查询结果最大ID
     */
    public Integer findMax();

    /**
     * 添加专家和结果ID
     * @param map
     */
    public void addSpecialist(Map map);

    /**
     * 根据ID查找事件对象
     * @param eventId
     * @return
     */
    public SysEvent findByEventId(long eventId);



}
