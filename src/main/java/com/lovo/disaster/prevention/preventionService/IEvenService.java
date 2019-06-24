package com.lovo.disaster.prevention.preventionService;

import com.lovo.disaster.prevention.preventionBean.EventBean;

import java.util.Map;

/**
 * 事件记录业务层
 */
public interface IEvenService {
    /**
     * 主页面的数据，还有动态查询的数据
     * @param map 查询条件集合
     * @return json字符串，用于拼接页面表格数据
     */
    public String finAll(Map map);

    /**
     * 添加事件
     * @param eventBean 事件对象
     */
    public void addEven(EventBean eventBean);

    /**
     * 根据用户选择的表格数据id查找对象
     * @param evenId 用户选择的表格数据id
     * @return 事件对象信息
     */
    public EventBean findByEvenId(int evenId);

    /**
     * 根据用户表格的表格数据修改事件信息
     * @param evenId 用户选择行的id
     */
    public void updateEvenById(int evenId);

}
